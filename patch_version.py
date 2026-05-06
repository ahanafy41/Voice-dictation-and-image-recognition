import re

with open("main.lua", "r") as f:
    content = f.read()

# Increment currentAppVersion
new_content = re.sub(r'local currentAppVersion = 2\.6', 'local currentAppVersion = 2.7', content)

with open("main.lua", "w") as f:
    f.write(new_content)

print("Updated main.lua version to 2.7")

with open("version.txt", "w") as f:
    f.write("2.7\n- إصلاح مشكلة فقدان مربع النص أثناء الإملاء الصوتي.\n- تحسين الاحتفاظ بمرجع مربع الكتابة لإدراج النص بنجاح بعد المعالجة.\n")

print("Updated version.txt")
