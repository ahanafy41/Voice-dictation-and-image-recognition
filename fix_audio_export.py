import re

with open("main.lua", "r", encoding="utf-8") as f:
    content = f.read()

export_function = """
-- Function to append WAV files (concatenates raw PCM data and rebuilds header)
_G.appendWavFiles = function(wavFilesList, outputFilePath)
    import "java.io.File"
    import "java.io.FileInputStream"
    import "java.io.FileOutputStream"
    import "java.nio.ByteBuffer"
    import "java.nio.ByteOrder"

    local s, err = pcall(function()
        if not wavFilesList or #wavFilesList == 0 then return end
        local totalAudioLen = 0
        local totalDataLen = 0
        local longSampleRate = 0
        local channels = 0
        local byteRate = 0

        -- First pass: Calculate total PCM length and extract format info from first file
        for i, path in ipairs(wavFilesList) do
            local f = File(path)
            if f.exists() then
                local len = f.length()
                if len > 44 then
                    totalAudioLen = totalAudioLen + (len - 44)
                    if i == 1 then
                        local inStream = FileInputStream(f)
                        local header = byte[44]
                        inStream.read(header, 0, 44)
                        inStream.close()
                        local bb = ByteBuffer.wrap(header)
                        bb.order(ByteOrder.LITTLE_ENDIAN)
                        channels = bb.getShort(22)
                        longSampleRate = bb.getInt(24)
                        byteRate = bb.getInt(28)
                    end
                end
            end
        end

        totalDataLen = totalAudioLen + 36
        local outStream = FileOutputStream(outputFilePath)

        local function writeHeader()
            local header = byte[44]
            header[0] = 82; header[1] = 73; header[2] = 70; header[3] = 70; -- RIFF
            header[4] = totalDataLen & 0xff; header[5] = (totalDataLen >> 8) & 0xff; header[6] = (totalDataLen >> 16) & 0xff; header[7] = (totalDataLen >> 24) & 0xff;
            header[8] = 87; header[9] = 65; header[10] = 86; header[11] = 69; -- WAVE
            header[12] = 102; header[13] = 109; header[14] = 116; header[15] = 32; -- fmt
            header[16] = 16; header[17] = 0; header[18] = 0; header[19] = 0; -- Subchunk1Size
            header[20] = 1; header[21] = 0; -- AudioFormat
            header[22] = channels & 0xff; header[23] = (channels >> 8) & 0xff;
            header[24] = longSampleRate & 0xff; header[25] = (longSampleRate >> 8) & 0xff; header[26] = (longSampleRate >> 16) & 0xff; header[27] = (longSampleRate >> 24) & 0xff;
            header[28] = byteRate & 0xff; header[29] = (byteRate >> 8) & 0xff; header[30] = (byteRate >> 16) & 0xff; header[31] = (byteRate >> 24) & 0xff;
            header[32] = (channels * 16 / 8) & 0xff; header[33] = 0; -- block align
            header[34] = 16; header[35] = 0; -- bits per sample
            header[36] = 100; header[37] = 97; header[38] = 116; header[39] = 97; -- data
            header[40] = totalAudioLen & 0xff; header[41] = (totalAudioLen >> 8) & 0xff; header[42] = (totalAudioLen >> 16) & 0xff; header[43] = (totalAudioLen >> 24) & 0xff;
            outStream.write(header, 0, 44)
        end
        writeHeader()

        -- Second pass: Append PCM data
        local buffer = byte[8192]
        for _, path in ipairs(wavFilesList) do
            local f = File(path)
            if f.exists() and f.length() > 44 then
                local inStream = FileInputStream(f)
                inStream.skip(44) -- Skip header
                local bytesRead = inStream.read(buffer)
                while bytesRead ~= -1 do
                    outStream.write(buffer, 0, bytesRead)
                    bytesRead = inStream.read(buffer)
                end
                inStream.close()
            end
        end
        outStream.close()
    end)
    if not s then print("Error appending WAV: " .. tostring(err)) end
end

function exportDocumentToAudio(filePath, sentencesList)
    if isExportingAudio then
        service.asyncSpeak("هناك عملية تصدير جارية بالفعل.")
        return
    end
    isExportingAudio = true

    local title = filePath:match("([^/]+)$") or "Document"
    title = title:gsub("%.%w+$", "")

    service.asyncSpeak("جاري تحويل المستند إلى ملف صوتي، يرجى الانتظار...")

    import "java.lang.Thread"
    import "java.lang.Runnable"
    import "java.io.File"
    import "android.os.Environment"
    import "android.speech.tts.TextToSpeech"
    import "android.speech.tts.UtteranceProgressListener"
    import "java.util.HashMap"

    Thread(Runnable{
        run = function()
            local cacheDir = service.getCacheDir()
            local wavFiles = {}
            local chunks = {}
            local currentChunk = ""

            -- Aggregate small sentences into larger text chunks (~2000 chars) for performance
            for _, sentence in ipairs(sentencesList) do
                if #currentChunk + #sentence < 2000 then
                    currentChunk = currentChunk .. " " .. sentence
                else
                    table.insert(chunks, currentChunk)
                    currentChunk = sentence
                end
            end
            if currentChunk ~= "" then table.insert(chunks, currentChunk) end

            local ttsObj = nil
            local ttsReady = false
            local currentUtteranceDone = false

            local listener = TextToSpeech.OnInitListener{
                onInit = function(status)
                    if status == TextToSpeech.SUCCESS then
                        ttsReady = true
                        pcall(function() ttsObj.setSpeechRate(pdfTtsSpeed or 1.0) end)

                        -- Set preferred voice if available
                        if pdfTtsVoiceName and pdfTtsVoiceName ~= "" then
                            local voices = nil
                            pcall(function() voices = ttsObj.getVoices() end)
                            if voices then
                                local it = voices.iterator()
                                while it.hasNext() do
                                    local v = it.next()
                                    if v and v.getName() == pdfTtsVoiceName then pcall(function() ttsObj.setVoice(v) end) break end
                                end
                            end
                        end

                        local progListener = luajava.createProxy("android.speech.tts.UtteranceProgressListener", {
                            onStart = function(id) end,
                            onDone = function(id) currentUtteranceDone = true end,
                            onError = function(id) currentUtteranceDone = true end
                        })
                        ttsObj.setOnUtteranceProgressListener(progListener)
                    end
                end
            }

            if pdfTtsEngine and pdfTtsEngine ~= "" then ttsObj = TextToSpeech(service, listener, tostring(pdfTtsEngine))
            else ttsObj = TextToSpeech(service, listener) end

            -- Wait for TTS to initialize (timeout 5s)
            local waitTime = 0
            while not ttsReady and waitTime < 50 do
                Thread.sleep(100)
                waitTime = waitTime + 1
            end

            if not ttsReady then
                isExportingAudio = false
                service.asyncSpeak("فشل تشغيل محرك الصوت للتصدير.")
                pcall(function() ttsObj.shutdown() end)
                return
            end

            for i, chunkText in ipairs(chunks) do
                local tempFile = File(cacheDir, "export_chunk_" .. i .. ".wav")
                table.insert(wavFiles, tempFile.getAbsolutePath())
                currentUtteranceDone = false

                local params = HashMap()
                params.put("utteranceId", "chunk_" .. i)

                local s, err = pcall(function() ttsObj.synthesizeToFile(chunkText, params, tempFile.getAbsolutePath()) end)

                if s then
                    -- Wait for this chunk to finish synthesizing
                    while not currentUtteranceDone do
                        Thread.sleep(50)
                    end
                end
                -- Allow Garbage Collection
                Thread.sleep(50)
            end

            pcall(function() ttsObj.shutdown() end)

            local downDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
            local finalFile = File(downDir, title .. "_Audio.wav")

            if _G.appendWavFiles then
                _G.appendWavFiles(wavFiles, finalFile.getAbsolutePath())
            end

            -- Cleanup
            for _, fPath in ipairs(wavFiles) do
                local tf = File(fPath)
                if tf.exists() then tf.delete() end
            end

            isExportingAudio = false
            service.asyncSpeak("تم حفظ الملف الصوتي بنجاح.")

            mainHandler.post(Runnable{
                run = function()
                    showResultWindow("تم التصدير", "تم حفظ الملف الصوتي في التنزيلات (Downloads):\n" .. finalFile.getAbsolutePath())
                end
            })
        end
    }).start()
end

"""

# Insert function before showDocumentViewerWindow
search_marker = """function showDocumentViewerWindow(filePath, fileUri, isWordLocal, initialText, epubSpine, savedProg)"""
content = content.replace(search_marker, export_function + search_marker)

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(content)
