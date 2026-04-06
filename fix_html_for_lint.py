with open('real_test_2.html', 'r') as f:
    html = f.read()

html = html.replace(']] .. (geminiApiKey or "") .. [[', 'DUMMY_KEY')

with open('real_test_lint.html', 'w') as f:
    f.write(html)
