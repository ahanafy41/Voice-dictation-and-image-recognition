import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. Update dashboardOrder settings in main.lua to include video_analyzer
# Find the line: dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,reader,image,transcription,settings")
old_dashboard_default = 'dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,reader,image,transcription,settings")'
new_dashboard_default = 'dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings")'
content = content.replace(old_dashboard_default, new_dashboard_default)

# Fix the fallback for the old dashboardOrder containing 'reader'
content = re.sub(
    r'dashboardOrder = prefs\.getString\("dashboardOrder", "assistant,dictation,geminiLive,reader,image,transcription,settings"\)',
    'dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings")',
    content
)

# And if there's any hardcoded string: "assistant,dictation,geminiLive,reader,image,transcription,settings"
content = content.replace(
    '"assistant,dictation,geminiLive,reader,image,transcription,settings"',
    '"assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings"'
)

# Replace reader with library in the default string inside refreshSortUI and update buttons mapping
content = content.replace('reader = "قارئ المستندات"', 'library = "المكتبة والقارئ", video_analyzer = "محلل الفيديو"')

# 2. Update the buttons in openMainWindow()
# Replace reader = function() ... with library and video_analyzer
buttons_pattern = r'reader = function\(\).*?return btn\n\s*end,'
new_buttons = """library = function()
            local btn = Button(service); btn.setText("📚 المكتبة والقارئ")
            btn.setContentDescription("فتح مكتبة الكتب والمستندات")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function()
                hideMainWindow()
                if showLibraryWindow then showLibraryWindow() end
            end)
            return btn
        end,
        video_analyzer = function()
            local btn = Button(service); btn.setText("🎬 محلل الفيديو")
            btn.setContentDescription("اختيار وتحليل مقاطع الفيديو")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function()
                hideMainWindow()
                local paths = getStoragePaths(); local startPath = "/storage/emulated/0"
                if #paths > 0 then startPath = paths[1].path end
                openDocumentPickerWindow(startPath, function(selectedPath) loadDocumentAndShowViewer(selectedPath) end)
            end)
            return btn
        end,"""

content = re.sub(buttons_pattern, new_buttons, content, flags=re.DOTALL)

with open('main.lua', 'w') as f:
    f.write(content)

print("Dashboard buttons and settings updated.")
