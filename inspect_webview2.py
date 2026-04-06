with open('main.lua', 'r') as f:
    content = f.read()

# is it possible the webview is opened somewhere else?
import re
print("Occurrences of htmlCode:")
for m in re.finditer(r'htmlCode =', content):
    start = max(0, m.start() - 50)
    end = min(len(content), m.end() + 50)
    print(content[start:end])
