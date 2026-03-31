import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. Update variables
content = content.replace(
    'let audioCtx, nextStart = 0, ws = null, micStream = null, activeSources = [];',
    'let audioCtx, nextStart = 0, ws = null, micStream = null, activeSources = [];'
)

# 2. Add stopAllAudio if not exists (already added by sed potentially, but let's be safe)
if 'function stopAllAudio()' not in content:
    content = content.replace(
        'function playAudio(base64) {',
        'function stopAllAudio() {\n            activeSources.forEach(s => { try { s.stop(); } catch(e) {} });\n            activeSources = [];\n            nextStart = audioCtx ? audioCtx.currentTime : 0;\n        }\n\n        function playAudio(base64) {'
    )

# 3. Update playAudio to track sources
new_play_audio = """        function playAudio(base64) {
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
        }"""

content = re.sub(r'function playAudio\(base64\) \{.*?\}', new_play_audio, content, flags=re.DOTALL)

# 4. Update WebSocket onmessage to handle interruption
new_onmessage = """            ws.onmessage = async (event) => {
                try {
                    let textData = event.data;
                    if (event.data instanceof Blob) textData = await event.data.text();
                    const msg = JSON.parse(textData);

                    if (msg.setupComplete) {
                        statusText.innerText = "🚀 البث مباشر الآن!";
                        startBtn.style.display = "none";
                        startMic();
                    }

                    // 🔥 دعم المقاطعة (Interruption)
                    if (msg.serverContent && msg.serverContent.interrupted) {
                        log("تمت المقاطعة ⏹️", "sys");
                        stopAllAudio();
                    }

                    const audioContent = msg.serverContent?.modelTurn?.parts?.[0]?.inlineData?.data;
                    if (audioContent) playAudio(audioContent);
                    if (msg.error) log("خطأ: " + JSON.stringify(msg.error), "err");
                } catch (e) { log("خطأ قراءة: " + e.message, "err"); }
            };"""

content = re.sub(r'ws\.onmessage = async \(event\) => \{.*?\};', new_onmessage, content, flags=re.DOTALL)

with open('main.lua', 'w') as f:
    f.write(content)
