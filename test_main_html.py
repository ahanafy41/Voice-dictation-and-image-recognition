import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Let's see why extract_all_js.py failed to grab it.
# There might be multiple htmlCode definitions.
matches = re.finditer(r'local htmlCode = \[\[(.*?)\]\]', content, re.DOTALL)
for i, m in enumerate(matches):
    print(f"Match {i}: length {len(m.group(1))}")
    if "onFileSelectedNative" in m.group(1):
        print(f" -> Found onFileSelectedNative in match {i}")
