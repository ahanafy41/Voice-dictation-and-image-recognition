import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

match = re.search(r'local htmlCode = \[\[(.*?)\]\]', content, re.DOTALL)
if match:
    html = match.group(1)

    scripts = re.findall(r'<script>(.*?)</script>', html, re.DOTALL)
    for i, script in enumerate(scripts):
        with open(f'script_{i}.js', 'w', encoding='utf-8') as sf:
            sf.write(script)
