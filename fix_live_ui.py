import re

with open('main.lua', 'r') as f:
    content = f.read()

# Replace HTML for Gemini Live
# Target the HTML string within showGeminiLiveWindow
old_html_pattern = r'    local html = \[\[\n<!DOCTYPE html><html lang="ar" dir="rtl"><head>.*?</style></head><body>.*?</body></html>\n    \]\]'

new_html = r'''    local html = [[
<!DOCTYPE html><html lang="ar" dir="rtl"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body { font-family: sans-serif; text-align: center; background: #000; color: #fff; padding: 0; margin: 0; display: flex; flex-direction: column; height: 100vh; overflow: hidden; }
    #status { font-size: 18px; color: #00ffcc; font-weight: bold; padding: 10px; background: rgba(0,0,0,0.6); position: absolute; top: 0; width: 100%; z-index: 10; }
    .camera-container { flex: 1; position: relative; display: flex; justify-content: center; align-items: center; background: #111; overflow: hidden; }
    #videoPreview { width: 100%; height: 100%; object-fit: cover; display: none; transform: scaleX(-1); } /* Mirror for front camera */
    #videoPreview.rear { transform: scaleX(1); }
    .controls { padding: 15px; display: flex; flex-wrap: wrap; justify-content: center; gap: 10px; background: #000; }
    button { padding: 12px 20px; font-size: 16px; border-radius: 25px; border: none; font-weight: bold; cursor: pointer; transition: 0.3s; outline: 2px solid transparent; }
    button:focus { outline: 2px solid #00ffcc; }
    #startBtn { background: #00ffcc; color: #000; box-shadow: 0 0 15px rgba(0, 255, 204, 0.4); }
    #stopBtn { background: #ff4444; color: #fff; display: none; }
    #toggleCamBtn { background: #444; color: #fff; display: none; }
    #switchCamBtn { background: #444; color: #fff; display: none; }
    #log { font-size: 10px; color: #aaa; text-align: left; height: 80px; overflow-y: auto; background: #0a0a0a; padding: 10px; border-top: 1px solid #222; direction: ltr; font-family: monospace; }
    .sys { color: #00ffcc; } .err { color: #ff4444; }
    #canvasHelper { display: none; }
    /* Screen reader only class to hide visually but keep readable */
    .sr-only { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0, 0, 0, 0); border: 0; }
</style></head><body>
    <div id="status" aria-live="polite" role="status">جاهز للبث 🚀</div>
    <div class="camera-container" aria-hidden="true">
        <video id="videoPreview" autoplay playsinline></video>
        <canvas id="canvasHelper"></canvas>
    </div>
    <div class="controls" role="group" aria-label="أزرار التحكم في المحادثة">
        <button id="startBtn" role="button" aria-label="ابدأ المحادثة الصوتية الآن">ابدأ المحادثة الآن</button>
        <button id="toggleCamBtn" role="button" aria-label="فتح وإغلاق الكاميرا">📷 فتح الكاميرا</button>
        <button id="switchCamBtn" role="button" aria-label="تبديل بين الكاميرا الأمامية والخلفية">🔄 تبديل الكاميرا</button>
        <button id="flashBtn" role="button" aria-label="تشغيل وإيقاف الفلاش" style="display: none; background: #FFD700; color: #000;">🔦 الفلاش</button>
        <button id="stopBtn" role="button" aria-label="إنهاء المكالمة الصوتية وإغلاق الاتصال">إنهاء المكالمة 🛑</button>
    </div>
    <!-- Hide the noisy logs from screen readers completely -->
    <div id="log" aria-hidden="true">Logs:</div>
    <script>

        const video = document.getElementById('videoPreview');
        const canvas = document.getElementById('canvasHelper');
        const toggleCamBtn = document.getElementById('toggleCamBtn');
        const switchCamBtn = document.getElementById('switchCamBtn');
        const flashBtn = document.getElementById('flashBtn');
        const statusText = document.getElementById('status');
        const startBtn = document.getElementById('startBtn');
        const stopBtn = document.getElementById('stopBtn');
        const logBox = document.getElementById('log');

        let camStream = null, currentFacingMode = 'environment', videoInterval = null;
        let isFlashActive = false;
        let isFlashTransitioning = false;

        async function toggleCamera() {
            if (camStream) {
                stopCamera();
                toggleCamBtn.innerText = '📷 فتح الكاميرا';
                toggleCamBtn.style.background = '#444';
            } else {
                const started = await startCamera();
                if (started) {
                    toggleCamBtn.innerText = '🚫 غلق الكاميرا';
                    toggleCamBtn.style.background = '#ff8800';
                }
            }
        }

        async function startCamera() {
            try {
                const constraints = { video: { facingMode: currentFacingMode, width: { ideal: 640 }, height: { ideal: 480 } } };
                camStream = await navigator.mediaDevices.getUserMedia(constraints);
                video.srcObject = camStream;
                video.style.display = 'block';
                video.className = currentFacingMode === 'user' ? '' : 'rear';
                log('📷 تم تشغيل الكاميرا بنجاح', 'sys');

                if (currentFacingMode === 'environment') {
                    flashBtn.style.display = 'inline-block';
                } else {
                    flashBtn.style.display = 'none';
                    if (isFlashActive) {
                        isFlashActive = false;
                        window.prompt("TOGGLE_FLASH_NATIVE_SILENT", "false"); // Turn off flash safely
                    }
                }

                startVideoPusher();
                return true;
            } catch (err) {
                log('خطأ في الكاميرا: ' + err.message, 'err');
                return false;
            }
        }

        async function toggleFlash() {
            if (isFlashTransitioning || currentFacingMode !== 'environment') return;
            isFlashTransitioning = true;
            const newState = !isFlashActive;

            // 1. Stop current camera track to release hardware
            if (camStream) {
                camStream.getTracks().forEach(t => t.stop());
                camStream = null;
                video.style.display = 'none';
                if (videoInterval) clearInterval(videoInterval);
                log('إيقاف الكاميرا مؤقتاً لتشغيل الفلاش...', 'sys');
            }

            // 2. Request Native Lua to toggle torch
            window.prompt("TOGGLE_FLASH_NATIVE", newState.toString());
        }

        // 3. Callback from Lua when native torch is set
        window.onFlashToggled = async function(success) {
            if (success) {
                isFlashActive = !isFlashActive;
                log('الفلاش الآن: ' + (isFlashActive ? 'مضاء' : 'مطفأ'), 'sys');
                flashBtn.innerText = isFlashActive ? '🔦 الفلاش (شغال)' : '🔦 الفلاش';
            } else {
                log('فشل في تشغيل الفلاش من النظام', 'err');
            }

            // 4. Restart Camera
            await startCamera();
            isFlashTransitioning = false;
        };

        flashBtn.onclick = toggleFlash;

        function stopCamera() {
            if (camStream) camStream.getTracks().forEach(t => t.stop());
            camStream = null;
            video.style.display = 'none';
            if (videoInterval) clearInterval(videoInterval);
            log('🚫 تم إيقاف الكاميرا', 'sys');
        }

        async function switchCamera() {
            currentFacingMode = (currentFacingMode === 'environment') ? 'user' : 'environment';
            if (camStream) {
                stopCamera();
                await startCamera();
            }
        }

        function startVideoPusher() {
            if (videoInterval) clearInterval(videoInterval);
            videoInterval = setInterval(() => {
                if (ws && ws.readyState === WebSocket.OPEN && camStream) {
                    captureAndSendFrame();
                }
            }, 1500);
        }

        function captureAndSendFrame() {
            const context = canvas.getContext('2d');
            canvas.width = video.videoWidth / 2; // Resize for efficiency
            canvas.height = video.videoHeight / 2;
            context.drawImage(video, 0, 0, canvas.width, canvas.height);
            const base64Image = canvas.toDataURL('image/jpeg', 0.6).split(',')[1];
            ws.send(JSON.stringify({ realtimeInput: { video: { data: base64Image, mimeType: 'image/jpeg' } } }));
        }

        toggleCamBtn.onclick = toggleCamera;
        switchCamBtn.onclick = switchCamera;

        let audioCtx, nextStart = 0, ws = null, micStream = null;
        let activeSources = [];

        function log(m, type="norm") {
            let c = type === "sys" ? "#00ffcc" : type === "err" ? "#ff4444" : "#aaa";
            logBox.innerHTML += `<div style="color:${c};">> ${m}</div>`;
            logBox.scrollTop = logBox.scrollHeight;
        }

        function stopAllAudio() {
            activeSources.forEach(s => { try { s.stop(); } catch(e) {} });
            activeSources = [];
            if (audioCtx) nextStart = audioCtx.currentTime;
        }

        function playAudio(base64) {
            if (!audioCtx) audioCtx = new (window.AudioContext || window.webkitAudioContext)({ sampleRate: 24000 });
            try {
                const pcm16 = new Int16Array(Uint8Array.from(atob(base64), c => c.charCodeAt(0)).buffer);
                const f32 = new Float32Array(pcm16.length);
                for (let i = 0; i < pcm16.length; i++) f32[i] = pcm16[i] / 32768;
                const buffer = audioCtx.createBuffer(1, f32.length, 24000);
                buffer.getChannelData(0).set(f32);
                const source = audioCtx.createBufferSource();
                source.buffer = buffer;
                source.connect(audioCtx.destination);

                const now = audioCtx.currentTime;
                if (nextStart < now) nextStart = now;
                source.start(nextStart);
                nextStart += buffer.duration;

                activeSources.push(source);
                source.onended = () => {
                    const idx = activeSources.indexOf(source);
                    if (idx > -1) activeSources.splice(idx, 1);
                };
            } catch (e) { log("خطأ صوت: " + e.message, "err"); }
        }

        async function startMic() {
            try {
                micStream = await navigator.mediaDevices.getUserMedia({ audio: true });
                const micCtx = new (window.AudioContext || window.webkitAudioContext)({ sampleRate: 16000 });
                const source = micCtx.createMediaStreamSource(micStream);
                const processor = micCtx.createScriptProcessor(2048, 1, 1);
                source.connect(processor); processor.connect(micCtx.destination);
                processor.onaudioprocess = (e) => {
                    if (ws && ws.readyState === WebSocket.OPEN) {
                        const input = e.inputBuffer.getChannelData(0);
                        const pcm = new Int16Array(input.length);
                        for (let i = 0; i < input.length; i++) pcm[i] = input[i] * 0x7FFF;
                        const b64 = btoa(String.fromCharCode(...new Uint8Array(pcm.buffer)));
                        ws.send(JSON.stringify({ realtimeInput: { audio: { data: b64, mimeType: "audio/pcm;rate=16000" } } }));
                    }
                };
                log("🎙️ المايك متصل وبدأ البث!", "sys");
            } catch (err) { log("خطأ مايك: " + err.message, "err"); }
        }

        function endSession() {
            stopCamera();
            toggleCamBtn.style.display = "none";
            switchCamBtn.style.display = "none";
            flashBtn.style.display = "none";
            if (isFlashActive) {
                isFlashActive = false;
                window.prompt("TOGGLE_FLASH_NATIVE_SILENT", "false"); // Ensure flash turns off safely
            }
            if (ws) ws.close();
            if (micStream) micStream.getTracks().forEach(t => t.stop());
            stopAllAudio();
            stopBtn.style.display = "none";
            startBtn.style.display = "inline-block";
            startBtn.disabled = false;
            statusText.innerText = "تم إنهاء الجلسة ⏹️";
            log("تم إغلاق الاتصال يدوياً", "sys");
        }

        stopBtn.onclick = endSession;

        async function executeTavilySearch(functionName, callId, query) {
            const tavilyKey = "]] .. (tavilyApiKey or "") .. [[";
            if (!tavilyKey) {
                log("❌ مفتاح Tavily API مفقود. إرسال خطأ للمساعد.", "err");
                sendFunctionResponse(functionName, callId, { error: "Tavily API Key is missing. Tell the user to add it in settings." });
                return;
            }

            try {
                const response = await fetch("https://api.tavily.com/search", {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({
                        api_key: tavilyKey,
                        query: query,
                        include_answer: true,
                        max_results: 3
                    })
                });

                if (!response.ok) {
                    throw new Error("HTTP error " + response.status);
                }

                const data = await response.json();
                let searchResult = data.answer || "";
                if (data.results && data.results.length > 0) {
                     searchResult += "\n\n" + data.results.map(r => r.content).join("\n");
                }

                log("✅ تم جلب نتائج البحث", "sys");
                sendFunctionResponse(functionName, callId, { result: searchResult });

            } catch (err) {
                log("خطأ في بحث Tavily: " + err.message, "err");
                sendFunctionResponse(functionName, callId, { error: "Search failed: " + err.message });
            }
        }

        function sendFunctionResponse(name, id, responseObj) {
            if (ws && ws.readyState === WebSocket.OPEN) {
                const msg = {
                    toolResponse: {
                        functionResponses: [{
                            name: name,
                            id: id,
                            response: responseObj
                        }]
                    }
                };
                ws.send(JSON.stringify(msg));
                log("تم إرسال نتيجة البحث للمساعد 📤", "sys");
            }
        }

        startBtn.onclick = () => {
            const key = "]] .. (geminiApiKey or "") .. [[";
            if (!key) { statusText.innerText = "❌ مفتاح API مفقود"; return; }
            startBtn.disabled = true; statusText.innerText = "⏳ جاري الاتصال...";
            const wsUrl = `wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1alpha.GenerativeService.BidiGenerateContent?key=${key}`;
            ws = new WebSocket(wsUrl);
            ws.onopen = () => {
                log("تم الاتصال بالسيرفر ✅", "sys");
                const tools = ]] .. toolsConfig .. [[;

                // Inject Dynamic Current Time and Date Context
                const currentDateObj = new Date();
                const currentDateString = currentDateObj.toLocaleString('ar-EG', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit' });
                const baseSysInstr = "]] .. sysInstr .. [[";
                const enhancedSysInstr = baseSysInstr + "\n\n[معلومات النظام الهامة جداً: أنت تتحدث الآن في الزمن الحقيقي. التاريخ والوقت الحالي هو: " + currentDateString + ". عامنا الحالي هو 2026. ضع هذه المعلومة في اعتبارك دائماً عند البحث أو الإجابة.]";

                const setupMsg = {
                    setup: {
                        model: "models/gemini-3.1-flash-live-preview",
                        systemInstruction: { parts: [{ text: enhancedSysInstr }] },
                        generationConfig: {
                            responseModalities: ["AUDIO"],
                            speechConfig: { voiceConfig: { prebuiltVoiceConfig: { voiceName: "]] .. (geminiLiveVoiceName or "Puck") .. [[" } } }
                        }
                    }
                };
                if (tools) {
                    setupMsg.setup.tools = tools;
                    log("تم إرسال إعدادات البحث للسيرفر 🔍", "sys");
                }
                ws.send(JSON.stringify(setupMsg));
            };
            ws.onmessage = async (event) => {
                try {
                    let textData = event.data;
                    if (event.data instanceof Blob) textData = await event.data.text();
                    const msg = JSON.parse(textData);

                    if (msg.setupComplete) {
                        statusText.innerText = "🚀 البث مباشر الآن!";
                        toggleCamBtn.style.display = "inline-block";
                        switchCamBtn.style.display = "inline-block";
                        startBtn.style.display = "none";
                        stopBtn.style.display = "inline-block";
                        // Focus on stop button for screen reader convenience
                        stopBtn.focus();
                        startMic();
                    }

                    if (msg.serverContent && msg.serverContent.interrupted) {
                        log("تمت المقاطعة ⏹️", "sys");
                        stopAllAudio();
                    }

                    if (msg.serverContent && msg.serverContent.modelTurn) {
                        const parts = msg.serverContent.modelTurn.parts || [];
                        parts.forEach(p => {
                            if (p.inlineData && p.inlineData.data) playAudio(p.inlineData.data);
                        });
                    }

                    if (msg.toolCall && msg.toolCall.functionCalls) {
                        msg.toolCall.functionCalls.forEach(fc => {
                            log("طلب المساعد بحثاً: " + fc.name, "sys");
                            if (fc.name === "tavily_search") {
                                const query = fc.args.query;
                                log("جاري البحث عن: " + query, "sys");
                                executeTavilySearch(fc.name, fc.id || "", query);
                            }
                        });
                    }

                    if (msg.error) log("خطأ سيرفر: " + JSON.stringify(msg.error), "err");
                } catch (e) { log("خطأ قراءة: " + e.message, "err"); }
            };
            ws.onclose = (e) => {
                statusText.innerText = "❌ انقطع الاتصال";
                log(`إغلاق: ${e.code} - ${e.reason}`, "err");
                startBtn.disabled = false;
                stopBtn.style.display = "none";
                startBtn.style.display = "inline-block";
                startBtn.focus();
                if (micStream) micStream.getTracks().forEach(t => t.stop());
                stopAllAudio();
            };
        };
    </script>
</body></html>
    ]]'''

content = re.sub(old_html_pattern, new_html, content, flags=re.DOTALL)

with open('main.lua', 'w') as f:
    f.write(content)

print("Replacement Complete")
