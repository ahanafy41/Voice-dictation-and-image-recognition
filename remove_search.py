import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. Remove global variable initialization
content = re.sub(r'geminiLiveGoogleSearchEnabled = prefs\.getBoolean\("geminiLiveGoogleSearchEnabled", true\)', '', content)

# 2. Remove from saveSettings
content = re.sub(r'editor\.putBoolean\("geminiLiveGoogleSearchEnabled", geminiLiveGoogleSearchEnabled\)', '', content)

# 3. Remove from openSettings UI
# Find the checkbox block and remove it
content = re.sub(r'local searchCb = CheckBox\(service\).*?liveCard\.addView\(searchCb\)', '', content, flags=re.DOTALL)

# 4. Remove logic from showGeminiLiveWindow
# Remove toolsPart calculation
content = re.sub(r'local toolsPart = "undefined".*?toolsPart = \'\[\{ "google_search": \{\} \}\]\'\s+end', '', content, flags=re.DOTALL)

# Remove system instruction enhancement
content = re.sub(r'if geminiLiveGoogleSearchEnabled then.*?end', '', content, flags=re.DOTALL)

# Fix setupMsg to not use tools at all (since we are removing it)
content = content.replace('const tools = ]] .. toolsPart .. [[;', 'const tools = undefined;')

# Clean up any remaining references
content = content.replace('if (tools) log("تم إرسال إعدادات البحث للسيرفر 🔍", "sys");', '')
content = content.replace('if (p.call) log("جاري استخدام أداة البحث... 🔍", "sys");', '')

with open('main.lua', 'w') as f:
    f.write(content)
