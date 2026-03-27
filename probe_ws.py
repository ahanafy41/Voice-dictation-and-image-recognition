import sys

# I will add a temporary probe to main.lua to see what's available
# and have it speak the results.
probe_code = """
function probeWebSocketLibraries()
    local libs = {
        "okhttp3.OkHttpClient",
        "okhttp.OkHttpClient",
        "org.java_websocket.client.WebSocketClient",
        "com.neovisionaries.ws.client.WebSocketFactory",
        "de.tavendo.autobahn.WebSocketConnection"
    }
    local found = {}
    for _, lib in ipairs(libs) do
        local s, r = pcall(luajava.bindClass, lib)
        if s and r then table.insert(found, lib) end
    end
    if #found > 0 then
        service.asyncSpeak("تم العثور على: " .. table.concat(found, ", "))
    else
        service.asyncSpeak("لم يتم العثور على أي مكتبة سوكيت.")
    end
end
"""

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Insert after styleButton
if 'function styleButton' in content:
    parts = content.split('end', 1)
    content = parts[0] + 'end\n' + probe_code + parts[1]

# Also call it in showGeminiLiveWindow for testing
content = content.replace('service.asyncSpeak("جاري فتح البث المباشر")', 'service.asyncSpeak("جاري فتح البث المباشر"); probeWebSocketLibraries()')

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
