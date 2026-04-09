with open("main.lua", "r", encoding="utf-8") as f:
    lines = f.readlines()

lines[2405] = '                    showResultWindow("تم التصدير", "تم حفظ الملف الصوتي في التنزيلات:\\n" .. finalFile.getAbsolutePath())\n'
lines[2406] = ''

with open("main.lua", "w", encoding="utf-8") as f:
    f.writelines(lines)
