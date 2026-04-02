with open("main.lua", "r", encoding="utf-8") as f:
    code = f.read()

# Fix newline in string parsing
old_str = """                            local safeTitle = title:gsub('"', '\\"'):gsub("\\n
", " "):gsub("", "")"""

new_str = """                            local safeTitle = title:gsub('"', '\\\\"'):gsub("\\\\n", " "):gsub("\\\\r", "")"""

# The issue was Python's string escaping during the rewrite. Let's fix it safely using raw string replacement.
code = code.replace(old_str, new_str)
# Fix line 3094 explicitly
import re
code = re.sub(r'local safeTitle = title:gsub\(\'"\', \'\\"\'\):gsub\("\n", " "\):gsub\("", ""\)', r'local safeTitle = title:gsub(\'"\', \'\\\\"\'):gsub("\\\\n", " "):gsub("\\\\r", "")', code)


# Let's just rewrite the function safely
code = re.sub(r'local function performYoutubeHiddenSearch\(query\).*?end\n\nfunction showYoutubeAudioWindow', '', code, flags=re.DOTALL)

func = """local function performYoutubeHiddenSearch(query)
    local encodedQuery = luajava.bindClass("java.net.URLEncoder").encode(query, "UTF-8")
    local url = "https://m.youtube.com/results?search_query=" .. encodedQuery
    local headers = luajava.newInstance("java.util.HashMap")
    headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")

    Http.get(url, nil, "UTF-8", headers, function(code, content)
        service.post(Runnable({
            run = function()
                if code == 200 and content and content ~= "" then
                    local resultsArr = {}
                    local seen = {}

                    for videoId, title in string.gmatch(content, '"videoId":"([^"]+)".-?"title":%%{"runs":%%[%%{"text":"([^"]+)"') do
                        if not seen[videoId] and #title > 2 then
                            seen[videoId] = true
                            local safeTitle = title:gsub('"', ''):gsub('\\n', ' '):gsub('\\r', '')
                            table.insert(resultsArr, '{"type":"video","videoId":"' .. videoId .. '","title":"' .. safeTitle .. '"}')
                        end
                        if #resultsArr >= 15 then break end
                    end

                    if #resultsArr == 0 then
                         for videoId, title in string.gmatch(content, 'href="/watch%%?v=([^"]+)".-title="([^"]+)"') do
                            if not seen[videoId] and #title > 2 then
                                seen[videoId] = true
                                local safeTitle = title:gsub('"', ''):gsub('\\n', ' '):gsub('\\r', '')
                                table.insert(resultsArr, '{"type":"video","videoId":"' .. videoId .. '","title":"' .. safeTitle .. '"}')
                            end
                            if #resultsArr >= 15 then break end
                        end
                    end

                    if #resultsArr > 0 then
                        local jsonArr = "[" .. table.concat(resultsArr, ",") .. "]"
                        local safeJson = jsonArr:gsub('\\n', ' '):gsub('\\r', '')
                        if youtubeWebView then
                            youtubeWebView.evaluateJavascript("receiveResults('" .. safeJson .. "');", nil)
                        end
                    else
                        if youtubeWebView then
                            youtubeWebView.evaluateJavascript("document.getElementById('status').innerText = 'لم يتم العثور على نتائج.';", nil)
                        end
                    end
                else
                    if youtubeWebView then
                        youtubeWebView.evaluateJavascript("document.getElementById('status').innerText = 'خطأ في الاتصال بالشبكة.';", nil)
                    end
                end
            end
        }))
    end)
end

function showYoutubeAudioWindow"""

code = code.replace("function showYoutubeAudioWindow", func)

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(code)
