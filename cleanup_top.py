import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
skip_mode = False
# We want to keep everything from "require \"import\"" onwards,
# but we need to make sure we don't skip legitimate code.
# Actually, let's just find the first "require \"import\"" and discard everything before it.

import_idx = -1
for i, line in enumerate(lines):
    if 'require "import"' in line:
        import_idx = i
        break

if import_idx != -1:
    new_lines = lines[import_idx:]
else:
    new_lines = lines

with open('main.lua', 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
