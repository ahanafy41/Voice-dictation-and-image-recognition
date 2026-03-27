import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
for i, line in enumerate(lines):
    if 'service.setAsyncAudioFocus(true)' in line:
        new_lines.append(line)
        new_lines.append('    end)\n')
        new_lines.append('end\n')
        continue
    # Skip the old broken if/pcall lines if they appear again without end
    if 'if service and service.setAsyncAudioFocus then' in line:
         # Check if next line is pcall
         if i+1 < len(lines) and 'pcall' in lines[i+1]:
              new_lines.append(line)
              continue
    if 'pcall(function()' in line and 'service.setAsyncAudioFocus' in lines[max(0, i-1)]:
         new_lines.append(line)
         continue

    # Avoid duplicates created by previous runs
    if 'end)' in line and i > 500 and i < 530 and 'service.setAsyncAudioFocus' in "".join(lines[max(0, i-5):i]):
         continue
    if 'end' in line and i > 500 and i < 530 and 'service.setAsyncAudioFocus' in "".join(lines[max(0, i-6):i]):
         continue

    new_lines.append(line)

# This logic is a bit complex, let's just do a clean rewrite of that section
content = "".join(lines)
import re
pattern = r'if service and service.setAsyncAudioFocus then\s+local success, err = pcall\(function\(\)\s+service.setAsyncAudioFocus\(true\)\s+end\)\s+end'
# Wait, let's use a simpler string replace for the whole block
block = """if service and service.setAsyncAudioFocus then
    local success, err = pcall(function()
        service.setAsyncAudioFocus(true)
    end)
end"""

# Find where it starts
start_marker = '-- **Set Audio Focus**'
if start_marker in content:
    parts = content.split(start_marker)
    # The next block should be the if service...
    # We'll replace everything from start_marker to the start of UI Helpers
    ui_marker = '-- ### UI Helpers'
    if ui_marker in parts[1]:
        sub_parts = parts[1].split(ui_marker)
        content = parts[0] + start_marker + "\n" + block + "\n\n" + ui_marker + sub_parts[1]

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
