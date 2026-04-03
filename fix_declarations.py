import re

with open('main.lua', 'r') as f:
    content = f.read()

# Remove the late local declaration
bad_decl = r'    local saveCurrentProgress, closeAction\n'
content = re.sub(bad_decl, '', content)

# Remove the duplicate currentSentenceIdx that overwrites the loaded progress
bad_idx = r'    local currentSentenceIdx = savedProg and savedProg\.sentenceIdx or 1\n    local currentSentenceIdx = 1'
good_idx = r'    local currentSentenceIdx = savedProg and savedProg.sentenceIdx or 1'
content = content.replace('    local currentSentenceIdx = savedProg and savedProg.sentenceIdx or 1\n    local currentSentenceIdx = 1', '    local currentSentenceIdx = savedProg and savedProg.sentenceIdx or 1')

# Because saveCurrentProgress relies on currentChapterIdx and currentSentenceIdx, we must declare those variables BEFORE the function definition.
# I will move the saveCurrentProgress and closeAction implementation DOWN, past the variable initializations.

# 1. Extract the implementations
impl_pattern = r'saveCurrentProgress = function\(\)\n        local title = filePath:match\("\(\[\^/\]\+\)\$"\) or filePath\n        if isEpub and epubSpine and epubSpine\[currentChapterIdx\] then title = epubSpine\[currentChapterIdx\]\.title end\n        updateBookProgress\(filePath, title, currentChapterIdx, currentSentenceIdx, isBookFav\)\n    end\n\n    closeAction = function\(\)\n        saveCurrentProgress\(\)\n        if stopReading then stopReading\(\) end\n        if docTts then pcall\(function\(\) docTts\.shutdown\(\) end\) end\n        if resultWindow then pcall\(function\(\) wm\.removeView\(resultWindow\) end\); resultWindow = nil end\n        service\.asyncSpeak\("تم إغلاق المستند\."\)\n    end'
impl_code = """    saveCurrentProgress = function()
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
    end"""

content = re.sub(impl_pattern, '', content)

# 2. Insert the implementations right after the `local stopReading...` line
insertion_point = r'    local stopReading, initDocTts, readCurrentSentence, rebuildSentencesList, updateDisplayPage, fetchRangeContentRemote, updateProgress\n'
content = content.replace('    local stopReading, initDocTts, readCurrentSentence, rebuildSentencesList, updateDisplayPage, fetchRangeContentRemote, updateProgress', '    local stopReading, initDocTts, readCurrentSentence, rebuildSentencesList, updateDisplayPage, fetchRangeContentRemote, updateProgress\n' + impl_code)

with open('main.lua', 'w') as f:
    f.write(content)
