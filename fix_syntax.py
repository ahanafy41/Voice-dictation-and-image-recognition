import re

with open("main.lua", "r", encoding="utf-8") as f:
    content = f.read()

content = content.replace(
    'showResultWindow("تم التصدير", "تم حفظ الملف الصوتي في التنزيلات (Downloads):\\n" .. finalFile.getAbsolutePath())',
    'showResultWindow("تم التصدير", "تم حفظ الملف الصوتي في التنزيلات:\\n" .. finalFile.getAbsolutePath())'
)

# Fix multiline string issue if present
content = re.sub(r'showResultWindow\("تم التصدير", "تم حفظ الملف الصوتي في التنزيلات \(Downloads\):\n', 'showResultWindow("تم التصدير", "تم حفظ الملف الصوتي في التنزيلات:\\n', content)

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(content)
