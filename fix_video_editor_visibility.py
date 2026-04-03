with open("main.lua", "r") as f:
    content = f.read()

# 1. Update the global dashboardOrder fallback string
content = content.replace(
    'if not dashboardOrder:match("geminiLive") then\n    dashboardOrder = dashboardOrder .. ",geminiLive"\nend',
    'if not dashboardOrder:match("geminiLive") then\n    dashboardOrder = dashboardOrder .. ",geminiLive"\nend\nif not dashboardOrder:match("video_editor") then\n    dashboardOrder = dashboardOrder .. ",video_editor"\nend'
)

# 2. Add 'video_editor' to the keys list inside `refreshSortUI` so it can be arranged in Settings
key_names_original = """        local keyNames = {
            assistant = "المساعد الشخصي",
            dictation = "الإملاء والترجمة",
            library = "المكتبة والقارئ", video_analyzer = "محلل الفيديو",
            image = "وصف الصور",
            transcription = "تفريغ الصوت",
            settings = "الإعدادات", geminiLive = "البث المباشر (Gemini Live)"
        }"""

key_names_fixed = """        local keyNames = {
            assistant = "المساعد الشخصي",
            dictation = "الإملاء والترجمة",
            library = "المكتبة والقارئ", video_analyzer = "محلل الفيديو", video_editor = "محرر الفيديو الذكي",
            image = "وصف الصور",
            transcription = "تفريغ الصوت",
            settings = "الإعدادات", geminiLive = "البث المباشر (Gemini Live)"
        }"""

content = content.replace(key_names_original, key_names_fixed)


with open("main.lua", "w") as f:
    f.write(content)
