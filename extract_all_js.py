import re
with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# We need to find the `htmlCode = [[...]]` block.
match = re.search(r'local htmlCode = \[\[(.*?)\]\]', content, re.DOTALL)
if match:
    html = match.group(1)

    # Write full html to a file to examine
    with open('full_test.html', 'w', encoding='utf-8') as f:
        f.write(html)
