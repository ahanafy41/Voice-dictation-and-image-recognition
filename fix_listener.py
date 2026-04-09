import re

with open("main.lua", "r", encoding="utf-8") as f:
    content = f.read()

search_str = """                        local progListener = luajava.createProxy("android.speech.tts.UtteranceProgressListener", {
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
                        ttsObj.setOnUtteranceProgressListener(progListener)"""

replace_str = """                        local progListener = UtteranceProgressListener{
                            onStart = function(id) end,
                            onDone = function(id)
                                currentChunkIndex = currentChunkIndex + 1
                                processNextChunk()
                            end,
                            onError = function(id)
                                currentChunkIndex = currentChunkIndex + 1
                                processNextChunk()
                            end
                        }
                        ttsObj.setOnUtteranceProgressListener(progListener)"""

if search_str in content:
    content = content.replace(search_str, replace_str)
    with open("main.lua", "w", encoding="utf-8") as f:
        f.write(content)
    print("Fixed.")
else:
    print("Search string not found.")
