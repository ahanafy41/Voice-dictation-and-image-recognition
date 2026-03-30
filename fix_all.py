import sys
import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

def get_func_range(name, text):
    pattern = r'function ' + name + r'\('
    match = re.search(pattern, text)
    if not match: return None, None
    start = match.start()
    depth = 0
    end = -1
    for i in range(start, len(text)):
        if re.match(r'\b(function|if|while|for|do)\b', text[i:i+10]):
            depth += 1
        if re.match(r'\bend\b', text[i:i+4]):
            depth -= 1
            if depth == 0:
                end = i + 3
                break
    return start, end

# Define the 3 functions as raw strings
groq_code = r'''function transcribeWithGroq(filePath, callback, modelId)
    local apiKey = groqApiKey
    if not apiKey or apiKey == "" then
        callback("Error: Groq API Key is missing", true)
        return
    end

    local modId = modelId or "whisper-large-v3"

    import "java.lang.Thread"
    import "java.lang.Runnable"
    import "java.net.URL"
    import "java.io.File"
    import "java.io.FileInputStream"
    import "java.io.DataOutputStream"
    import "java.io.InputStreamReader"
    import "java.io.BufferedReader"
    import "java.lang.System"
    import "android.os.Handler"
    import "android.os.Looper"
    import "org.json.JSONObject"

    local t = Thread(Runnable{
        run = function()
            local success, err = pcall(function()
                local file = File(filePath)
                if not file:exists() then error("File not found: " .. filePath) end

                local apiUrl = "https://api.groq.com/openai/v1/audio/transcriptions"
                local urlObj = luajava.bindClass("java.net.URL").new(tostring(apiUrl))
                local conn = urlObj:openConnection()

                conn:setChunkedStreamingMode(8192)
                local boundary = "*****" .. tostring(System.currentTimeMillis()) .. "*****"
                conn:setDoInput(true)
                conn:setDoOutput(true)
                conn:setUseCaches(false)
                conn:setRequestMethod("POST")
                conn:setRequestProperty("Connection", "Keep-Alive")
                conn:setRequestProperty("Authorization", "Bearer " .. apiKey)
                conn:setRequestProperty("Content-Type", "multipart/form-data;boundary=" .. boundary)

                local dos = DataOutputStream(conn:getOutputStream())

                -- Add model part
                dos:writeBytes("--" .. boundary .. "\r\n")
                dos:writeBytes("Content-Disposition: form-data; name=\"model\"\r\n\r\n")
                dos:writeBytes(tostring(modId) .. "\r\n")

                -- Add file part
                dos:writeBytes("--" .. boundary .. "\r\n")
                dos:writeBytes("Content-Disposition: form-data; name=\"file\"; filename=\"" .. file:getName() .. "\"\r\n")
                dos:writeBytes("Content-Type: application/octet-stream\r\n\r\n")

                local fileInputStream = FileInputStream(file)
                local bufferSize = 4096
                local Byte = luajava.bindClass("java.lang.Byte")
                local buffer = luajava.newArray(Byte.TYPE, bufferSize)
                local bytesRead = fileInputStream:read(buffer)
                while bytesRead > 0 do
                    dos:write(buffer, 0, bytesRead)
                    bytesRead = fileInputStream:read(buffer)
                end
                fileInputStream:close()

                dos:writeBytes("\r\n")
                dos:writeBytes("--" .. boundary .. "--\r\n")
                dos:flush()
                dos:close()

                local responseCode = conn:getResponseCode()
                local is = (responseCode == 200) and conn:getInputStream() or conn:getErrorStream()
                local br = BufferedReader(InputStreamReader(is))
                local response = ""
                local line = br:readLine()
                while line ~= nil do
                    response = response .. line
                    line = br:readLine()
                end
                br:close()

                mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                    run = function()
                        if responseCode == 200 then
                            local s, j = pcall(function() return JSONObject(response) end)
                            if s and j:has("text") then
                                callback(j:getString("text"), true)
                            else
                                callback("Error Parsing Groq: " .. response, true)
                            end
                        else
                            callback("Error Groq: " .. responseCode .. " - " .. response, true)
                        end
                    end
                }))
            end)
            if not success then
                mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                    run = function() callback("Error Exception Groq: " .. tostring(err), true) end
                }))
            end
        end
    })
    t.start()
end'''

