import re

with open('main.lua', 'r') as f:
    content = f.read()

# 1. Update loadDocumentAndShowViewer signature to pass the progress object
content = content.replace('function loadPdfAndShowViewer(filePath)', 'function loadPdfAndShowViewer(filePath, bookProg)')
content = content.replace('showDocumentViewerWindow(filePath, fileUriOrError, false)', 'showDocumentViewerWindow(filePath, fileUriOrError, false, nil, nil, bookProg)')

content = content.replace('function loadDocumentAndShowViewer(filePath)', 'function loadDocumentAndShowViewer(filePath)')
content = content.replace('loadPdfAndShowViewer(filePath)', 'loadPdfAndShowViewer(filePath, getBookProgress(filePath))')

content = content.replace('showDocumentViewerWindow(filePath, nil, true, text)', 'showDocumentViewerWindow(filePath, nil, true, text, nil, getBookProgress(filePath))')
content = content.replace('showDocumentViewerWindow(filePath, nil, false, firstChapText, spine)', 'showDocumentViewerWindow(filePath, nil, false, firstChapText, spine, getBookProgress(filePath))')

# 2. Update showDocumentViewerWindow signature and initialization
old_sig = 'function showDocumentViewerWindow(filePath, fileUri, isWordLocal, initialText, epubSpine)'
new_sig = 'function showDocumentViewerWindow(filePath, fileUri, isWordLocal, initialText, epubSpine, savedProg)'
content = content.replace(old_sig, new_sig)

# Add focusability to resultWindow
focus_code = """
    resultWindow.setFocusableInTouchMode(true)
    resultWindow.requestFocus()
    resultWindow.setOnKeyListener(View.OnKeyListener{
        onKey = function(v, keyCode, event)
            if event.getAction() == android.view.KeyEvent.ACTION_UP and keyCode == android.view.KeyEvent.KEYCODE_BACK then
                if resultWindow then
                    pcall(function() closeAction() end)
                end
                return true
            end
            return false
        end
    })
"""
content = content.replace('resultWindow.addView(headerL)', 'resultWindow.addView(headerL)\n' + focus_code)


# Add favorite toggle and back to library buttons to header
header_replace = """
    local libBtn = Button(service); libBtn.setText("📚"); styleButton(libBtn, "secondary"); libBtn.setContentDescription("العودة للمكتبة");
    libBtn.setPadding(10,10,10,10)
    local favBtn = Button(service)
    local isBookFav = savedProg and savedProg.isFav or false
    favBtn.setText(isBookFav and "⭐" or "☆")
    styleButton(favBtn, "secondary")
    favBtn.setContentDescription("إضافة أو إزالة من المفضلة")
    favBtn.setPadding(10,10,10,10)

    headerL.addView(libBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))
    local lpFav = LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT)
    lpFav.setMargins(10,0,10,0)
    headerL.addView(favBtn, lpFav)
"""
content = content.replace('headerL.addView(fastCloseBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))',
                          header_replace + '\n    headerL.addView(fastCloseBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))')

# Update favBtn logic inside the function (we'll just append it to closeAction block area later or just do it inline here)
content = content.replace('local sentencesList = {}', 'local sentencesList = {}\n    local currentSentenceIdx = savedProg and savedProg.sentenceIdx or 1')
content = content.replace('local currentChapterIdx = 1', 'local currentChapterIdx = savedProg and savedProg.chapterIdx or 1')


# Modify rebuildSentencesList to use currentSentenceIdx safely and save progress
rebuild_replace = """
    rebuildSentencesList = function()
        sentencesList = {}
        adapter.clear()
        for i, pageText in ipairs(pagesCache) do
            local pageSentences = splitIntoSentences(pageText)
            for _, s in ipairs(pageSentences) do
                table.insert(sentencesList, s)
                adapter.add(s)
            end
        end
        if currentSentenceIdx > #sentencesList then currentSentenceIdx = 1 end
        if #sentencesList > 0 then
            listView.setItemChecked(currentSentenceIdx - 1, true)
            listView.setSelection(currentSentenceIdx - 1)
        end
        updateProgress()
    end
"""
content = re.sub(r'rebuildSentencesList = function\(\).*?updateProgress\(\)\n    end', rebuild_replace, content, flags=re.DOTALL)


# Update the Epub chapter loader to use currentChapterIdx
epub_init = """
        if currentChapterIdx > #epubSpine then currentChapterIdx = 1 end
        local chapPath = epubSpine[currentChapterIdx].path
        -- Load the initial saved chapter if it's not chapter 1
        if currentChapterIdx > 1 then
             local cText, e = extractEpubChapterText(filePath, chapPath)
             if cText then initialText = cText end
        end

        chapSpinner.setSelection(currentChapterIdx - 1)
"""
content = content.replace('local chapAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, chapNames)',
                          'local chapAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, chapNames)\n' + epub_init)

# Hook into saving progress
save_hook = """
    local function saveCurrentProgress()
        local title = filePath:match("([^/]+)$") or filePath
        if isEpub and epubSpine and epubSpine[currentChapterIdx] then title = epubSpine[currentChapterIdx].title end
        updateBookProgress(filePath, title, currentChapterIdx, currentSentenceIdx, isBookFav)
    end
"""
content = content.replace('local controlsL = LinearLayout(service);', save_hook + '\n    local controlsL = LinearLayout(service);')

# Update favBtn click
fav_click = """
    favBtn.setOnClickListener(function()
        isBookFav = not isBookFav
        favBtn.setText(isBookFav and "⭐" or "☆")
        saveCurrentProgress()
        service.asyncSpeak(isBookFav and "تمت الإضافة للمفضلة" or "تمت الإزالة من المفضلة")
    end)

    libBtn.setOnClickListener(function()
        closeAction()
        showLibraryWindow()
    end)
"""
content = content.replace('playBtn.setOnClickListener(', fav_click + '\n    playBtn.setOnClickListener(')


# Update close action to save progress
close_action_replace = """
    local closeAction = function()
        saveCurrentProgress()
        stopReading()
        if docTts then pcall(function() docTts.shutdown() end) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        service.asyncSpeak("تم إغلاق المستند.")
    end
"""
content = re.sub(r'local closeAction = function\(\).*?end', close_action_replace, content, flags=re.DOTALL)

# Also hook progress save when list item is clicked or track finishes
content = content.replace('currentSentenceIdx = position + 1\n            updateProgress()', 'currentSentenceIdx = position + 1\n            updateProgress()\n            saveCurrentProgress()')
content = content.replace('currentSentenceIdx = math.max(1, currentSentenceIdx - 4)\n        updateProgress()', 'currentSentenceIdx = math.max(1, currentSentenceIdx - 4)\n        updateProgress()\n        saveCurrentProgress()')
content = content.replace('currentSentenceIdx = math.min(#sentencesList, currentSentenceIdx + 4)\n        updateProgress()', 'currentSentenceIdx = math.min(#sentencesList, currentSentenceIdx + 4)\n        updateProgress()\n        saveCurrentProgress()')
content = content.replace('currentSentenceIdx = math.max(1, math.floor((p / 100) * #sentencesList))\n                updateProgress()', 'currentSentenceIdx = math.max(1, math.floor((p / 100) * #sentencesList))\n                updateProgress()\n                saveCurrentProgress()')
content = content.replace('currentSentenceIdx = currentSentenceIdx + 1\n                                                    updateProgress()', 'currentSentenceIdx = currentSentenceIdx + 1\n                                                    updateProgress()\n                                                    saveCurrentProgress()')


with open('main.lua', 'w') as f:
    f.write(content)

print("Document Viewer enhanced with progress tracking and Library integration.")
