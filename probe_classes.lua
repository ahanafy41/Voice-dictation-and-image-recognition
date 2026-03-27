local classes = {
    "okhttp3.OkHttpClient",
    "okhttp.OkHttpClient",
    "com.squareup.okhttp3.OkHttpClient",
    "com.squareup.okhttp.OkHttpClient",
    "org.java_websocket.client.WebSocketClient",
    "android.net.http.SslError",
    "java.net.HttpURLConnection"
}
local found = {}
for _, c in ipairs(classes) do
    local s, r = pcall(luajava.bindClass, c)
    if s then table.insert(found, c) end
end
if #found > 0 then
    print("Classes found: " .. table.concat(found, ", "))
else
    print("No relevant networking classes found via bindClass.")
end
