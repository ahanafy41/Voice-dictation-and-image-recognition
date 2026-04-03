import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. We need to make sure the migration happens dynamically right before it's used if the global var isn't updating the local prefs properly.
# Find the global dashboardOrder declaration and update it.
global_dashboard_pattern = r'dashboardOrder = prefs\.getString\("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings"\).*?prefs\.edit\(\)\.putString\("dashboardOrder", dashboardOrder\)\.apply\(\)\nend'

robust_migration = """
dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings")
local needsSave = false
if not dashboardOrder:match("geminiLive") then
    dashboardOrder = dashboardOrder .. ",geminiLive"
    needsSave = true
end
if dashboardOrder:match("reader") then
    dashboardOrder = dashboardOrder:gsub("reader", "library,video_analyzer")
    needsSave = true
end
if not dashboardOrder:match("library") then
    dashboardOrder = dashboardOrder .. ",library"
    needsSave = true
end
if not dashboardOrder:match("video_analyzer") then
    dashboardOrder = dashboardOrder .. ",video_analyzer"
    needsSave = true
end
if needsSave then
    prefs.edit().putString("dashboardOrder", dashboardOrder).apply()
end
"""

content = re.sub(global_dashboard_pattern, robust_migration.strip(), content, flags=re.DOTALL)


# 2. Inside openMainWindow, ensure we load the latest from prefs instead of relying solely on the global which might be stale
open_main_pattern = r'local orderStr = dashboardOrder or "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings"'
fresh_load = """
    -- Refresh from prefs in case it was modified
    local orderStr = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings")
    if orderStr:match("reader") then orderStr = orderStr:gsub("reader", "library,video_analyzer") end
"""
content = content.replace(open_main_pattern, fresh_load)


# 3. Inside refreshSortUI, do the same fresh load
sort_ui_pattern = r'if not dashboardOrder then dashboardOrder = "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings" end\n        for k in dashboardOrder:gmatch\("\(\[\^\,\]\+\)"\)'
sort_ui_replacement = """
        dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings")
        if dashboardOrder:match("reader") then dashboardOrder = dashboardOrder:gsub("reader", "library,video_analyzer") end
        for k in dashboardOrder:gmatch("([^,]+)")
"""
content = content.replace('if not dashboardOrder then dashboardOrder = "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings" end\n        for k in dashboardOrder:gmatch("([^,]+)")', sort_ui_replacement)


# Also ensure that when they hit Save in settings, the dashboardOrder global is updated.
save_settings_pattern = r'editor\.putString\("dashboardOrder", dashboardOrder or "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings"\)'
content = content.replace(save_settings_pattern, 'editor.putString("dashboardOrder", dashboardOrder or "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings")')


with open('main.lua', 'w') as f:
    f.write(content)

print("Robust migration applied.")
