import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the proxy to use the found WebSocketListener class
content = content.replace('luajava.createProxy("okhttp3.WebSocketListener"', 'luajava.createProxy(WebSocketListener and WebSocketListener.getName() or "okhttp3.WebSocketListener"')

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
