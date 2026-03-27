import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix styleButton placement: it should be after the imports
style_button_code = """function styleButton(btn, colorType)
    local bg = GradientDrawable()
    bg.setCornerRadius(20)
    btn.setPadding(20, 25, 20, 25)
    btn.setTextSize(16)
    btn.setTypeface(nil, Typeface.BOLD)
    if colorType == "primary" then
        bg.setColor(0xFF1976D2) -- Deep Blue
        btn.setTextColor(0xFFFFFFFF)
    elseif colorType == "danger" then
        bg.setColor(0xFFD32F2F) -- Red
        btn.setTextColor(0xFFFFFFFF)
    else
        bg.setColor(0xFF2C2C2C) -- Dark Surface
        bg.setStroke(2, 0xFF444444)
        btn.setTextColor(0xFF64B5F6) -- Light Blue Accent Text
    end
    btn.setBackgroundDrawable(bg)
end"""

# Remove existing styleButton if at the very top
content = content.replace(style_button_code, "")
# And remove any other partial matches from the top
content = content.replace('import "android.graphics.drawable.GradientDrawable"\nimport "android.widget.AdapterView"\n', "")

# Find a good place for styleButton - maybe after all imports
import_end_marker = 'import "android.graphics.Matrix"\n'
if import_end_marker in content:
    content = content.replace(import_end_marker, import_end_marker + "\n" + style_button_code + "\n")

# Ensure all blocks are properly closed in showGeminiLiveWindow
# We need to make sure pcall is closed correctly
# Let's fix the end of showGeminiLiveWindow
broken_end = 'pcall(function() wm.addView(geminiLiveWindow, p) end)\nend\n    end)'
fixed_end = 'pcall(function() wm.addView(geminiLiveWindow, p) end)\n    end)\n    if not success then service.asyncSpeak("خطأ أثناء فتح النافذة: " .. tostring(err)); print(err) end\nend'

if broken_end in content:
    content = content.replace(broken_end, fixed_end)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
