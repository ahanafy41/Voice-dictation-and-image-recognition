import re

with open("main.lua", "r") as f:
    content = f.read()

# Let's ensure the generateSceneImage and generateSceneAudio functions also use `window.prompt` natively,
# or we make sure they work. The prompt mentions "AI is not responding when I ask for a script or anything".
# Image generation uses `fetch` to `imagen-4.0` which is REST. Same for `tts`.
# Let's replace them with native calls too.

# 1. Native API callbacks in JS
native_cbs = """
        window.onSceneImageGeneratedNative = function(base64Data, index) {
            if (!base64Data || base64Data.indexOf("Error") > -1) {
                showToast('خطأ أثناء توليد الصورة.', 'error');
                return;
            }
            const imageUrl = `data:image/png;base64,${base64Data}`;
            const imgObj = new Image();
            imgObj.src = imageUrl;
            imgObj.onload = () => {
                const startTime = appState.lastItemEndTimes.visual;
                const endTime = startTime + 5;
                appState.lastItemEndTimes.visual = endTime;
                addToTimeline({
                    id: `img-${Date.now()}`, type: 'image', src: imageUrl, name: `صورة م.${index+1}`,
                    start: startTime, end: endTime, layer: 1, scale: 100, transition: 'none', transSound: false, imageElement: imgObj
                });
                showToast(`تمت إضافة الصورة بنجاح.`, 'success');
            };
        };

        window.onSceneAudioGeneratedNative = function(base64Data, index, sampleRate) {
            if (!base64Data || base64Data.indexOf("Error") > -1) {
                showToast('خطأ أثناء توليد الصوت.', 'error');
                return;
            }
            try {
                const binaryStr = window.atob(base64Data);
                const bytes = new Uint8Array(binaryStr.length);
                for (let i = 0; i < binaryStr.length; i++) bytes[i] = binaryStr.charCodeAt(i);

                const sr = parseInt(sampleRate) || 24000;
                const wavBlob = pcmToWav(bytes, sr);
                const urlBlob = URL.createObjectURL(wavBlob);
                const duration = Math.max(bytes.length / (sr * 2), 1);
                const audioObj = new Audio(urlBlob);

                const startTime = appState.lastItemEndTimes.audio;
                const endTime = startTime + parseFloat(duration.toFixed(1));
                appState.lastItemEndTimes.audio = endTime;

                addToTimeline({ id: `audio-${Date.now()}`, type: 'audio', src: urlBlob, name: `صوت م.${index+1}`, start: startTime, end: endTime, audioElement: audioObj });
                showToast(`تمت إضافة الصوت بنجاح.`, 'success');
            } catch (e) {
                showToast('فشل قراءة الملف الصوتي المولد.', 'error');
            }
        };
"""
content = content.replace("window.onFileSelectedNative = function", native_cbs + "\n        window.onFileSelectedNative = function")

# 2. Update JS functions to use window.prompt
js_img = r'(async function generateSceneImage\(index\) \{.*?showToast\(`جاري توليد الصورة للمشهد \$\{index\+1\}\.\.\.`, \'info\'\);).*?(// دالة مخصصة لرفع الملفات اليدوية)'
js_img_rep = r"""\1
            window.prompt("GENERATE_IMAGE", index + "|" + prompt);
        }

        \2"""
content = re.sub(js_img, js_img_rep, content, flags=re.DOTALL)

js_aud = r'(async function generateSceneAudio\(index\) \{.*?showToast\(`جاري تسجيل الصوت للمشهد \$\{index\+1\}\.\.\.`, \'info\'\);).*?(async function generateSceneImage)'
js_aud_rep = r"""\1
            window.prompt("GENERATE_AUDIO", index + "|" + voiceName + "|" + text);
        }

        \2"""
content = re.sub(js_aud, js_aud_rep, content, flags=re.DOTALL)


# 3. Add to WebChromeClient in Lua
lua_cbs = """elseif message == "GENERATE_IMAGE" then
                local indexStr, promptStr = defaultValue:match("^(.-)|(.*)$")
                local url = "https://generativelanguage.googleapis.com/v1beta/models/imagen-3.0-generate-001:predict?key=" .. (geminiApiKey or "")
                local headers = {["Content-Type"] = "application/json"}
                local payload = JSONObject()
                local instances = JSONObject()
                instances.put("prompt", promptStr)
                payload.put("instances", JSONArray().put(instances))
                local params = JSONObject()
                params.put("sampleCount", 1)
                payload.put("parameters", params)

                Http.post(url, payload.toString(), headers, function(status, response)
                    local b64 = "Error"
                    if status == 200 then
                        pcall(function()
                            local j = JSONObject(response)
                            b64 = j.getJSONArray("predictions").getJSONObject(0).getString("bytesBase64Encoded")
                        end)
                    end
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function() view.evaluateJavascript("window.onSceneImageGeneratedNative('" .. b64 .. "', " .. indexStr .. ");", nil) end
                    }))
                end)
                result.confirm("Handled")
                return true
            elseif message == "GENERATE_AUDIO" then
                local indexStr, voiceName, textStr = defaultValue:match("^(.-)|(.-)|(.*)$")
                local url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-preview-tts:generateContent?key=" .. (geminiApiKey or "")
                local headers = {["Content-Type"] = "application/json"}

                local payload = JSONObject()
                local contents = JSONArray()
                local contentObj = JSONObject()
                local partsArray = JSONArray()
                local textPart = JSONObject()
                textPart.put("text", textStr)
                partsArray.put(textPart)
                contentObj.put("parts", partsArray)
                contents.put(contentObj)
                payload.put("contents", contents)

                local genConfig = JSONObject()
                local modalities = JSONArray(); modalities.put("AUDIO")
                genConfig.put("responseModalities", modalities)

                local speechConfig = JSONObject()
                local voiceConfig = JSONObject()
                local prebuilt = JSONObject()
                prebuilt.put("voiceName", voiceName)
                voiceConfig.put("prebuiltVoiceConfig", prebuilt)
                speechConfig.put("voiceConfig", voiceConfig)
                genConfig.put("speechConfig", speechConfig)

                payload.put("generationConfig", genConfig)

                Http.post(url, payload.toString(), headers, function(status, response)
                    local b64 = "Error"
                    local sampleRate = "24000"
                    if status == 200 then
                        pcall(function()
                            local j = JSONObject(response)
                            local inlineData = j.getJSONArray("candidates").getJSONObject(0).getJSONObject("content").getJSONArray("parts").getJSONObject(0).getJSONObject("inlineData")
                            b64 = inlineData.getString("data")
                            local mime = inlineData.getString("mimeType")
                            local srMatch = mime:match("rate=(%d+)")
                            if srMatch then sampleRate = srMatch end
                        end)
                    end
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function() view.evaluateJavascript("window.onSceneAudioGeneratedNative('" .. b64 .. "', " .. indexStr .. ", " .. sampleRate .. ");", nil) end
                    }))
                end)
                result.confirm("Handled")
                return true
            end"""

content = content.replace("end\n            return super.onJsPrompt(view, url, message, defaultValue, result)", lua_cbs + "\n            return super.onJsPrompt(view, url, message, defaultValue, result)")

with open("main.lua", "w") as f:
    f.write(content)
