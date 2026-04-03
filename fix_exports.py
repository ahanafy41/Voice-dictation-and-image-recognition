import re

with open("main.lua", "r") as f:
    content = f.read()

# Locate the <head> section in the video editor HTML and inject `var exports = {};`
html_head = """<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>محرر الفيديو الذكي للمكفوفين (إصدار الانتقالات والمشاهد)</title>
    <!-- Fix ReferenceError: exports is not defined -->
    <script>var exports = {};</script>
    <!-- Tailwind CSS -->"""

content = re.sub(
    r'<head>\s*<meta charset="UTF-8">\s*<meta name="viewport" content="width=device-width, initial-scale=1\.0">\s*<title>[^<]+</title>\s*<!-- Tailwind CSS -->',
    html_head,
    content
)

with open("main.lua", "w") as f:
    f.write(content)
