import sys
import re

with open("main.lua", "r") as f:
    content = f.read()

# 1. Add settings
content = re.sub(r'(geminiCorrectionEnabled = prefs\.getBoolean\("geminiCorrectionEnabled", false\))',
                 r'\1\ngeminiLiveSearchEnabled = prefs.getBoolean("geminiLiveSearchEnabled", true)', content)
content = re.sub(r'(geminiCorrectionEnabled = geminiCorrectionEnabled or false)',
                 r'\1\n    if geminiLiveSearchEnabled == nil then geminiLiveSearchEnabled = true end', content)
content = re.sub(r'(editor\.putBoolean\("geminiCorrectionEnabled", geminiCorrectionEnabled\))',
                 r'\1\n    editor.putBoolean("geminiLiveSearchEnabled", geminiLiveSearchEnabled or false)', content)

# 2. UI Toggle
content = re.sub(r'(liveCard\.addView\(liveSysIn\))',
                 r'local swLiveSearch = Switch(service); swLiveSearch.setText("تفعيل البحث الذكي عبر المساعد الشخصي"); swLiveSearch.setTextColor(0xFFFFFFFF); swLiveSearch.setChecked(geminiLiveSearchEnabled); swLiveSearch.setOnCheckedChangeListener(function(_, c) geminiLiveSearchEnabled=c end); liveCard.addView(swLiveSearch)\n    \1', content)

# 3. Completely replace showGeminiLiveWindow
start_marker = "function showGeminiLiveWindow()"
end_pattern = re.compile(r"geminiLiveWindow\s*=\s*layout\s*end", re.MULTILINE)
end_match = end_pattern.search(content)
start_idx = content.find(start_marker)
end_idx = end_match.end()

