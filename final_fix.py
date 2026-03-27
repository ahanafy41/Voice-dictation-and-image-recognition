import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
# Ensure imports are correct and available
imports_to_add = [
    'import "android.graphics.drawable.GradientDrawable"\n',
    'import "android.widget.Spinner"\n',
    'import "android.widget.ArrayAdapter"\n',
    'import "java.util.ArrayList"\n',
    'import "android.widget.AdapterView"\n'
]

# Insert imports early
for imp in imports_to_add:
    if imp not in lines:
        new_lines.append(imp)

# Move styleButton before showGeminiLiveWindow
style_button_lines = []
in_style_button = False
other_lines = []
for line in lines:
    if 'function styleButton(btn, colorType)' in line:
        in_style_button = True
    if in_style_button:
        style_button_lines.append(line)
        if line.strip() == 'end':
            in_style_button = False
        continue
    other_lines.append(line)

# Reassemble
final_lines = new_lines + style_button_lines + other_lines

# Fix showGeminiLiveWindow with pcall
final_content = "".join(final_lines)
pcall_wrapper = """
function showGeminiLiveWindow()
    local success, err = pcall(function()
        if geminiLiveWindow then return end
        service.asyncSpeak("جاري فتح البث المباشر")
"""
final_content = final_content.replace('function showGeminiLiveWindow()\n    if geminiLiveWindow then return end', pcall_wrapper)

# Add closing for pcall
# Find the end of showGeminiLiveWindow
marker = 'pcall(function() wm.addView(geminiLiveWindow, p) end)\nend'
final_content = final_content.replace(marker, marker + '\n    end)\n    if not success then service.asyncSpeak("خطأ أثناء فتح النافذة: " .. tostring(err)); print(err) end\nend')

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(final_content)
