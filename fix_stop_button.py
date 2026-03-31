import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. Add stopBtn to HTML
content = content.replace(
    '<button id="startBtn">ابدأ المحادثة الآن</button>',
    '<button id="startBtn">ابدأ المحادثة الآن</button>\n    <button id="stopBtn" style="display:none; padding: 15px 40px; font-size: 20px; border-radius: 30px; background: #ff4444; border: none; font-weight: bold; cursor: pointer; color: #fff; box-shadow: 0 0 20px rgba(255, 68, 68, 0.4); margin-top: 20px;">إنهاء المكالمة 🛑</button>'
)

# 2. Add stopBtn variable and onclick logic
new_js_setup = """        const statusText = document.getElementById('status');
        const startBtn = document.getElementById('startBtn');
        const stopBtn = document.getElementById('stopBtn');
        const logBox = document.getElementById('log');"""

content = content.replace(
    "const statusText = document.getElementById('status');\n        const startBtn = document.getElementById('startBtn');\n        const logBox = document.getElementById('log');",
    new_js_setup
)

stop_logic = """        function endSession() {
            if (ws) ws.close();
            if (micStream) micStream.getTracks().forEach(t => t.stop());
            stopAllAudio();
            stopBtn.style.display = "none";
            startBtn.style.display = "inline-block";
            startBtn.disabled = false;
            statusText.innerText = "تم إنهاء الجلسة ⏹️";
            log("تم إغلاق الاتصال يدوياً", "sys");
        }
        stopBtn.onclick = endSession;"""

content = content.replace(
    "const logBox = document.getElementById('log');",
    "const logBox = document.getElementById('log');\n" + stop_logic
)

# 3. Show stopBtn on setupComplete
content = content.replace(
    'startBtn.style.display = "none";',
    'startBtn.style.display = "none"; stopBtn.style.display = "inline-block";'
)

# 4. Handle onclose to reset UI
content = content.replace(
    'ws.onclose = (e) => { statusText.innerText = "❌ انقطع الاتصال"; startBtn.disabled = false; };',
    'ws.onclose = (e) => { statusText.innerText = "❌ انقطع الاتصال"; startBtn.disabled = false; stopBtn.style.display = "none"; startBtn.style.display = "inline-block"; if (micStream) micStream.getTracks().forEach(t => t.stop()); stopAllAudio(); };'
)

with open('main.lua', 'w') as f:
    f.write(content)
