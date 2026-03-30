import sys

new_groq = r'''function transcribeWithGroq(filePath, callback, modelId)
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

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

import re
# Find start of function
pattern = r'function transcribeWithGroq\(filePath, callback, modelId\)'
match = re.search(pattern, content)
if match:
    start_pos = match.start()
    # Find end of function
    depth = 0
    end_pos = -1
    for i in range(start_pos, len(content)):
        # Very simplified depth check
        if content[i:i+8] == 'function' or content[i:i+2] == 'if ' or content[i:i+6] == 'while ' or content[i:i+4] == 'for ':
             depth += 1
        if content[i:i+3] == 'end':
             depth -= 1
             if depth == 0:
                 end_pos = i + 3
                 break

    if end_pos != -1:
        new_content = content[:start_pos] + new_groq + content[end_pos:]
        with open('main.lua', 'w', encoding='utf-8') as f:
            f.write(new_content)
