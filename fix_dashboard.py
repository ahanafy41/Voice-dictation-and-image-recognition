import sys, re

with open('main.lua', 'r') as f:
    content = f.read()

dynamic_openMainWindow = r"""function openMainWindow()
    if mainWindowDialog then return end
    hideSettings()

    mainWindowDialog = LinearLayout(service)
    mainWindowDialog.setOrientation(LinearLayout.VERTICAL)
    mainWindowDialog.setBackgroundColor(0xFF000000)
    mainWindowDialog.setPadding(30, 30, 30, 30)

    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL)

    local titleTxt = TextView(service)
    titleTxt.setText("لوحة التحكم الذكية")
    titleTxt.setTextSize(26)
    titleTxt.setTypeface(nil, Typeface.BOLD)
    titleTxt.setTextColor(0xFFFFFFFF)
    titleTxt.setGravity(Gravity.CENTER)
    titleTxt.setPadding(0, 20, 0, 50)
    contentL.addView(titleTxt)

    local buttons = {
        assistant = function()
            local btn = Button(service); btn.setText("🤖 المساعد الشخصي")
            btn.setContentDescription("فتح المساعد الشخصي والبحث الذكي")
            styleButton(btn, "primary")
            btn.setOnClickListener(showPersonalAssistantWindow)
            return btn
        end,
        dictation = function()
            local btn = Button(service); btn.setText("🎙️ الإملاء والترجمة")
            btn.setContentDescription("فتح الإملاء الصوتي والترجمة")
            styleButton(btn, "primary")
            btn.setOnClickListener(function() hideMainWindow(); startVoiceRecognition(true) end)
            return btn
        end,
        reader = function()
            local btn = Button(service); btn.setText("📄 قارئ المستندات والفيديو")
            btn.setContentDescription("فتح قارئ الملفات والمستندات والفيديو")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function()
                hideMainWindow(); local paths = getStoragePaths(); local startPath = "/storage/emulated/0"
                if #paths > 0 then startPath = paths[1].path end
                openDocumentPickerWindow(startPath, function(selectedPath) loadDocumentAndShowViewer(selectedPath) end)
            end)
            return btn
        end,
        image = function()
            local btn = Button(service); btn.setText("🖼️ وصف الصور")
            btn.setContentDescription("التقاط الشاشة ووصف الصور")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function() hideMainWindow(); runImageDescription() end)
            return btn
        end,
        transcription = function()
            local btn = Button(service); btn.setText("📁 تحويل الصوت إلى نص")
            btn.setContentDescription("اختيار ملف صوتي وتحويله إلى نص")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function()
                hideMainWindow(); local paths = getStoragePaths(); local startPath = "/storage/emulated/0"
                if #paths > 0 then startPath = paths[1].path end
                openFilePickerWindow(startPath, function(selectedPath)
                    service.asyncSpeak("جاري الرفع والمعالجة..."); showResultWindow("نتيجة التحويل", "⏳ جاري الرفع والمعالجة...")
                    transcribeAudio(selectedPath, function(result, isDone)
                        showResultWindow("نتيجة التحويل", result); if isDone then service.asyncSpeak("اكتمل التحويل.") end
                    end)
                end)
            end)
            return btn
        end,
        settings = function()
            local btn = Button(service); btn.setText("⚙️ الإعدادات المتقدمة")
            btn.setContentDescription("تخصيص مفاتيح الربط واللغات والموديلات")
            styleButton(btn, "secondary")
            btn.setOnClickListener(function() hideMainWindow(); openSettings() end)
            return btn
        end
    }

    local orderStr = dashboardOrder or "assistant,dictation,reader,image,transcription,settings"
    for k in orderStr:gmatch("([^,]+)") do
        local key = k:gsub("^%s+", ""):gsub("%s+$", "")
        if buttons[key] then
            local b = buttons[key]()
            local lp = LinearLayout.LayoutParams(-1, -2)
            lp.topMargin = 20
            contentL.addView(b, lp)
        end
    end

    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(hideMainWindow)
    local closeParams = LinearLayout.LayoutParams(-1, -2); closeParams.topMargin = 40
    contentL.addView(closeBtn, closeParams)

    scrollV.addView(contentL); mainWindowDialog.addView(scrollV)
    local p = WindowManager.LayoutParams(-1, -2, WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY,
                                        WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN, -3)
    p.gravity = Gravity.CENTER
    pcall(function() wm.addView(mainWindowDialog, p) end)
end"""

# Replace the old static openMainWindow function
pattern = r"function openMainWindow\(\).*?pcall\(function\(\) wm\.addView\(mainWindowDialog, p\) end\)\s+end"
content = re.sub(pattern, dynamic_openMainWindow, content, flags=re.DOTALL)

with open('main.lua', 'w') as f:
    f.write(content)
