import sys
import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Replace Java constructors calls
# from: luajava.bindClass("java.net.URL").new(tostring(apiUrl))
# to: luajava.bindClass("java.net.URL")(tostring(apiUrl))

content = content.replace('luajava.bindClass("java.net.URL").new(tostring(apiUrl))', 'luajava.bindClass("java.net.URL")(tostring(apiUrl))')

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
