function openSettings()
    if settingsDialog then return end
    local currentDictLangDetails_settings = getLanguageDetails(selectedLanguage)

    settingsDialog = LinearLayout(service)
    settingsDialog.setOrientation(LinearLayout.VERTICAL)
    settingsDialog.setBackgroundColor(0xFF121212)
    settingsDialog.setPadding(35,35,35,35)

    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL)
    contentL.setPadding(10,10,10,10)

    local titleTxt = TextView(service)
    titleTxt.setText("الإعدادات المتقدمة ⚙️")
    titleTxt.setTextSize(24)
    titleTxt.setTypeface(nil, Typeface.BOLD)
    titleTxt.setTextColor(0xFFFFFFFF)
    titleTxt.setGravity(Gravity.CENTER_HORIZONTAL)
    titleTxt.setPadding(0,0,0,40)
    contentL.addView(titleTxt)

    local function testModelConnection(modelIdToTest)
        local prompt = "Test connection. Say OK."
        service.asyncSpeak("جاري اختبار الموديل...")
        makeAiRequest(prompt, nil, nil, modelIdToTest, function(result)
            local msg = ""
            if result:match("AI Request Failed") then
                if result:match("404") then msg = "خطأ 404: الموديل غير موجود."
                elseif result:match("429") then msg = "خطأ 429: تجاوزت حد الاستخدام."
                elseif result:match("401") then msg = "خطأ 401: مفتاح غير صالح."
                else msg = "فشل الاتصال: " .. result end
            else msg = "✅ الموديل يعمل بنجاح!" end
            service.asyncSpeak(msg)
            showResultWindow("اختبار الموديل", msg .. "\n\n" .. result)
        end)
    end

    local function addSectionHeader(text, parent)
        local header = TextView(service)
        header.setText(text)
        header.setTextSize(18)
        header.setTypeface(nil, Typeface.BOLD)
        header.setTextColor(0xFF64B5F6)
        header.setPadding(0, 10, 0, 25)
        parent.addView(header)
    end

    local function createLabel(text)
        local lbl = TextView(service)
        lbl.setText(text)
        lbl.setTextSize(15)
        lbl.setTextColor(0xFFB0B0B0)
        lbl.setPadding(0, 15, 0, 10)
        return lbl
    end

    -- SECTION: API Keys
    local apiCard = createCard(contentL)
    addSectionHeader("مفاتيح الربط (API Keys)", apiCard)

    apiCard.addView(createLabel("مفتاح Groq API:"))
    local groqApiKeyIn = EditText(service)
    groqApiKeyIn.setText(groqApiKey or "")
    styleEditText(groqApiKeyIn)
    groqApiKeyIn.addTextChangedListener{onTextChanged=function(s) groqApiKey=s and s.toString() or "" end}
    groqApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })
    apiCard.addView(groqApiKeyIn)

    apiCard.addView(createLabel("مفتاح Gemini API:"))
    local gemApiKeyIn = EditText(service)
    gemApiKeyIn.setText(geminiApiKey or "")
    styleEditText(gemApiKeyIn)
    gemApiKeyIn.addTextChangedListener{onTextChanged=function(s) geminiApiKey=s and s.toString() or "" end}
    gemApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })
    apiCard.addView(gemApiKeyIn)

    apiCard.addView(createLabel("مفتاح Wit.ai (Facebook) API:"))
    local witApiKeyIn = EditText(service)
    witApiKeyIn.setText(witApiKey or "")
    styleEditText(witApiKeyIn)
    witApiKeyIn.addTextChangedListener{onTextChanged=function(s) witApiKey=s and s.toString() or "" end}
    witApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })
    apiCard.addView(witApiKeyIn)

    -- SECTION: Model Selection
    local modelCard = createCard(contentL)
    addSectionHeader("اختيار النماذج (Models)", modelCard)

    modelCard.addView(createLabel("اختر موديل تفريغ الصوت (Transcription):"))
    local audNames = ArrayList(); local audIds = {}
    for _, m in ipairs(audioModels) do audNames.add(m.name); table.insert(audIds, m.id) end
    local audAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, audNames); audAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local audSpinner = Spinner(service); audSpinner.setAdapter(audAdapter)
    local currAudIdx = -1; for i, id in ipairs(audIds) do if id == selectedAudioModelId then currAudIdx = i-1 break end end
    if currAudIdx ~= -1 then audSpinner.setSelection(currAudIdx) end
    audSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedAudioModelId = audIds[position + 1] end })
    modelCard.addView(audSpinner)

    modelCard.addView(createLabel("اختر موديل Groq (Text AI):"))
    local grNames = ArrayList(); local grIds = {}
    local foundGr = false; for _, m in ipairs(groqModels) do if m.id == selectedGroqModelId then foundGr = true break end end
    if not foundGr and selectedGroqModelId ~= "" then grNames.add(selectedGroqModelId); table.insert(grIds, selectedGroqModelId) end
    for _, m in ipairs(groqModels) do grNames.add(m.name); table.insert(grIds, m.id) end
    local grAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, grNames); grAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local grSpinner = Spinner(service); grSpinner.setAdapter(grAdapter)
    local currGrIdx = -1; for i, id in ipairs(grIds) do if id == selectedGroqModelId then currGrIdx = i-1 break end end
    if currGrIdx ~= -1 then grSpinner.setSelection(currGrIdx) end
    grSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedGroqModelId = grIds[position + 1] end })
    modelCard.addView(grSpinner)

    local grFetchBtn = Button(service); grFetchBtn.setText("🔄 تحديث قائمة Groq"); styleButton(grFetchBtn, "secondary")
    grFetchBtn.setOnClickListener(function() fetchGroqModels(function() hideSettings(); openMainWindow() end) end)
    modelCard.addView(grFetchBtn)

    modelCard.addView(createLabel("اختر موديل Gemini (Vision/PDF):"))
    local gemNames = ArrayList(); local gemIds = {}
    for _, m in ipairs(geminiModels) do gemNames.add(m.name); table.insert(gemIds, m.id) end
    local gemAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, gemNames); gemAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local gemSpinner = Spinner(service); gemSpinner.setAdapter(gemAdapter)
    local currGemIdx = -1; for i, id in ipairs(gemIds) do if id == selectedGeminiModelId then currGemIdx = i-1 break end end
    if currGemIdx ~= -1 then gemSpinner.setSelection(currGemIdx) end
    gemSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedGeminiModelId = gemIds[position + 1] end })
    modelCard.addView(gemSpinner)

    modelCard.addView(createLabel("اختر محرك البحث (AI Search Model):"))
    local searchNames = ArrayList(); local searchIds = {}
    -- Only show compound models for search
    for _, m in ipairs(groqModels) do
        if m.id:match("compound") then
            searchNames.add(m.name); table.insert(searchIds, m.id)
        end
    end
    local searchAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, searchNames); searchAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local searchSpinner = Spinner(service); searchSpinner.setAdapter(searchAdapter)
    local currSearchIdx = -1; for i, id in ipairs(searchIds) do if id == selectedSearchModelId then currSearchIdx = i-1 break end end
    if currSearchIdx ~= -1 then searchSpinner.setSelection(currSearchIdx) end
    searchSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedSearchModelId = searchIds[position + 1] end })
    modelCard.addView(searchSpinner)

        local sortCard = createCard(contentL)
    addSectionHeader("ترتيب اللوحة السريعة", sortCard)

    local sortContainer = LinearLayout(service)
    sortContainer.setOrientation(LinearLayout.VERTICAL)
    sortCard.addView(sortContainer)

    local function refreshSortUI()
        sortContainer.removeAllViews()
        local keys = {}
        if not dashboardOrder then dashboardOrder = "assistant,dictation,reader,image,transcription,settings" end
        for k in dashboardOrder:gmatch("([^,]+)") do
            keys[#keys + 1] = k:gsub("^%s+", ""):gsub("%s+$", "")
        end

        local keyNames = {
            assistant = "المساعد الشخصي",
            dictation = "الإملاء والترجمة",
            reader = "قارئ المستندات",
            image = "وصف الصور",
            transcription = "تفريغ الصوت",
            settings = "الإعدادات"
        }

        for i, k in ipairs(keys) do
            local row = LinearLayout(service)
            row.setGravity(Gravity.CENTER_VERTICAL)
            row.setPadding(0, 15, 0, 15)

            local nameTv = TextView(service)
            nameTv.setText(keyNames[k] or k)
            nameTv.setTextColor(0xFFFFFFFF)
            nameTv.setTextSize(17)
            local lp = LinearLayout.LayoutParams(0, -2, 1.0)
            row.addView(nameTv, lp)

            if i > 1 then
                local upBtn = Button(service); upBtn.setText("🔼"); styleButton(upBtn, "secondary")
                upBtn.setContentDescription("نقل " .. (keyNames[k] or k) .. " للأعلى")
                upBtn.setPadding(10, 10, 10, 10)
                upBtn.setOnClickListener(function()
                    keys[i], keys[i-1] = keys[i-1], keys[i]
                    dashboardOrder = table.concat(keys, ",")
                    service.asyncSpeak("تم نقل " .. (keyNames[k] or k) .. " للأعلى")
                    refreshSortUI()
                end)
                row.addView(upBtn)
            end

            if i < #keys then
                local downBtn = Button(service); downBtn.setText("🔽"); styleButton(downBtn, "secondary")
                downBtn.setContentDescription("نقل " .. (keyNames[k] or k) .. " للأسفل")
                downBtn.setPadding(10, 10, 10, 10)
                downBtn.setOnClickListener(function()
                    keys[i], keys[i+1] = keys[i+1], keys[i]
                    dashboardOrder = table.concat(keys, ",")
                    service.asyncSpeak("تم نقل " .. (keyNames[k] or k) .. " للأسفل")
                    refreshSortUI()
                end)
                local dlp = LinearLayout.LayoutParams(-2, -2)
                dlp.leftMargin = 15
                row.addView(downBtn, dlp)
            end
            sortContainer.addView(row)
        end
    end
    refreshSortUI()
        sortContainer.removeAllViews()
        local keys = {}
        if not dashboardOrder then dashboardOrder = "assistant,dictation,reader,image,transcription,settings" end
        for k in dashboardOrder:gmatch("([^,]+)") do
            keys[#keys + 1] = k:gsub("^%s+", ""):gsub("%s+$", "")
        end

        local keyNames = {
            assistant = "🤖 المساعد",
            dictation = "🎙️ الإملاء",
            reader = "📄 القارئ",
            image = "🖼️ الصور",
            transcription = "📁 التفريغ",
            settings = "⚙️ الإعدادات"
        }

        for i, k in ipairs(keys) do
            local row = LinearLayout(service)
            row.setGravity(Gravity.CENTER_VERTICAL)
            row.setPadding(0, 10, 0, 10)

            local nameTv = TextView(service)
            nameTv.setText(keyNames[k] or k)
            nameTv.setTextColor(0xFFFFFFFF)
            nameTv.setTextSize(16)
            local lp = LinearLayout.LayoutParams(0, -2, 1.0)
            row.addView(nameTv, lp)

            if i > 1 then
                local upBtn = Button(service); upBtn.setText("🔼"); styleButton(upBtn, "secondary")
                upBtn.setPadding(5, 5, 5, 5)
                upBtn.setOnClickListener(function()
                    keys[i], keys[i-1] = keys[i-1], keys[i]
                    dashboardOrder = table.concat(keys, ",")
                    refreshSortUI()
                end)
                row.addView(upBtn)
            end

            if i < #keys then
                local downBtn = Button(service); downBtn.setText("🔽"); styleButton(downBtn, "secondary")
                downBtn.setPadding(5, 5, 5, 5)
                downBtn.setOnClickListener(function()
                    keys[i], keys[i+1] = keys[i+1], keys[i]
                    dashboardOrder = table.concat(keys, ",")
                    refreshSortUI()
                end)
                local dlp = LinearLayout.LayoutParams(-2, -2)
                dlp.leftMargin = 10
                row.addView(downBtn, dlp)
            end
            sortContainer.addView(row)
        end
    end
    refreshSortUI()

    -- SECTION: Voice & Language
    local voiceCard = createCard(contentL)
    addSectionHeader("إعدادات الصوت", voiceCard)

    local switchCont = Switch(service); switchCont.setChecked(continuousDictationEnabled); switchCont.setOnCheckedChangeListener(function(_, c) continuousDictationEnabled=c end)
    createSettingRow("الإملاء المستمر", switchCont, voiceCard)

    local switchSpace = Switch(service); switchSpace.setChecked(autoSpaceEnabled); switchSpace.setOnCheckedChangeListener(function(_, c) autoSpaceEnabled=c end)
    createSettingRow("مسافة تلقائية", switchSpace, voiceCard)

    -- SECTION: Smart Processing
    local aiCard = createCard(contentL)
    addSectionHeader("الذكاء الاصطناعي", aiCard)

    local switchTrans = Switch(service); switchTrans.setChecked(newTranslationFeatureEnabled); switchTrans.setOnCheckedChangeListener(function(_, c) newTranslationFeatureEnabled=c end)
    createSettingRow("الترجمة التلقائية", switchTrans, aiCard)

    local switchCorr = Switch(service); switchCorr.setChecked(geminiCorrectionEnabled); switchCorr.setOnCheckedChangeListener(function(_, c) geminiCorrectionEnabled=c end)
    createSettingRow("تصحيح + إيموجي (قديم)", switchCorr, aiCard)

    aiCard.addView(createLabel("اختر وضع الإملاء الذكي الجديد:"))
    local dmNames = ArrayList(); local dmIds = {}
    for _, m in ipairs(dictationModes) do dmNames.add(m.name); table.insert(dmIds, m.id) end
    local dmAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, dmNames); dmAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local dmSpinner = Spinner(service); dmSpinner.setAdapter(dmAdapter)
    local currDmIdx = -1; for i, id in ipairs(dmIds) do if id == selectedDictationMode then currDmIdx = i-1 break end end
    if currDmIdx ~= -1 then dmSpinner.setSelection(currDmIdx) end
    dmSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedDictationMode = dmIds[position + 1] end })
    aiCard.addView(dmSpinner)

    -- SECTION: Tools
    local toolsCard = createCard(contentL)
    addSectionHeader("الأدوات", toolsCard)

    local switchSum = Switch(service); switchSum.setChecked(summarizeEnabled); switchSum.setOnCheckedChangeListener(function(_, c) summarizeEnabled=c end)
    createSettingRow("تلخيص النصوص", switchSum, toolsCard)

    local switchImg = Switch(service); switchImg.setChecked(imageDescriptionEnabled)
    createSettingRow("وصف الصور", switchImg, toolsCard)

    -- Screenshot Mode Spinner (dependent on Image Description)
    local screenModeContainer = LinearLayout(service)
    screenModeContainer.setOrientation(LinearLayout.VERTICAL)
    screenModeContainer.setPadding(60, 0, 40, 20)

    screenModeContainer.addView(createLabel("نطاق التقاط الوصف:"))
    local smNames = ArrayList(); local smIds = {"full", "focus"}
    smNames.add("كامل الشاشة"); smNames.add("العنصر المحدد")

    local smAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, smNames)
    smAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local smSpinner = Spinner(service)
    smSpinner.setAdapter(smAdapter)

    local currSmIdx = 0
    if screenshotMode == "focus" then currSmIdx = 1 end
    smSpinner.setSelection(currSmIdx)

    smSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
        onItemSelected = function(parent, view, position, id)
            screenshotMode = smIds[position + 1]
        end
    })
    screenModeContainer.addView(smSpinner)
    toolsCard.addView(screenModeContainer)
    local providerContainer = LinearLayout(service)
    providerContainer.setOrientation(LinearLayout.VERTICAL)
    providerContainer.setPadding(60, 0, 40, 10)
    providerContainer.addView(createLabel("مزود خدمة وصف الصور:"))
    local provNames = ArrayList(); local provIds = {"gemini", "groq"}
    provNames.add("Google Gemini"); provNames.add("Groq Cloud (مجاني)")
    local provAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, provNames); provAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local provSpinner = Spinner(service); provSpinner.setAdapter(provAdapter)
    local currProvIdx = 0; if imageDescriptionProvider == "groq" then currProvIdx = 1 end
    provSpinner.setSelection(currProvIdx)
    providerContainer.addView(provSpinner)
    toolsCard.addView(providerContainer)

    local groqVisionModelContainer = LinearLayout(service)
    groqVisionModelContainer.setOrientation(LinearLayout.VERTICAL)
    groqVisionModelContainer.setPadding(60, 0, 40, 10)
    groqVisionModelContainer.addView(createLabel("موديل Groq للصور:"))
    local grvNames = ArrayList(); local grvIds = {}
    for _, m in ipairs(groqVisionModels) do grvNames.add(m.name); table.insert(grvIds, m.id) end
    local grvAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, grvNames); grvAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local grvSpinner = Spinner(service); grvSpinner.setAdapter(grvAdapter)
    local currGrvIdx = 0; for i, id in ipairs(grvIds) do if id == selectedGroqVisionModelId then currGrvIdx = i-1 break end end
    grvSpinner.setSelection(currGrvIdx)
    grvSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedGroqVisionModelId = grvIds[position + 1] end })
    groqVisionModelContainer.addView(grvSpinner)
    toolsCard.addView(groqVisionModelContainer)

    local function updateVisionVisibility(enabled)
        if enabled then
            providerContainer.setVisibility(View.VISIBLE)
            screenModeContainer.setVisibility(View.VISIBLE)
            if imageDescriptionProvider == "groq" then
                groqVisionModelContainer.setVisibility(View.VISIBLE)
            else
                groqVisionModelContainer.setVisibility(View.GONE)
            end
        else
            providerContainer.setVisibility(View.GONE)
            screenModeContainer.setVisibility(View.GONE)
            groqVisionModelContainer.setVisibility(View.GONE)
        end
    end

    provSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
        onItemSelected = function(parent, view, position, id)
            imageDescriptionProvider = provIds[position + 1]
            updateVisionVisibility(imageDescriptionEnabled)
        end
    })

    updateVisionVisibility(imageDescriptionEnabled)

    switchImg.setOnCheckedChangeListener(function(_, c)
        imageDescriptionEnabled = c
        updateVisionVisibility(c)
    end)

    local uiCard = createCard(contentL)
    addSectionHeader("الواجهة", uiCard)
    local switchStart = Switch(service); switchStart.setChecked(startWithDictation); switchStart.setOnCheckedChangeListener(function(_, c) startWithDictation=c end)
    createSettingRow("بدء التطبيق بالإملاء", switchStart, uiCard)


    local switchFloat = Switch(service); switchFloat.setChecked(showFloatingSettingsButtonEnabled); switchFloat.setOnCheckedChangeListener(function(_, c) showFloatingSettingsButtonEnabled=c end)
    createSettingRow("الزر العائم", switchFloat, uiCard)

    local btnL = LinearLayout(service); btnL.setOrientation(LinearLayout.VERTICAL); btnL.setGravity(Gravity.CENTER); btnL.setPadding(0,40,0,10)
    local saveBtn = Button(service); saveBtn.setText("💾 حفظ وإغلاق"); styleButton(saveBtn, "primary");
    saveBtn.setOnClickListener(function()
        groqApiKey = groqApiKeyIn.getText().toString()
        geminiApiKey = gemApiKeyIn.getText().toString()
        witApiKey = witApiKeyIn.getText().toString()
        saveSettings()
    end)
    btnL.addView(saveBtn)
    local closeBtn = Button(service); closeBtn.setText("❌ إلغاء"); styleButton(closeBtn, "danger"); closeBtn.setOnClickListener(hideSettings); local lpClose = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT); lpClose.topMargin=20; btnL.addView(closeBtn, lpClose)
    contentL.addView(btnL)
    local backBtn = Button(service); backBtn.setText("⬅️ العودة للوحة التحكم"); styleButton(backBtn, "secondary");
    backBtn.setOnClickListener(function() hideSettings(); openMainWindow() end);
    local lpBack = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT); lpBack.topMargin=20; btnL.addView(backBtn, lpBack)


    scrollV.addView(contentL); settingsDialog.addView(scrollV)
    local p=WindowManager.LayoutParams(); p.width=WindowManager.LayoutParams.MATCH_PARENT; p.height=WindowManager.LayoutParams.WRAP_CONTENT; p.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; p.flags=WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; p.format=PixelFormat.TRANSLUCENT; p.gravity=Gravity.CENTER
    pcall(function() wm.addView(settingsDialog,p) end)
end