new_func = r"""function showGeminiLiveWindow()
    if geminiLiveWindow then return end

    local layout = LinearLayout(service)
    layout.setOrientation(LinearLayout.VERTICAL)
    layout.setBackgroundColor(0xFF000000)

    local header = LinearLayout(service)
    header.setOrientation(LinearLayout.HORIZONTAL)
    header.setPadding(20, 20, 20, 20)
    header.setGravity(Gravity.CENTER_VERTICAL)

    local title = TextView(service)
    title.setText("🎙️ Gemini Live (Audio-to-Audio)")
    title.setTextColor(0xFF00FFCC)
    title.setTextSize(18)
    title.setTypeface(nil, Typeface.BOLD)
    header.addView(title, LinearLayout.LayoutParams(0, -2, 1.0))

    local closeBtn = Button(service)
    closeBtn.setText("❌")
    styleButton(closeBtn, "secondary")
    closeBtn.setOnClickListener(function()
        if geminiLiveWindow then wm.removeView(geminiLiveWindow); geminiLiveWindow = nil end
    end)
    header.addView(closeBtn)
    layout.addView(header)

    local webview = WebView(service)
    local settings = webview.getSettings()
    settings.setJavaScriptEnabled(true)
    settings.setDomStorageEnabled(true)
    settings.setMediaPlaybackRequiresUserGesture(false)

    local sysInstr = (geminiLiveSystemInstruction or "أنت مساعد صوتي ذكي. مهمتك الرد المباشر بصوتك فقط.")
    if geminiLiveSearchEnabled then
        sysInstr = sysInstr .. " لديك أداة تسمى query_personal_assistant. استخدمها للبحث عن أي معلومة عامة أو حديثة."
    end

    local toolsConfig = "null"
    if geminiLiveSearchEnabled then
        toolsConfig = '[{ "function_declarations": [{ "name": "query_personal_assistant", "description": "يستخدم للبحث عن معلومات عبر المساعد الشخصي.", "parameters": { "type": "OBJECT", "properties": { "query": { "type": "STRING", "description": "نص السؤال" } }, "required": ["query"] } }] }]'
    end

    local escapedSysInstr = escapeJsonString(sysInstr)
    local escapedGeminiKey = escapeJsonString(geminiApiKey or "")
    local escapedGroqKey = escapeJsonString(groqApiKey or "")

    webview.setWebChromeClient(luajava.override(WebChromeClient, {
        onPermissionRequest = function(super, request) request.grant(request.getResources()) end,
        onConsoleMessage = function(super, consoleMessage)
            local msg = consoleMessage.message()
            if msg:find("SAVE_KEYS:") == 1 then
                local g, q = msg:match("SAVE_KEYS:([^:]*):([^:]*)")
                if g then geminiApiKey = g end
                if q then groqApiKey = q end
                mainHandler.post(function() saveSettings() end)
            elseif msg:find("CMD_QUERY:") == 1 then
                local id, q = msg:match("CMD_QUERY:([^:]+):(.*)")
                mainHandler.post(function()
                    makeAiRequest(q, "You are a professional search assistant.", nil, selectedSearchModelId or "compound-beta", function(res)
                        local esc = escapeJsonString(res)
                        webview.post(function()
                            webview.evaluateJavascript("if(window.sendToolResponse) window.sendToolResponse('" .. id .. "', '" .. esc .. "')", nil)
                        end)
                    end)
                end)
            end
            return true
        end
    }))

    layout.addView(webview, LinearLayout.LayoutParams(-1, -1))

    local html = [===[
<!DOCTYPE html><html lang="ar" dir="rtl"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body { font-family: sans-serif; text-align: center; background: #000; color: #fff; padding: 10px; margin: 0; display: flex; flex-direction: column; height: 100vh; }
    #status { font-size: 18px; color: #00ffcc; font-weight: bold; margin-top: 10px; }
    .controls { flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 15px; }
    #startBtn, #stopBtn { padding: 15px 40px; font-size: 20px; border-radius: 40px; border: none; font-weight: bold; cursor: pointer; }
    #startBtn { background: #00ffcc; color: #000; }
    #stopBtn { background: #ff4444; color: #fff; display: none; }
    #log { font-size: 11px; color: #aaa; text-align: left; height: 120px; overflow-y: auto; background: #0a0a0a; padding: 10px; border-radius: 10px; border: 1px solid #222; margin-top: 10px; }
    .key-section { background: #111; padding: 10px; border-radius: 10px; margin-bottom: 5px; text-align: right; }
    .key-input { width: 100%; margin: 5px 0; padding: 8px; background: #222; color: #fff; border: 1px solid #444; border-radius: 5px; font-size: 12px; box-sizing: border-box; }
</style></head><body>
    <div class="key-section" id="keyPanel">
        <div style="color:#00ffcc; font-size:13px;">🔑 إعدادات المكاتب (API Keys):</div>
        <input id="geminiKey" class="key-input" type="password" placeholder="Gemini API Key">
        <input id="groqKey" class="key-input" type="password" placeholder="Groq API Key">
        <button id="saveKeysBtn" style="width:100%; padding:8px; background:#00ffcc; color:#000; border:none; border-radius:5px; font-weight:bold;">حفظ 💾</button>
    </div>
    <div id="status">جاهز للبث 🚀</div>
    <div class="controls">
        <button id="startBtn">ابدأ المحادثة الآن</button>
        <button id="stopBtn">إنهاء المكالمة 🛑</button>
    </div>
    <div id="log">Logs:</div>
    <script>
        var GEMINI_KEY = "]===] .. escapedGeminiKey .. [===[";
        var GROQ_KEY = "]===] .. escapedGroqKey .. [===[";
        var SYS_INSTR = "]===] .. escapedSysInstr .. [===[";
        var TOOLS_CONFIG = ]===] .. toolsConfig .. [===[;

        document.getElementById("geminiKey").value = GEMINI_KEY;
        document.getElementById("groqKey").value = GROQ_KEY;
        document.getElementById("saveKeysBtn").onclick = function() {
            var g = document.getElementById("geminiKey").value;
            var q = document.getElementById("groqKey").value;
            GEMINI_KEY = g; GROQ_KEY = q;
            console.log("SAVE_KEYS:" + g + ":" + q);
            alert("تم حفظ الإعدادات!");
        };

        var statusText = document.getElementById("status");
        var startBtn = document.getElementById("startBtn");
        var stopBtn = document.getElementById("stopBtn");
        var logBox = document.getElementById("log");
        var audioCtx, nextStart = 0, ws = null, micStream = null, activeSources = [];

        function log(m, type) {
            var color = (type === "sys") ? "#00ffcc" : (type === "err" ? "#ff4444" : "#aaa");
            var d = document.createElement("div"); d.style.color = color; d.innerText = "> " + m;
            logBox.appendChild(d); logBox.scrollTop = logBox.scrollHeight;
        }

        function stopAllAudio() {
            for (var i = 0; i < activeSources.length; i++) { try { activeSources[i].stop(); } catch(e) {} }
            activeSources = []; if (audioCtx) nextStart = audioCtx.currentTime;
        }

        function playAudio(base64) {
            if (!audioCtx) audioCtx = new (window.AudioContext || window.webkitAudioContext)({ sampleRate: 24000 });
            try {
                var binary = atob(base64);
                var pcm16 = new Int16Array(binary.length / 2);
                for (var i = 0; i < pcm16.length; i++) {
                    var low = binary.charCodeAt(i * 2); var high = binary.charCodeAt(i * 2 + 1);
                    var val = low | (high << 8); if (val > 32767) val -= 65536; pcm16[i] = val;
                }
                var f32 = new Float32Array(pcm16.length);
                for (var j = 0; j < pcm16.length; j++) f32[j] = pcm16[j] / 32768;
                var buffer = audioCtx.createBuffer(1, f32.length, 24000);
                buffer.getChannelData(0).set(f32);
                var source = audioCtx.createBufferSource(); source.buffer = buffer; source.connect(audioCtx.destination);
                var now = audioCtx.currentTime; if (nextStart < now) nextStart = now;
                source.start(nextStart); nextStart += buffer.duration; activeSources.push(source);
                source.onended = function() { var idx = activeSources.indexOf(source); if (idx > -1) activeSources.splice(idx, 1); };
            } catch (e) { log("صوت: " + e.message, "err"); }
        }

        window.sendToolResponse = function(id, response) {
            log("✅ تم استلام إجابة البحث", "sys");
            var toolMsg = {
                realtimeInput: {
                    toolResponses: [{
                        functionResponses: [{
                            id: id,
                            name: "query_personal_assistant",
                            response: { output: { text: response } }
                        }]
                    }]
                }
            };
            if (ws && ws.readyState === 1) ws.send(JSON.stringify(toolMsg));
        };

        function startMic() {
            navigator.mediaDevices.getUserMedia({ audio: true }).then(function(stream) {
                micStream = stream;
                var micCtx = new (window.AudioContext || window.webkitAudioContext)({ sampleRate: 16000 });
                var source = micCtx.createMediaStreamSource(micStream);
                var processor = micCtx.createScriptProcessor(2048, 1, 1);
                source.connect(processor); processor.connect(micCtx.destination);
                processor.onaudioprocess = function(e) {
                    if (ws && ws.readyState === 1) {
                        var input = e.inputBuffer.getChannelData(0);
                        var pcm = new Int16Array(input.length);
                        for (var i = 0; i < input.length; i++) pcm[i] = input[i] * 0x7FFF;
                        var binary = ""; var bytes = new Uint8Array(pcm.buffer);
                        for (var j = 0; j < bytes.length; j++) binary += String.fromCharCode(bytes[j]);
                        ws.send(JSON.stringify({ realtimeInput: { audio: { data: btoa(binary), mimeType: "audio/pcm;rate=16000" } } }));
                    }
                };
                log("🎙️ المايك متصل!", "sys");
            }).catch(function(err) { log("خطأ مايك: " + err.message, "err"); });
        }

        stopBtn.onclick = function() {
            if (ws) ws.close();
            if (micStream) { var tracks = micStream.getTracks(); for (var i = 0; i < tracks.length; i++) tracks[i].stop(); }
            stopAllAudio(); stopBtn.style.display = "none"; startBtn.style.display = "inline-block";
            statusText.innerText = "تم إنهاء الجلسة ⏹️";
            document.getElementById("keyPanel").style.display = "block";
        };

        startBtn.onclick = function() {
            if (!GEMINI_KEY) { alert("أدخل مفتاح Gemini أولاً"); return; }
            startBtn.style.display = "none"; stopBtn.style.display = "inline-block";
            document.getElementById("keyPanel").style.display = "none";
            statusText.innerText = "جاري الاتصال...";
            ws = new WebSocket("wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1alpha.GenerativeService.BidiGenerateContent?key=" + GEMINI_KEY);
            ws.onopen = function() {
                log("✅ متصل بالسيرفر", "sys");
                var setup = {
                    setup: {
                        model: "models/gemini-2.0-flash-exp",
                        systemInstruction: { parts: [{ text: SYS_INSTR }] },
                        generationConfig: { responseModalities: ["AUDIO"] }
                    }
                };
                if (TOOLS_CONFIG && TOOLS_CONFIG !== "null") {
                    setup.setup.tools = TOOLS_CONFIG;
                    log("🛠️ تم تفعيل أداة البحث", "sys");
                }
                ws.send(JSON.stringify(setup));
            };
            ws.onmessage = function(event) {
                function process(text) {
                    var msg = JSON.parse(text);
                    if (msg.setupComplete) { statusText.innerText = "🚀 بث مباشر!"; startMic(); }
                    if (msg.serverContent) {
                        var sc = msg.serverContent;
                        if (sc.interrupted) stopAllAudio();
                        if (sc.modelTurn) {
                            var parts = sc.modelTurn.parts || [];
                            for (var i = 0; i < parts.length; i++) {
                                var p = parts[i];
                                if (p.inlineData) playAudio(p.inlineData.data);
                                if (p.functionCall) {
                                    log("🔍 جاري البحث: " + p.functionCall.args.query, "sys");
                                    console.log("CMD_QUERY:" + p.functionCall.id + ":" + p.functionCall.args.query);
                                }
                            }
                        }
                    }
                    if (msg.error) log("خطأ: " + msg.error.message, "err");
                }
                if (event.data instanceof Blob) {
                    var r = new FileReader(); r.onload = function() { process(r.result); }; r.readAsText(event.data);
                } else process(event.data);
            };
            ws.onclose = function(e) {
                statusText.innerText = "انقطع الاتصال";
                log("إغلاق: " + e.code + " " + (e.reason || ""), "err");
                stopBtn.click();
            };
        };
    </script>
</body></html>
    ]===]

    webview.loadDataWithBaseURL("https://localhost", html, "text/html", "UTF-8", nil)

    local params = WindowManager.LayoutParams(
        WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.MATCH_PARENT,
        WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY,
        WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
        PixelFormat.TRANSLUCENT
    )
    wm.addView(layout, params)
    geminiLiveWindow = layout
end"""

content = content[:start_idx] + new_func + content[end_idx:]

with open("main.lua", "w") as f:
    f.write(content)
