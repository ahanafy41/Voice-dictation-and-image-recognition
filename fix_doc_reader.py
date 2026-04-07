import re

with open("main.lua", "r") as f:
    content = f.read()

# Fix hide action to minimize instead of close completely
if "_G.globalHideDocumentViewer = function()" not in content:
    minimize_code = """
    _G.globalHideDocumentViewer = function()
        if resultWindow then
            pcall(function() wm.removeView(resultWindow) end)
            resultWindow = nil
            isDocumentReaderBackgrounded = true
        end
    end
"""
    content = content.replace("function showDocumentViewerWindow(", minimize_code + "\nfunction showDocumentViewerWindow(")

# Replace back button behavior to completely close instead of minimize, but let's add a minimize button or use Home for backgrounding.
# Actually, the user asked that Home backgrounds it, and a minimize button could be added. Let's make Back button close completely as expected, but add a minimize button next to close.
# Also when reopening the doc reader, check if it's backgrounded.
# Let's see the doc_reader button in openMainWindow.

doc_reader_str = """        doc_reader = function()
            local btn = Button(service); btn.setText("📚 المكتبة والقارئ")
            btn.setContentDescription("فتح مكتبة الكتب والمستندات")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function()
                hideMainWindow()
                if showLibraryWindow then showLibraryWindow() end
            end)
            return btn
        end,"""

new_doc_reader_str = """        doc_reader = function()
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
content = content.replace(doc_reader_str, new_doc_reader_str)

# Modify the start of showDocumentViewerWindow to save the path
content = content.replace("function showDocumentViewerWindow(filePath, fileUri, isWordLocal, initialText, epubSpine, savedProg)\n    if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end", "function showDocumentViewerWindow(filePath, fileUri, isWordLocal, initialText, epubSpine, savedProg)\n    globalDocViewerPath = filePath\n    isDocumentReaderBackgrounded = false\n    if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end")

# Update closeAction to clear global tracking
close_action_str = """    closeAction = function()
        saveCurrentProgress()
        if stopReading then stopReading() end
        if docTts then pcall(function() docTts.shutdown() end) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        service.asyncSpeak("تم إغلاق المستند.")
    end"""

new_close_action_str = """    closeAction = function()
        saveCurrentProgress()
        if stopReading then stopReading() end
        if docTts then pcall(function() docTts.shutdown() end) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        globalDocViewerPath = nil
        isDocumentReaderBackgrounded = false
        service.asyncSpeak("تم إغلاق المستند.")
    end"""
content = content.replace(close_action_str, new_close_action_str)

# Add a Minimize Button to the header
header_str = """    local fastCloseBtn = Button(service); fastCloseBtn.setText("❌"); styleButton(fastCloseBtn, "danger"); fastCloseBtn.setContentDescription("إغلاق سريع للنافذة");
    fastCloseBtn.setPadding(10,10,10,10)"""

new_header_str = """    local minBtn = Button(service); minBtn.setText("➖"); styleButton(minBtn, "secondary"); minBtn.setContentDescription("إخفاء للقراءة في الخلفية");
    minBtn.setPadding(10,10,10,10)
    local fastCloseBtn = Button(service); fastCloseBtn.setText("❌"); styleButton(fastCloseBtn, "danger"); fastCloseBtn.setContentDescription("إغلاق سريع للنافذة");
    fastCloseBtn.setPadding(10,10,10,10)"""
content = content.replace(header_str, new_header_str)

addView_str = """    headerL.addView(fastCloseBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))"""
new_addView_str = """    headerL.addView(minBtn, lpFav)
    headerL.addView(fastCloseBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))"""
content = content.replace(addView_str, new_addView_str)

# Add listener for minBtn
closeBtnListener_str = """    fastCloseBtn.setOnClickListener(function() closeAction() end)"""
new_closeBtnListener_str = """    minBtn.setOnClickListener(function() if _G.globalHideDocumentViewer then _G.globalHideDocumentViewer() end; service.asyncSpeak("الاستمرار في الخلفية") end)
    fastCloseBtn.setOnClickListener(function() closeAction() end)"""
content = content.replace(closeBtnListener_str, new_closeBtnListener_str)


with open("main.lua", "w") as f:
    f.write(content)
