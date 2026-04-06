with open('real_test.html', 'r') as f:
    html = f.read()

# Replace lua template injections to valid JS to test parsing
html = html.replace(']] .. (geminiApiKey or "") .. [[', 'DUMMY_KEY')

with open('real_test_clean.html', 'w') as f:
    f.write(html)
