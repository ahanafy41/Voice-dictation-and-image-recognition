import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. Update tools logic in Lua
content = content.replace(
    'toolsJson = \'[{ "google_search_retrieval": {} }]\'',
    'toolsJson = \'[{ "google_search": {} }]\''
)

# 2. Reconstruct the HTML to include the Stop button and better JS
new_html_block = r"""    local html = [[
<!DOCTYPE html><html lang="ar" dir="rtl"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body { font-family: sans-serif; text-align: center; background: #000; color: #fff; padding: 10px; margin: 0; display: flex; flex-direction: column; height: 100vh; }
    #status { font-size: 20px; color: #00ffcc; font-weight: bold; margin-top: 20px; }
    .controls { flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 20px; }
    #startBtn, #stopBtn { padding: 20px 50px; font-size: 22px; border-radius: 40px; border: none; font-weight: bold; cursor: pointer; transition: 0.3s; }
    #startBtn { background: #00ffcc; color: #000; box-shadow: 0 0 30px rgba(0, 255, 204, 0.5); }
    #stopBtn { background: #ff4444; color: #fff; box-shadow: 0 0 30px rgba(255, 68, 68, 0.5); display: none; }
    #log { font-size: 12px; color: #aaa; text-align: left; height: 150px; overflow-y: auto; background: #0a0a0a; padding: 15px; border-radius: 10px; border: 1px solid #222; direction: ltr; font-family: monospace; margin: 10px; }
    .sys { color: #00ffcc; } .err { color: #ff4444; }
</style></head><body>
    <div id="status">جاهز للبث 🚀</div>
    <div class="controls">
        <button id="startBtn">ابدأ المحادثة الآن</button>
        <button id="stopBtn">إنهاء المكالمة 🛑</button>
    </div>
    <div id="log">Logs:</div>
    <script>
        const statusText = document.getElementById('status');
        const startBtn = document.getElementById('startBtn');
        const stopBtn = document.getElementById('stopBtn');
        const logBox = document.getElementById('log');
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

        startBtn.onclick = () => {
            const key = "]] .. (geminiApiKey or "") .. [[";
            if (!key) { statusText.innerText = "❌ مفتاح API مفقود"; return; }
            startBtn.disabled = true; statusText.innerText = "⏳ جاري الاتصال...";
            const wsUrl = `wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1alpha.GenerativeService.BidiGenerateContent?key=${key}`;
            ws = new WebSocket(wsUrl);
            ws.onopen = () => {
                log("تم الاتصال بالسيرفر ✅", "sys");
                ws.send(JSON.stringify({
                    setup: {
                        model: "models/gemini-3.1-flash-live-preview",
                        systemInstruction: { parts: [{ text: "]] .. sysInstr .. [[" }] },
                        tools: (]] .. toolsJson .. [[.length > 2 ? ]] .. toolsJson .. [[ : undefined),
                        generationConfig: {
                            responseModalities: ["AUDIO"],
                            speechConfig: { voiceConfig: { prebuiltVoiceConfig: { voiceName: "Puck" } } }
                        }
                    }
                }));
            };
            ws.onmessage = async (event) => {
                try {
                    let textData = event.data;
                    if (event.data instanceof Blob) textData = await event.data.text();
                    const msg = JSON.parse(textData);

                    if (msg.setupComplete) {
                        statusText.innerText = "🚀 البث مباشر الآن!";
                        startBtn.style.display = "none";
                        stopBtn.style.display = "inline-block";
                        startMic();
                    }

                    // دعم المقاطعة (Interruption)
                    if (msg.serverContent && msg.serverContent.interrupted) {
                        log("تمت المقاطعة ⏹️", "sys");
                        stopAllAudio();
                    }

                    const audioContent = msg.serverContent?.modelTurn?.parts?.[0]?.inlineData?.data;
                    if (audioContent) playAudio(audioContent);
                    if (msg.error) log("خطأ: " + JSON.stringify(msg.error), "err");
                } catch (e) { log("خطأ قراءة: " + e.message, "err"); }
            };
            ws.onclose = (e) => {
                statusText.innerText = "❌ انقطع الاتصال";
                startBtn.disabled = false;
                stopBtn.style.display = "none";
                startBtn.style.display = "inline-block";
                if (micStream) micStream.getTracks().forEach(t => t.stop());
                stopAllAudio();
            };
        };
    </script>
</body></html>
    ]]"""

# Safely replace the whole local html = [[...]] block
content = re.sub(r'local html = \[\[.*?\]\]', new_html_block, content, flags=re.DOTALL)

with open('main.lua', 'w') as f:
    f.write(content)
