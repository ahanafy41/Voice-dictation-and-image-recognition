import re

with open('main.lua', 'r') as f:
    content = f.read()

# Locate where dashboardOrder is loaded
migration_code = """
dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings")
if not dashboardOrder:match("geminiLive") then
    dashboardOrder = dashboardOrder .. ",geminiLive"
end
-- Automatic migration for users updating from 'reader' to 'library,video_analyzer'
if dashboardOrder:match("reader") then
    dashboardOrder = dashboardOrder:gsub("reader", "library,video_analyzer")
    prefs.edit().putString("dashboardOrder", dashboardOrder).apply()
end
"""

# Replace the current initialization block
content = re.sub(
    r'dashboardOrder = prefs\.getString\("dashboardOrder", "assistant,dictation,geminiLive,library,video_analyzer,image,transcription,settings"\)\nif not dashboardOrder:match\("geminiLive"\) then\n    dashboardOrder = dashboardOrder \.\. ",geminiLive"\nend',
    migration_code.strip(),
    content
)

with open('main.lua', 'w') as f:
    f.write(content)
