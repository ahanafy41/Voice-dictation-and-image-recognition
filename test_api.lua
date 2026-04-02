local Http = luajava.bindClass("com.nirenr.screendesigner.net.Http")
local url1 = "https://vid.puffyan.us/api/v1/search?q=test"
local code1, content1 = Http.get(url1)
print("Invidious Code:", code1)
if content1 then print("Invidious len:", #content1) end

local url2 = "https://pipedapi.kavin.rocks/search?q=test&filter=videos"
local code2, content2 = Http.get(url2)
print("Piped Code:", code2)
if content2 then print("Piped len:", #content2) end
