import re

with open("main.lua", "r", encoding="utf-8") as f:
    content = f.read()

# Add the Export button next to voiceQBtn, ttsSetBtn, closeBtn
search_str = """    local voiceQBtn = Button(service); voiceQBtn.setText("🎤 سؤال"); styleButton(voiceQBtn, "primary"); voiceQBtn.setContentDescription("سؤال المساعد صوتياً حول محتوى المستند");
    local ttsSetBtn = Button(service); ttsSetBtn.setText("⚙️ إعدادات"); styleButton(ttsSetBtn, "secondary"); ttsSetBtn.setContentDescription("إعدادات صوت القراءة");
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger"); closeBtn.setContentDescription("إغلاق تام للعارض");"""

replace_str = """    local voiceQBtn = Button(service); voiceQBtn.setText("🎤 سؤال"); styleButton(voiceQBtn, "primary"); voiceQBtn.setContentDescription("سؤال المساعد صوتياً حول محتوى المستند");
    local ttsSetBtn = Button(service); ttsSetBtn.setText("⚙️ إعدادات"); styleButton(ttsSetBtn, "secondary"); ttsSetBtn.setContentDescription("إعدادات صوت القراءة");
    local exportAudioBtn = Button(service); exportAudioBtn.setText("📥 تحويل لصوت"); styleButton(exportAudioBtn, "secondary"); exportAudioBtn.setContentDescription("تحويل المستند بالكامل لملف صوتي");
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger"); closeBtn.setContentDescription("إغلاق تام للعارض");"""

content = content.replace(search_str, replace_str)

search_add_view = """    footerBtnsL.addView(voiceQBtn, lpBtn)
    footerBtnsL.addView(ttsSetBtn, lpBtn)
    footerBtnsL.addView(closeBtn, lpBtn)"""

replace_add_view = """    footerBtnsL.addView(voiceQBtn, lpBtn)
    footerBtnsL.addView(ttsSetBtn, lpBtn)
    footerBtnsL.addView(exportAudioBtn, lpBtn)
    footerBtnsL.addView(closeBtn, lpBtn)"""

content = content.replace(search_add_view, replace_add_view)

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(content)
