local Http = luajava.bindClass("com.nirenr.screendesigner.net.Http")
local String = luajava.bindClass("java.lang.String")
local url = "https://pipedapi.kavin.rocks/search?q=test&filter=all"
local code, content = Http.get(url)
print("Code:", code)
if content then
    print("Content length:", #content)
    print("Preview:", content:sub(1, 100))
end
