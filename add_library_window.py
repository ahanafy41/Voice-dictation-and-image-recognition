import re

with open('main.lua', 'r') as f:
    content = f.read()

library_window_code = """
-- ### Library Window Implementation ###
local libraryWindowDialog = nil

function showLibraryWindow()
    if libraryWindowDialog then return end

    -- Refresh data before showing
    loadLibraryData()

    libraryWindowDialog = LinearLayout(service)
    libraryWindowDialog.setOrientation(LinearLayout.VERTICAL)
    libraryWindowDialog.setBackgroundColor(0xFF121212)
    libraryWindowDialog.setPadding(20, 20, 20, 20)

    -- Allow window to receive key events (like the Back button)
    libraryWindowDialog.setFocusableInTouchMode(true)
    libraryWindowDialog.requestFocus()
    libraryWindowDialog.setOnKeyListener(View.OnKeyListener{
        onKey = function(v, keyCode, event)
            if event.getAction() == android.view.KeyEvent.ACTION_UP and keyCode == android.view.KeyEvent.KEYCODE_BACK then
                if libraryWindowDialog then
                    pcall(function() wm.removeView(libraryWindowDialog) end)
                    libraryWindowDialog = nil
                end
                return true
            end
            return false
        end
    })

    -- Header
    local headerL = LinearLayout(service)
    headerL.setOrientation(LinearLayout.HORIZONTAL)
    headerL.setGravity(Gravity.CENTER_VERTICAL)
    headerL.setPadding(0, 10, 0, 20)

    local titleTv = TextView(service)
    titleTv.setText("📚 مكتبتي")
    titleTv.setTextSize(24)
    titleTv.setTypeface(nil, Typeface.BOLD)
    titleTv.setTextColor(0xFFFFFFFF)
    local titleLp = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
    headerL.addView(titleTv, titleLp)

    local closeBtn = Button(service)
    closeBtn.setText("❌ إغلاق")
    styleButton(closeBtn, "danger")
    closeBtn.setContentDescription("العودة للوحة التحكم الرئيسية")
    closeBtn.setOnClickListener(function()
        if libraryWindowDialog then
            pcall(function() wm.removeView(libraryWindowDialog) end)
            libraryWindowDialog = nil
        end
    end)
    headerL.addView(closeBtn)
    libraryWindowDialog.addView(headerL)

    -- Scrollable Content
    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL)
    scrollV.addView(contentL)
    libraryWindowDialog.addView(scrollV, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1.0))

    -- Add New Book Button
    local newBookBtn = Button(service)
    newBookBtn.setText("➕ فتح ملف كتاب جديد (PDF, Word, TXT, EPUB)")
    styleButton(newBookBtn, "primary")
    newBookBtn.setContentDescription("فتح مدير الملفات لاختيار كتاب جديد لقراءته")
    local newBookLp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    newBookLp.setMargins(0, 0, 0, 30)
    contentL.addView(newBookBtn, newBookLp)

    newBookBtn.setOnClickListener(function()
        if libraryWindowDialog then pcall(function() wm.removeView(libraryWindowDialog) end); libraryWindowDialog = nil end
        local paths = getStoragePaths(); local startPath = "/storage/emulated/0"
        if #paths > 0 then startPath = paths[1].path end

        -- Override document picker to only filter books
        local function bookFilter(fname)
            return fname:match("%.pdf$") or fname:match("%.docx$") or fname:match("%.txt$") or fname:match("%.epub$")
        end
        showUniversalFilePicker("اختر كتاباً 📚", startPath, bookFilter, function(selectedPath)
            loadDocumentAndShowViewer(selectedPath)
        end)
    end)

    -- Helper to create book items
    local function createBookItem(book, isFavSection)
        local card = LinearLayout(service)
        card.setOrientation(LinearLayout.VERTICAL)
        local bg = GradientDrawable()
        bg.setColor(0xFF1E1E1E)
        bg.setCornerRadius(15)
        card.setBackgroundDrawable(bg)
        local cardLp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        cardLp.setMargins(0, 0, 0, 15)
        card.setLayoutParams(cardLp)
        card.setPadding(20, 20, 20, 20)

        local titleRow = LinearLayout(service)
        titleRow.setOrientation(LinearLayout.HORIZONTAL)
        titleRow.setGravity(Gravity.CENTER_VERTICAL)

        local bTitle = TextView(service)
        bTitle.setText((book.isFav and "⭐ " or "📄 ") .. book.title)
        bTitle.setTextColor(0xFFE0E0E0)
        bTitle.setTextSize(18)
        bTitle.setTypeface(nil, Typeface.BOLD)
        local bTitleLp = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
        titleRow.addView(bTitle, bTitleLp)

        card.addView(titleRow)

        local infoRow = LinearLayout(service)
        infoRow.setOrientation(LinearLayout.HORIZONTAL)
        infoRow.setPadding(0, 10, 0, 10)

        local bProgress = TextView(service)
        bProgress.setText("📍 توقفت عند: الفصل/الصفحة " .. (book.chapterIdx or 1) .. " - الجملة " .. (book.sentenceIdx or 1))
        bProgress.setTextColor(0xFF888888)
        bProgress.setTextSize(14)
        infoRow.addView(bProgress, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0))

        card.addView(infoRow)

        local actionRow = LinearLayout(service)
        actionRow.setOrientation(LinearLayout.HORIZONTAL)

        local openBtn = Button(service)
        openBtn.setText("📖 استكمال القراءة")
        styleButton(openBtn, "secondary")
        local btnLp = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
        btnLp.rightMargin = 10
        actionRow.addView(openBtn, btnLp)

        local delBtn = Button(service)
        delBtn.setText("🗑️")
        styleButton(delBtn, "danger")
        actionRow.addView(delBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))

        card.addView(actionRow)

        openBtn.setOnClickListener(function()
            if libraryWindowDialog then pcall(function() wm.removeView(libraryWindowDialog) end); libraryWindowDialog = nil end
            loadDocumentAndShowViewer(book.path)
        end)

        delBtn.setOnClickListener(function()
            removeBookFromLibrary(book.path)
            if libraryWindowDialog then pcall(function() wm.removeView(libraryWindowDialog) end); libraryWindowDialog = nil end
            showLibraryWindow() -- refresh
        end)

        return card
    end

    -- Separate into Favorites and Recent
    local favBooks = {}
    local recentBooks = {}

    -- Sort by lastReadTime descending
    table.sort(libraryData, function(a, b)
        return (a.lastReadTime or 0) > (b.lastReadTime or 0)
    end)

    for _, book in ipairs(libraryData) do
        if book.isFav then table.insert(favBooks, book) else table.insert(recentBooks, book) end
    end

    -- Favorites Section
    if #favBooks > 0 then
        local favHeader = TextView(service)
        favHeader.setText("⭐ الكتب المفضلة")
        favHeader.setTextColor(0xFFFFD700)
        favHeader.setTextSize(18)
        favHeader.setTypeface(nil, Typeface.BOLD)
        favHeader.setPadding(0, 10, 0, 15)
        contentL.addView(favHeader)

        for _, b in ipairs(favBooks) do
            contentL.addView(createBookItem(b, true))
        end
    end

    -- Recent Books Section
    if #recentBooks > 0 then
        local recHeader = TextView(service)
        recHeader.setText("🕒 آخر ما قرأت")
        recHeader.setTextColor(0xFF64B5F6)
        recHeader.setTextSize(18)
        recHeader.setTypeface(nil, Typeface.BOLD)
        recHeader.setPadding(0, 20, 0, 15)
        contentL.addView(recHeader)

        for _, b in ipairs(recentBooks) do
            contentL.addView(createBookItem(b, false))
        end
    end

    if #favBooks == 0 and #recentBooks == 0 then
        local emptyTv = TextView(service)
        emptyTv.setText("المكتبة فارغة. افتح ملفاً جديداً للبدء.")
        emptyTv.setTextColor(0xFF888888)
        emptyTv.setGravity(Gravity.CENTER)
        emptyTv.setPadding(0, 50, 0, 0)
        contentL.addView(emptyTv)
    end

    local winP = WindowManager.LayoutParams()
    winP.width = WindowManager.LayoutParams.MATCH_PARENT
    winP.height = WindowManager.LayoutParams.MATCH_PARENT -- Make it full screen
    winP.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY
    winP.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL -- allow back key
    winP.format = PixelFormat.TRANSLUCENT
    winP.gravity = Gravity.CENTER
    pcall(function() wm.addView(libraryWindowDialog, winP) end)
end
"""

# Insert right before openMainWindow
insertion_pattern = r"(local mainWindowDialog = nil\n\nfunction hideMainWindow\(\))"

match = re.search(insertion_pattern, content)
if match:
    new_content = content[:match.start()] + library_window_code + "\n\n" + content[match.start():]
    with open('main.lua', 'w') as f:
        f.write(new_content)
    print("Library window implementation added.")
else:
    print("Could not find insertion point.")
