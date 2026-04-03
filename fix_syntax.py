import re

with open('main.lua', 'r') as f:
    content = f.read()

# Fix the malformed replace block
bad_code = """    local closeAction = function()
        saveCurrentProgress()
        stopReading()
        if docTts then pcall(function() docTts.shutdown() end) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        service.asyncSpeak("تم إغلاق المستند.")
    end
) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        service.asyncSpeak("تم إغلاق المستند.")
    end"""

good_code = """    local closeAction = function()
        saveCurrentProgress()
        stopReading()
        if docTts then pcall(function() docTts.shutdown() end) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        service.asyncSpeak("تم إغلاق المستند.")
    end"""

content = content.replace(bad_code, good_code)

with open('main.lua', 'w') as f:
    f.write(content)
