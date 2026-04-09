import re

with open("main.lua", "r", encoding="utf-8") as f:
    content = f.read()

search_str = """    closeBtn.setOnClickListener(function() closeAction() end)"""

replace_str = """    closeBtn.setOnClickListener(function() closeAction() end)

    exportAudioBtn.setOnClickListener(function()
        if sentencesList and #sentencesList > 0 then
            exportDocumentToAudio(filePath, sentencesList)
        else
            service.asyncSpeak("عذراً، لا يوجد نص متاح للتحويل.")
        end
    end)"""

content = content.replace(search_str, replace_str)

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(content)
