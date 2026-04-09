import re

with open("main.lua", "r", encoding="utf-8") as f:
    content = f.read()

content = re.sub(r'local currentAppVersion = 1\.2', 'local currentAppVersion = 1.3', content)

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(content)
