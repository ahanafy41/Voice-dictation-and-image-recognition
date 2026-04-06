import re

with open('main.lua', 'r') as f:
    lines = f.readlines()

in_html = False
html_content = ""
for i, line in enumerate(lines):
    if "local htmlCode = [[" in line and i > 4600:
        in_html = True
        html_content += line
    elif in_html and line.strip() == "]]":
        in_html = False
        html_content += line
        break
    elif in_html:
        html_content += line

with open('full_html_to_test.html', 'w') as f:
    f.write(html_content)