wit_code = r'''function transcribeWithWitAI(filePath, callback)
    local apiKey = witApiKey
    if not apiKey or apiKey == "" then
        callback("Error: Wit.ai API Key is missing", true)
        return
    end

    import "java.lang.Thread"
    import "java.lang.Runnable"
    import "java.net.URL"
    import "java.io.File"
    import "java.io.FileInputStream"
    import "java.io.DataOutputStream"
    import "java.io.InputStreamReader"
    import "java.io.BufferedReader"
    import "java.lang.System"
    import "android.os.Handler"
    import "android.os.Looper"
    import "org.json.JSONObject"

    local t = Thread(Runnable{
        run = function()
            local success, err = pcall(function()
                local ext = filePath:match("%.([^%.]+)$") or ""
                ext = ext:lower()
                local mime = "audio/wav"
                if ext == "mp3" then mime = "audio/mpeg"
                elseif ext == "ogg" then mime = "audio/ogg"
                elseif ext == "m4a" or ext == "aac" then mime = "audio/aac"
                elseif ext == "raw" then mime = "audio/raw" end

                local apiUrl = "https://api.wit.ai/dictation?v=20240304"
                local urlObj = luajava.bindClass("java.net.URL").new(tostring(apiUrl))
                local conn = urlObj:openConnection()

                conn:setConnectTimeout(60000)
                conn:setReadTimeout(300000)
                conn:setDoInput(true)
                conn:setDoOutput(true)
                conn:setUseCaches(false)
                conn:setRequestMethod("POST")
                conn:setRequestProperty("Authorization", "Bearer " .. apiKey)
                conn:setRequestProperty("Content-Type", mime)
                conn:setChunkedStreamingMode(8192)

                local dos = DataOutputStream(conn:getOutputStream())
                local file = File(filePath)
                local fileInputStream = FileInputStream(file)
                local bufferSize = 8192
                local Byte = luajava.bindClass("java.lang.Byte")
                local buffer = luajava.newArray(Byte.TYPE, bufferSize)
                local bytesRead = fileInputStream:read(buffer)
                while bytesRead > 0 do
                    dos:write(buffer, 0, bytesRead)
                    dos:flush()
                    bytesRead = fileInputStream:read(buffer)
                end
                fileInputStream:close()
                dos:close()

                local responseCode = conn:getResponseCode()
                local is = (responseCode == 200) and conn:getInputStream() or conn:getErrorStream()
                local br = BufferedReader(InputStreamReader(is))
                local accumulatedFinals = ""
                local lastText = ""

                local line = br:readLine()
                local jsonBuffer = ""
                while line ~= nil do
                    jsonBuffer = jsonBuffer .. line .. "\n"
                    if line:match("}") then
                        local s, j = pcall(function() return JSONObject(jsonBuffer) end)
                        if s then
                            if j:has("text") then
                                local currentText = j:getString("text")
                                lastText = currentText
                                local isFinal = j:has("is_final") and j:getBoolean("is_final")

                                local displayStr = accumulatedFinals
                                if isFinal then
                                    accumulatedFinals = accumulatedFinals .. (accumulatedFinals == "" and "" or " ") .. currentText
                                    displayStr = accumulatedFinals
                                else
                                    displayStr = accumulatedFinals .. (accumulatedFinals == "" and "" or " ") .. currentText
                                end

                                mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                                    run = function() callback(displayStr, false) end
                                }))
                            end
                            jsonBuffer = ""
                        end
                    end
                    line = br:readLine()
                end
                br:close()

                mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                    run = function()
                        if responseCode == 200 then
                            if accumulatedFinals == "" and lastText ~= "" then accumulatedFinals = lastText end
                            if accumulatedFinals == "" then accumulatedFinals = "تم الانتهاء ولم يتم التعرف على أي نص." end
                            callback(accumulatedFinals, true)
                        else
                            local errMsg = "Error Wit: " .. responseCode .. " - " .. (responseCode == 408 and "Timeout" or "Fail")
                            callback(errMsg, true)
                        end
                    end
                }))
            end)
            if not success then
                mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                    run = function() callback("Error Exception Wit: " .. tostring(err), true) end
                }))
            end
        end
    })
    t.start()
end'''

gemini_code = r'''function transcribeWithGemini(filePath, callback, modelId)
    local apiKey = geminiApiKey
    if not apiKey or apiKey == "" then
        callback("Error: Gemini API Key is missing", true)
        return
    end

    local modId = modelId or "gemini-2.5-flash"
    local ext = filePath:match("%.([^%.]+)$") or "mp3"
    local mime = "audio/" .. ext
    if ext == "mp3" then mime = "audio/mpeg" end
    if ext == "m4a" then mime = "audio/mp4" end

    uploadFileToGemini(filePath, mime, apiKey, function(fileUriOrError)
        if fileUriOrError:match("^Error:") then
            callback(fileUriOrError, true)
            return
        end

        local prompt = "قم بتفريغ هذا الملف الصوتي بدقة. اكتب النص المستخرج فقط."
        local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. modId .. ":generateContent?key=" .. apiKey
        local headers = {["Content-Type"] = "application/json"}

        local root = JSONObject()
        local contentObj = JSONObject()
        local partsArray = JSONArray()

        local filePart = JSONObject()
        local fileData = JSONObject()
        fileData.put("mime_type", mime)
        fileData.put("file_uri", fileUriOrError)
        filePart.put("file_data", fileData)
        partsArray.put(filePart)

        local textPart = JSONObject()
        textPart.put("text", prompt)
        partsArray.put(textPart)

        contentObj.put("parts", partsArray)
        local contentsArray = JSONArray()
        contentsArray.put(contentObj)
        root.put("contents", contentsArray)

        Http.post(url, root.toString(), headers, function(status, response)
            if status == 200 then
                local s, j = pcall(function() return JSONObject(response) end)
                if s and j.has("candidates") then
                    local cands = j.getJSONArray("candidates")
                    if cands.length() > 0 then
                        local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                        if parts.length() > 0 and parts.getJSONObject(0).has("text") then
                            callback(parts.getJSONObject(0).getString("text"), true)
                            return
                        end
                    end
                end
            end
            callback("Error Gemini Response: " .. status .. " - " .. tostring(response), true)
        end)
    end)
end'''

# Replace all 3
s1, e1 = get_func_range('transcribeWithGroq', content)
if s1: content = content[:s1] + groq_code + content[e1:]

# Re-read or re-search since indices changed
s2, e2 = get_func_range('transcribeWithGemini', content)
if s2: content = content[:s2] + gemini_code + content[e2:]

s3, e3 = get_func_range('transcribeWithWitAI', content)
if s3: content = content[:s3] + wit_code + content[e3:]

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
