import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Let's search for "onFileSelectedNative" and print context
lines = content.split('\n')
for i, line in enumerate(lines):
    if "onFileSelectedNative =" in line:
        print("Line:", i+1)
        for j in range(max(0, i-5), min(len(lines), i+6)):
            print(f"{j+1}: {lines[j]}")
