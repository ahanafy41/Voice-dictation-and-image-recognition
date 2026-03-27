import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    lines = f.readlines()

# Line 525-526 in the previous output:
# 525:     btn.setBackgroundDrawable(bg)
# 526: end
# This 'end' has no matching 'function' nearby.

new_lines = []
for i, line in enumerate(lines):
    # Detect the broken fragment
    if 'btn.setBackgroundDrawable(bg)' in line and 'styleButton' not in lines[max(0, i-20):i]:
         # This is likely the orphan block
         continue
    if 'end' in line and i > 520 and i < 530 and 'styleButton' not in lines[max(0, i-20):i]:
         # Skip the orphan end
         continue
    new_lines.append(line)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
