with open('main.lua', 'r') as f:
    lines = f.readlines()

in_html = False
html_content = ""
for line in lines[4600:]:
    if "local htmlCode = [[" in line:
        in_html = True
    elif in_html and line.strip() == "]]":
        in_html = False
        break
    elif in_html:
        html_content += line

with open('real_test.html', 'w') as f:
    f.write(html_content)
