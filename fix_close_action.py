import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. First, declare the local variables early right after initialText
early_declarations = "    local stopReading, initDocTts, readCurrentSentence, rebuildSentencesList, updateDisplayPage, fetchRangeContentRemote, updateProgress\n    local saveCurrentProgress, closeAction"

content = content.replace("    local stopReading, initDocTts, readCurrentSentence, rebuildSentencesList, updateDisplayPage, fetchRangeContentRemote, updateProgress", early_declarations)

# 2. Extract saveCurrentProgress and closeAction implementations
save_prog_pattern = r'    local function saveCurrentProgress\(\)\n        local title = filePath:match\("\(\[\^/\]\+\)\$"\) or filePath\n        if isEpub and epubSpine and epubSpine\[currentChapterIdx\] then title = epubSpine\[currentChapterIdx\]\.title end\n        updateBookProgress\(filePath, title, currentChapterIdx, currentSentenceIdx, isBookFav\)\n    end'

close_action_pattern = r'    local closeAction = function\(\)\n        saveCurrentProgress\(\)\n        stopReading\(\)\n        if docTts then pcall\(function\(\) docTts\.shutdown\(\) end\) end\n        if resultWindow then pcall\(function\(\) wm\.removeView\(resultWindow\) end\); resultWindow = nil end\n        service\.asyncSpeak\("تم إغلاق المستند\."\)\n    end'

content = re.sub(save_prog_pattern, '', content)
content = re.sub(close_action_pattern, '', content)

# 3. Insert their implementations *before* the key listeners
impl_code = """
    saveCurrentProgress = function()
        local title = filePath:match("([^/]+)$") or filePath
        if isEpub and epubSpine and epubSpine[currentChapterIdx] then title = epubSpine[currentChapterIdx].title end
        updateBookProgress(filePath, title, currentChapterIdx, currentSentenceIdx, isBookFav)
    end

    closeAction = function()
        saveCurrentProgress()
        if stopReading then stopReading() end
        if docTts then pcall(function() docTts.shutdown() end) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        service.asyncSpeak("تم إغلاق المستند.")
    end
"""

header_insertion_point = r'    resultWindow\.setFocusableInTouchMode\(true\)'
content = re.sub(header_insertion_point, impl_code.strip() + '\n\n    resultWindow.setFocusableInTouchMode(true)', content)

# Update favBtn click
content = content.replace("    local isBookFav = savedProg and savedProg.isFav or false", "    isBookFav = savedProg and savedProg.isFav or false")
content = content.replace("    local sentencesList = {}", "    isBookFav = savedProg and savedProg.isFav or false\n    local sentencesList = {}") # Ensure isBookFav is globally scoped in the window func

with open('main.lua', 'w') as f:
    f.write(content)
