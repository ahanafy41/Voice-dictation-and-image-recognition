import re

with open('main.lua', 'r') as f:
    content = f.read()

# find currentAppVersion = X
match = re.search(r'local currentAppVersion\s*=\s*(\d+)', content)
if match:
    old_version = int(match.group(1))
    new_version = old_version + 1
    content = re.sub(r'local currentAppVersion\s*=\s*\d+', f'local currentAppVersion = {new_version}', content)
    with open('main.lua', 'w') as f:
        f.write(content)
    print(f"Updated main.lua to version {new_version}")

    with open('version.txt', 'w', encoding='utf-8') as f:
        f.write(f"{new_version}\n")
        f.write("تحسين ذكي للإملاء الصوتي: الآن يقوم التطبيق بالبحث التلقائي عن أي مربع كتابة متاح في الشاشة لإدراج النص حتى لو لم يكن التركيز (Focus) عليه بشكل مباشر، مع حفظ النص في الحافظة كإجراء أمان لمنع ضياعه.\n")
    print("Updated version.txt")
else:
    print("Could not find currentAppVersion in main.lua")
