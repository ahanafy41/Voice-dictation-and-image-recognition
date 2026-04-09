import re

with open("main.lua", "r", encoding="utf-8") as f:
    content = f.read()

old_func_start = "function exportDocumentToAudio(filePath, sentencesList)"
old_func_end_pattern = r'isExportingAudio = false\s+service\.asyncSpeak\("تم حفظ الملف الصوتي بنجاح\."\)\s+mainHandler\.post\(Runnable\{\s+run = function\(\)\s+showResultWindow\("تم التصدير", "تم حفظ الملف الصوتي في التنزيلات:\\n" \.\. finalFile\.getAbsolutePath\(\)\)\s+end\s+\}\)\s+end\s+\}\)\.start\(\)\s+end'

new_func = """function exportDocumentToAudio(filePath, sentencesList)
    if isExportingAudio then
        service.asyncSpeak("هناك عملية تصدير جارية بالفعل.")
        return
    end
    isExportingAudio = true

    local title = filePath:match("([^/]+)$") or "Document"
    title = title:gsub("%.%w+$", "")

    service.asyncSpeak("جاري تحويل المستند إلى ملف صوتي، يرجى الانتظار، يمكنك الاستمرار في استخدام التطبيق...")

    import "java.lang.Thread"
    import "java.lang.Runnable"
    import "java.io.File"
    import "android.os.Environment"
    import "android.speech.tts.TextToSpeech"
    import "android.speech.tts.UtteranceProgressListener"
    import "java.util.HashMap"

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
    local currentChunkIndex = 1

    local function finishAndConcatenate()
        Thread(Runnable{
            run = function()
                local downDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
                local finalFile = File(downDir, title .. "_Audio.wav")

                if _G.appendWavFiles then
                    _G.appendWavFiles(wavFiles, finalFile.getAbsolutePath())
                end

                -- Cleanup
                for _, fPath in ipairs(wavFiles) do
                    local tf = File(fPath)
                    if tf.exists() then pcall(function() tf.delete() end) end
                end

                pcall(function() ttsObj.shutdown() end)
                isExportingAudio = false
                service.asyncSpeak("تم حفظ الملف الصوتي بنجاح.")

                mainHandler.post(Runnable{
                    run = function()
                        showResultWindow("تم التصدير بنجاح", "تم حفظ الملف الصوتي في مجلد التنزيلات (Downloads):\\n" .. finalFile.getAbsolutePath())
                    end
                })
            end
        }).start()
    end

    local function processNextChunk()
        if currentChunkIndex > #chunks then
            finishAndConcatenate()
            return
        end

        local tempFile = File(cacheDir, "export_chunk_" .. currentChunkIndex .. ".wav")
        table.insert(wavFiles, tempFile.getAbsolutePath())

        local params = HashMap()
        params.put("utteranceId", "chunk_" .. currentChunkIndex)

        local chunkText = chunks[currentChunkIndex]
        local s, err = pcall(function() ttsObj.synthesizeToFile(chunkText, params, tempFile.getAbsolutePath()) end)

        if not s then
            -- Fallback or error logging
            print("Failed to synthesize chunk " .. currentChunkIndex)
            currentChunkIndex = currentChunkIndex + 1
            processNextChunk()
        end
    end

    -- Must initialize TTS on the main UI thread (Looper) to ensure callbacks fire
    mainHandler.post(Runnable{
        run = function()
            local listener = TextToSpeech.OnInitListener{
                onInit = function(status)
                    if status == TextToSpeech.SUCCESS then
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
                            onDone = function(id)
                                currentChunkIndex = currentChunkIndex + 1
                                processNextChunk()
                            end,
                            onError = function(id)
                                currentChunkIndex = currentChunkIndex + 1
                                processNextChunk()
                            end
                        })
                        ttsObj.setOnUtteranceProgressListener(progListener)

                        -- Start processing the first chunk
                        processNextChunk()
                    else
                        isExportingAudio = false
                        service.asyncSpeak("فشل تشغيل محرك الصوت للتصدير.")
                    end
                end
            }

            if pdfTtsEngine and pdfTtsEngine ~= "" then ttsObj = TextToSpeech(service, listener, tostring(pdfTtsEngine))
            else ttsObj = TextToSpeech(service, listener) end
        end
    })
end"""

# Since the regex matcher failed previously, let's use a simpler replace strategy
import re
match = re.search(r'function exportDocumentToAudio\(filePath, sentencesList\).*?\}\)\.start\(\)\nend', content, re.DOTALL)

if match:
    content = content[:match.start()] + new_func + content[match.end():]
    with open("main.lua", "w", encoding="utf-8") as f:
        f.write(content)
    print("Function replaced successfully.")
else:
    print("Regex failed again. Saving to debug.txt")
