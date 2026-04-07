import re

with open("main.lua", "r") as f:
    content = f.read()

# Fix 1: Background reading logic.
# Instead of `resultWindow = nil` and removing view, we can just hide it if possible, or keep `resultWindow` object.
# Actually, if we `wm.removeView`, the layout is detached but the object exists. We SHOULD NOT set `resultWindow = nil`.
# When restoring, we can just `wm.addView(resultWindow, winP)` instead of calling loadDocumentAndShowViewer again.
# Wait, let's look at `_G.globalHideDocumentViewer`.
hide_code = """    _G.globalHideDocumentViewer = function()
        if resultWindow then
            pcall(function() wm.removeView(resultWindow) end)
            resultWindow = nil
            isDocumentReaderBackgrounded = true
        end
    end"""

new_hide_code = """    _G.globalHideDocumentViewer = function()
        if resultWindow then
            pcall(function() wm.removeView(resultWindow) end)
            isDocumentReaderBackgrounded = true
            -- Do not set resultWindow = nil so we can restore it later
        end
    end"""
content = content.replace(hide_code, new_hide_code)

# We need to expose a restore function or just do it in the button.
# In openMainWindow, the doc_reader button does:
doc_reader_code = """        doc_reader = function()
            local btn = Button(service); btn.setText("📚 المكتبة والقارئ")
            btn.setContentDescription("فتح مكتبة الكتب والمستندات")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function()
                hideMainWindow()
                if isDocumentReaderBackgrounded and globalDocViewerPath then
                    -- Just reopen the viewer if it was backgrounded
                    loadDocumentAndShowViewer(globalDocViewerPath)
                    isDocumentReaderBackgrounded = false
                else
                    if showLibraryWindow then showLibraryWindow() end
                end
            end)
            return btn
        end,"""

new_doc_reader_code = """        doc_reader = function()
            local btn = Button(service); btn.setText("📚 المكتبة والقارئ")
            btn.setContentDescription("فتح مكتبة الكتب والمستندات")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function()
                hideMainWindow()
                if isDocumentReaderBackgrounded and resultWindow then
                    -- Just re-add the existing view to window manager
                    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
                    pcall(function() wm.addView(resultWindow, winP) end)
                    isDocumentReaderBackgrounded = false
                else
                    if showLibraryWindow then showLibraryWindow() end
                end
            end)
            return btn
        end,"""
content = content.replace(doc_reader_code, new_doc_reader_code)

# Fix 2: Pagination crash and performance.
# In `showDocumentViewerWindow`, we added `getPageStartSentenceIdx`.
# We should cache `pageStarts` when `sentencesList` is rebuilt, instead of recalculating on click.

rebuild_pattern = """    rebuildSentencesList = function()
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
    end"""

new_rebuild_pattern = """    local pageStartIndices = {}

    rebuildSentencesList = function()
        sentencesList = {}
        pageStartIndices = {}
        adapter.clear()
        local accumulator = 0
        for i, pageText in ipairs(pagesCache) do
            table.insert(pageStartIndices, accumulator + 1)
            local pageSentences = splitIntoSentences(pageText)
            for _, s in ipairs(pageSentences) do
                table.insert(sentencesList, s)
                adapter.add(s)
            end
            accumulator = accumulator + #pageSentences
        end
        if currentSentenceIdx > #sentencesList then currentSentenceIdx = 1 end
        if #sentencesList > 0 then
            listView.setItemChecked(currentSentenceIdx - 1, true)
            listView.setSelection(currentSentenceIdx - 1)
        end
        updateProgress()
    end"""
content = content.replace(rebuild_pattern, new_rebuild_pattern)

# Remove the old getPageStartSentenceIdx and update the click listeners
page_btn_pattern = """    -- Calculate page boundaries for pagination
    local function getPageStartSentenceIdx(currentPageText)
        if not pagesCache or #pagesCache == 0 then return 1 end
        -- Sentences are rebuilt from pagesCache. We need to find where each page starts in sentencesList.
        local startIdx = 1
        local currentPIdx = 1
        -- Find which page currentSentenceIdx belongs to
        local accumulator = 0
        local pageStarts = {}
        for pIdx, pText in ipairs(pagesCache) do
            table.insert(pageStarts, accumulator + 1)
            local pSents = splitIntoSentences(pText)
            accumulator = accumulator + #pSents
            if currentSentenceIdx > pageStarts[pIdx] and currentSentenceIdx <= accumulator then
                currentPIdx = pIdx
            end
        end
        return pageStarts, currentPIdx
    end

    prevPageBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        local pStarts, cPIdx = getPageStartSentenceIdx()
        if cPIdx > 1 then currentSentenceIdx = pStarts[cPIdx - 1] else currentSentenceIdx = 1 end
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)

    nextPageBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        local pStarts, cPIdx = getPageStartSentenceIdx()
        if cPIdx < #pagesCache then currentSentenceIdx = pStarts[cPIdx + 1] else currentSentenceIdx = #sentencesList end
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)"""

new_page_btn_pattern = """    local function getCurrentPageIndex()
        if not pageStartIndices or #pageStartIndices == 0 then return 1 end
        local cPIdx = 1
        for i = 1, #pageStartIndices do
            if currentSentenceIdx >= pageStartIndices[i] then cPIdx = i end
        end
        return cPIdx
    end

    prevPageBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        local cPIdx = getCurrentPageIndex()
        if cPIdx > 1 then currentSentenceIdx = pageStartIndices[cPIdx - 1] else currentSentenceIdx = 1 end
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)

    nextPageBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        local cPIdx = getCurrentPageIndex()
        if cPIdx < #pageStartIndices then currentSentenceIdx = pageStartIndices[cPIdx + 1] else currentSentenceIdx = #sentencesList end
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)"""
content = content.replace(page_btn_pattern, new_page_btn_pattern)

with open("main.lua", "w") as f:
    f.write(content)
