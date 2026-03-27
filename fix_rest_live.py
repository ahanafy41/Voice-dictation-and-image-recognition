import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Define the new REST-based Live logic
rest_live_impl = """
local restLiveHistory = {}
local isRestLiveListening = false

function stopGeminiLive()
    isGeminiLiveRunning = false
    isRestLiveListening = false
    if audioRecord then
        pcall(function() audioRecord.stop(); audioRecord.release() end)
        audioRecord = nil
    end
    if audioTrack then
        pcall(function() audioTrack.stop(); audioTrack.release() end)
        audioTrack = nil
    end
    service.asyncSpeak("تم إيقاف البث.")
end

function startGeminiLive(voiceId, modelId)
    if isGeminiLiveRunning then return end
    if geminiApiKey == "" then service.asyncSpeak("مفتاح Gemini API مفقود."); return end

    isGeminiLiveRunning = true
    restLiveHistory = {}
    service.asyncSpeak("بدء المحادثة المباشرة. أنا أستمع إليك...")

    -- Start the first recording cycle
    runRestLiveCycle(voiceId, modelId)
end

function runRestLiveCycle(voiceId, modelId)
    if not isGeminiLiveRunning then return end

    local sampleRate = 16000
    local channelConfig = AudioFormat.CHANNEL_IN_MONO
    local audioFormat = AudioFormat.ENCODING_PCM_16BIT
    local bufferSize = AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat)

    local AudioRecordClass = luajava.bindClass("android.media.AudioRecord")
    audioRecord = AudioRecordClass(MediaRecorder.AudioSource.MIC, sampleRate, channelConfig, audioFormat, bufferSize)

    local recordingFile = File(service.getExternalFilesDir(nil), "live_temp.pcm")
    local fos = luajava.bindClass("java.io.FileOutputStream")(recordingFile)

    audioRecord.startRecording()
    isRestLiveListening = true

    -- Record for 4 seconds or until user stops
    Thread(luajava.createProxy("java.lang.Runnable", {
        run = function()
            local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, bufferSize)
            local startTime = System.currentTimeMillis()
            while isGeminiLiveRunning and isRestLiveListening and (System.currentTimeMillis() - startTime < 4000) do
                local read = audioRecord.read(buffer, 0, bufferSize)
                if read > 0 then fos.write(buffer, 0, read) end
            end
            fos.close()
            audioRecord.stop()
            audioRecord.release()

            if isGeminiLiveRunning then
                processRestLiveAudio(recordingFile, voiceId, modelId)
            end
        end
    })).start()
end

function processRestLiveAudio(file, voiceId, modelId)
    local bytes = luajava.bindClass("java.nio.file.Files").readAllBytes(file.toPath())
    local base64Audio = Base64.encodeToString(bytes, Base64.NO_WRAP)

    local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. (modelId or "gemini-2.0-flash-exp") .. ":generateContent?key=" .. geminiApiKey

    local payload = {
        contents = restLiveHistory,
        generationConfig = {
            response_modalities = {"AUDIO"},
            speech_config = {
                voice_config = { prebuilt_voice_config = { voice_name = voiceId or "puck" } }
            }
        }
    }

    -- Add user turn
    table.insert(payload.contents, {
        role = "user",
        parts = { { inline_data = { mime_type = "audio/pcm;rate=16000", data = base64Audio } } }
    })

    Http.post(url, toJavaJSON(payload).toString(), {["Content-Type"]="application/json"}, function(status, response)
        if status == 200 then
            local j = JSONObject(response)
            local candidate = j.getJSONArray("candidates").getJSONObject(0)
            local content = candidate.getJSONObject("content")
            local parts = content.getJSONArray("parts")

            -- Save to history
            table.insert(restLiveHistory, { role = "model", parts = { { text = parts.getJSONObject(0).has("text") and parts.getJSONObject(0).getString("text") or "" } } })

            -- Play Audio Response
            for i = 0, parts.length()-1 do
                local p = parts.getJSONObject(i)
                if p.has("inline_data") then
                    local audioData = p.getJSONObject("inline_data").getString("data")
                    local audioBytes = Base64.decode(audioData, Base64.DEFAULT)
                    playAudioChunk(audioBytes)
                end
            end

            -- Wait for playback to finish (roughly) and cycle
            mainHandler.postDelayed(luajava.createProxy("java.lang.Runnable", {
                run = function() runRestLiveCycle(voiceId, modelId) end
            }), 2000)
        else
            service.asyncSpeak("فشل استلام الرد: " .. tostring(status))
            stopGeminiLive()
        end
    end)
end
"""

# Replace the previous startGeminiLive and associated functions
import re
pattern = r'local isGeminiLiveRunning = false.*?function playAudioChunk\(audioBytes\).*?end'
content = re.sub(pattern, rest_live_impl + "\\n" + 'function playAudioChunk(audioBytes)\\n    -- implementation remains same or updated\\nend', content, flags=re.DOTALL)

# Re-insert the playAudioChunk with AudioTrack fix
content = content.replace('function playAudioChunk(audioBytes)\\n    -- implementation remains same or updated\\nend', """
function playAudioChunk(audioBytes)
    local sampleRate = 24000
    local channelConfig = AudioFormat.CHANNEL_OUT_MONO
    local audioFormat = AudioFormat.ENCODING_PCM_16BIT
    local bufferSize = AudioTrack.getMinBufferSize(sampleRate, channelConfig, audioFormat)
    local AudioTrackClass = luajava.bindClass("android.media.AudioTrack")
    if not audioTrack then
        audioTrack = AudioTrackClass(AudioManager.STREAM_MUSIC, sampleRate, channelConfig, audioFormat, bufferSize, AudioTrack.MODE_STREAM)
        audioTrack.play()
    end
    audioTrack.write(audioBytes, 0, #audioBytes)
end
""")

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
