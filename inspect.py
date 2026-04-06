with open('main.lua', 'r') as f:
    lines = f.readlines()

in_html = False
for i, line in enumerate(lines):
    if "local htmlCode = [[" in line:
        in_html = True
    elif "]]" in line and in_html and i > 5000:
        in_html = False

    if "onFileSelectedNative" in line:
        print(f"Line {i+1} (in HTML: {in_html}): {line.strip()}")
