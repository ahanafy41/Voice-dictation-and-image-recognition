import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Let's see if the webview loadDataWithBaseURL is called correctly.
for line in content.split('\n'):
    if "loadDataWithBaseURL" in line:
        print(line.strip())
