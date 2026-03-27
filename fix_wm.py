import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
wm_line = None
for i, line in enumerate(lines):
    if 'local wm = service.getSystemService(Context.WINDOW_SERVICE)' in line and i > 400:
        wm_line = line
        continue
    new_lines.append(line)

if wm_line:
    new_lines.insert(50, wm_line)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
