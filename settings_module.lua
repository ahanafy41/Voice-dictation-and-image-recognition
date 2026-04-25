-- Settings Module for Voice Dictation & Image Recognition
-- Extracted to reduce main.lua size and improve performance on weak devices

function saveSettings()

    showFloatingSettingsButtonEnabled = showFloatingSettingsButtonEnabled or false

    continuousDictationEnabled = continuousDictationEnabled or false

    autoSpaceEnabled = autoSpaceEnabled or true

    geminiCorrectionEnabled = geminiCorrectionEnabled or false

    summarizeEnabled = summarizeEnabled or false

    imageDescriptionEnabled = imageDescriptionEnabled or false

    newTranslationFeatureEnabled = newTranslationFeatureEnabled or false

    local editor = prefs.edit()

    editor.putString("language", selectedLanguage or defaultSelectedLanguage)

    editor.putBoolean("continuousDictation", continuousDictationEnabled)

    editor.putBoolean("autoSpaceEnabled", autoSpaceEnabled)

    editor.putBoolean("geminiCorrectionEnabled", geminiCorrectionEnabled)

    editor.putString("geminiApiKey", geminiApiKey or "")

    editor.putString("groqApiKey", groqApiKey or "")

    editor.putString("witApiKey", witApiKey or "")

    editor.putString("tavilyApiKey", tavilyApiKey or "")

    editor.putString("geminiModelId", selectedGeminiModelId or defaultGeminiModelId)

    editor.putString("groqModelId", selectedGroqModelId or defaultGroqModelId)

    editor.putString("audioModelId", selectedAudioModelId or defaultAudioModelId)

    editor.putString("searchModelId", selectedSearchModelId or "compound-beta")

    editor.putString("dashboardOrder", dashboardOrder or "dictation,geminiLive,doc_reader,video_analyzer,image,transcription,settings")

    editor.putString("selectedDictationMode", selectedDictationMode or defaultDictationMode)

    editor.putBoolean("summarizeEnabled", summarizeEnabled)

    editor.putBoolean("imageDescriptionEnabled", imageDescriptionEnabled)

    editor.putString("screenshotMode", screenshotMode or "full")

    editor.putBoolean("autoPunctuation", autoPunctuationEnabled)

    editor.putBoolean("showFloatingSettingsButton", showFloatingSettingsButtonEnabled)

    editor.putBoolean("newTranslationFeatureEnabled", newTranslationFeatureEnabled)

    editor.putString("translateToLanguage", translateToLanguage or defaultTranslateTo)

    editor.putBoolean("startWithDictation", startWithDictation)

    editor.putBoolean("tashkeelEnabled", tashkeelEnabled or false)

    editor.putBoolean("profanityFilterEnabled", profanityFilterEnabled or false)

    editor.putBoolean("newLinePerSentenceEnabled", newLinePerSentenceEnabled or false)

    editor.putBoolean("convertNumbersEnabled", convertNumbersEnabled or false)

    editor.putString("geminiLiveSystemInstruction", geminiLiveSystemInstruction or "أنت مساعد صوتي ذكي. مهمتك الرد المباشر بصوتك فقط.")

    editor.putString("geminiLiveVoiceName", geminiLiveVoiceName or "Puck")

    editor.putBoolean("cleanExtraSpacesEnabled", cleanExtraSpacesEnabled or false)

    editor.putBoolean("forceDotAtEndEnabled", forceDotAtEndEnabled or false)

    editor.putBoolean("autoCommaEnabled", autoCommaEnabled or false)

    editor.putInt("aiCreativityLevel", aiCreativityLevel or 1)

    editor.putString("emojiMode", emojiMode or "none")

    editor.apply()

    local currentDictLangDetails = getLanguageDetails(selectedLanguage)

    service.asyncSpeak(getFeedbackString("settings_saved", currentDictLangDetails.code))

    if showFloatingSettingsButtonEnabled and not floatingSettingsBtn then createAndShowFloatingButton()

    elseif not showFloatingSettingsButtonEnabled and floatingSettingsBtn then removeFloatingButton() end

    hideSettings()

end

function hideSettings()

    if settingsDialog then local r = pcall(function() wm.removeView(settingsDialog) end); if r then settingsDialog = nil end end

end

function openAiSettingsWindow()

    if aiSettingsDialog then return end

    collectgarbage("collect")

    service.asyncSpeak("جاري تحميل إعدادات الذكاء الاصطناعي، يرجى الانتظار قليلاً...")

    aiSettingsDialog = LinearLayout(service)

    aiSettingsDialog.setOrientation(LinearLayout.VERTICAL)

    aiSettingsDialog.setBackgroundColor(0xFF121212)

    aiSettingsDialog.setPadding(35, 35, 35, 35)

    -- Shield to prevent touches during loading to avoid crashes

    local loadingShield = Button(service)

    loadingShield.setText("جاري التحميل... ⏳")

    loadingShield.setBackgroundColor(0xCC000000)

    loadingShield.setTextColor(0xFFFFFFFF)

    loadingShield.setLayoutParams(LinearLayout.LayoutParams(-1, -1))

    local scrollV = ScrollView(service)

    scrollV.setVisibility(View.GONE)

    local contentL = LinearLayout(service)

    contentL.setOrientation(LinearLayout.VERTICAL)

    contentL.setPadding(10, 10, 10, 10)

    scrollV.addView(contentL)

    aiSettingsDialog.addView(loadingShield)

    aiSettingsDialog.addView(scrollV)

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

    -- Initial variables for switches that need to be accessed in save logic

    local swCorr, swTash, swCont, swSpace, swPunc, swDot, swComma, swLine, swProf, swNum, swSpc

    local dmSpinner, dmIds

    local emSpinner, emIds

    local crSpinner, crIds

    local sections = {

        function() -- 1. Header

            local titleTxt = TextView(service)

            titleTxt.setText("إعدادات الإملاء والذكاء الاصطناعي 🧠")

            titleTxt.setTextSize(22)

            titleTxt.setTypeface(nil, Typeface.BOLD)

            titleTxt.setTextColor(0xFFFFFFFF)

            titleTxt.setGravity(Gravity.CENTER_HORIZONTAL)

            titleTxt.setPadding(0, 0, 0, 40)

            contentL.addView(titleTxt)

        end,

        function() -- 2. Dictation Features 1

            local dictationCard = createCard(contentL)

            addSectionHeader("مميزات الإملاء ⚡", dictationCard)

            swCorr = Switch(service); swCorr.setChecked(geminiCorrectionEnabled); swCorr.setOnCheckedChangeListener(function(_, c) geminiCorrectionEnabled=c end); createSettingRow("التصحيح الإملائي التلقائي", swCorr, dictationCard)

            swTash = Switch(service); swTash.setChecked(tashkeelEnabled); swTash.setOnCheckedChangeListener(function(_, c) tashkeelEnabled=c end); createSettingRow("التشكيل بالحركات", swTash, dictationCard)

            swCont = Switch(service); swCont.setChecked(continuousDictationEnabled); swCont.setOnCheckedChangeListener(function(_, c) continuousDictationEnabled=c end); createSettingRow("الإملاء المستمر", swCont, dictationCard)

            swSpace = Switch(service); swSpace.setChecked(autoSpaceEnabled); swSpace.setOnCheckedChangeListener(function(_, c) autoSpaceEnabled=c end); createSettingRow("إضافة مسافة تلقائية", swSpace, dictationCard)

        end,

        function() -- 3. Dictation Features 2

            local dictationCard = contentL.getChildAt(contentL.getChildCount()-1)

            swPunc = Switch(service); swPunc.setChecked(autoPunctuationEnabled); swPunc.setOnCheckedChangeListener(function(_, c) autoPunctuationEnabled=c end); createSettingRow("علامات الترقيم الذكية", swPunc, dictationCard)

            swDot = Switch(service); swDot.setChecked(forceDotAtEndEnabled); swDot.setOnCheckedChangeListener(function(_, c) forceDotAtEndEnabled=c end); createSettingRow("وضع نقطة (.) حتماً", swDot, dictationCard)

            swComma = Switch(service); swComma.setChecked(autoCommaEnabled); swComma.setOnCheckedChangeListener(function(_, c) autoCommaEnabled=c end); createSettingRow("وضع فاصلة (،)", swComma, dictationCard)

            swLine = Switch(service); swLine.setChecked(newLinePerSentenceEnabled); swLine.setOnCheckedChangeListener(function(_, c) newLinePerSentenceEnabled=c end); createSettingRow("سطر جديد لكل جملة", swLine, dictationCard)

        end,

        function() -- 4. Dictation Features 3

            local dictationCard = contentL.getChildAt(contentL.getChildCount()-1)

            swProf = Switch(service); swProf.setChecked(profanityFilterEnabled); swProf.setOnCheckedChangeListener(function(_, c) profanityFilterEnabled=c end); createSettingRow("حجب الكلمات البذيئة (***)", swProf, dictationCard)

            swNum = Switch(service); swNum.setChecked(convertNumbersEnabled); swNum.setOnCheckedChangeListener(function(_, c) convertNumbersEnabled=c end); createSettingRow("تحويل الأرقام لحروف", swNum, dictationCard)

            swSpc = Switch(service); swSpc.setChecked(cleanExtraSpacesEnabled); swSpc.setOnCheckedChangeListener(function(_, c) cleanExtraSpacesEnabled=c end); createSettingRow("تنظيف المسافات الزائدة", swSpc, dictationCard)

            dictationCard.addView(createLabel("وضع معالجة النص 🎭:"))

            local dmNames = ArrayList(); dmIds = {}

            for _, m in ipairs(dictationModes) do dmNames.add(m.name); table.insert(dmIds, m.id) end

            local dmAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, dmNames); dmAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            dmSpinner = Spinner(service); dmSpinner.setAdapter(dmAdapter)

            local currDmIdx = 0; for i, id in ipairs(dmIds) do if id == selectedDictationMode then currDmIdx = i-1 break end end

            dmSpinner.setSelection(currDmIdx); dmSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(p, v, pos, id) selectedDictationMode = dmIds[pos + 1] end }); dictationCard.addView(dmSpinner)

        end,

        function() -- 5. AI Creativity & Emojis

            local aiCard = createCard(contentL)

            addSectionHeader("إعدادات الذكاء المتقدمة 🤖", aiCard)

            aiCard.addView(createLabel("تخصيص وضع الإيموجي 🤩:"))

            local emNames = ArrayList(); emIds = {"none", "smart", "end", "per_word", "encrypt"}

            emNames.add("بدون إيموجي"); emNames.add("ذكي في السياق"); emNames.add("في آخر النص فقط"); emNames.add("بجوار كل كلمة"); emNames.add("تحويل الكلام لرموز (تشفير)")

            local emAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, emNames); emAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            emSpinner = Spinner(service); emSpinner.setAdapter(emAdapter)

            local currEmIdx = 0; for i, id in ipairs(emIds) do if id == emojiMode then currEmIdx = i-1 break end end

            emSpinner.setSelection(currEmIdx); emSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(p, v, pos, id) emojiMode = emIds[pos + 1] end }); aiCard.addView(emSpinner)

            aiCard.addView(createLabel("درجة إبداع الذكاء الاصطناعي ✨:"))

            local crNames = ArrayList(); crIds = {0, 1, 2}

            crNames.add("صارم جداً (ملتزم بالنص)"); crNames.add("طبيعي (متوازن)"); crNames.add("إبداعي (خيال واسع)")

            local crAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, crNames); crAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            crSpinner = Spinner(service); crSpinner.setAdapter(crAdapter); crSpinner.setSelection(aiCreativityLevel or 1)

            crSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(p, v, pos, id) aiCreativityLevel = crIds[pos + 1] end }); aiCard.addView(crSpinner)

        end,

        function() -- 6. Save Buttons

            local btnL = LinearLayout(service); btnL.setOrientation(LinearLayout.VERTICAL); btnL.setGravity(Gravity.CENTER); btnL.setPadding(0, 40, 0, 10)

            local saveBtn = Button(service); saveBtn.setText("💾 حفظ التغييرات"); styleButton(saveBtn, "primary")

            saveBtn.setOnClickListener(function()

                if dmSpinner and dmIds then selectedDictationMode = dmIds[dmSpinner.getSelectedItemPosition() + 1] end

                if swTash then tashkeelEnabled = swTash.isChecked() end

                if swProf then profanityFilterEnabled = swProf.isChecked() end

                if swLine then newLinePerSentenceEnabled = swLine.isChecked() end

                if swNum then convertNumbersEnabled = swNum.isChecked() end

                if swSpc then cleanExtraSpacesEnabled = swSpc.isChecked() end

                if swDot then forceDotAtEndEnabled = swDot.isChecked() end

                if swComma then autoCommaEnabled = swComma.isChecked() end

                if swCorr then geminiCorrectionEnabled = swCorr.isChecked() end

                if swCont then continuousDictationEnabled = swCont.isChecked() end

                if swSpace then autoSpaceEnabled = swSpace.isChecked() end

                saveSettings()

                if aiSettingsDialog then pcall(function() wm.removeView(aiSettingsDialog) end); aiSettingsDialog = nil end

                service.asyncSpeak("تم حفظ إعدادات الإملاء والذكاء الاصطناعي بنجاح.")

            end)

            btnL.addView(saveBtn)

            local closeBtn = Button(service); closeBtn.setText("❌ إلغاء"); styleButton(closeBtn, "danger")

            closeBtn.setOnClickListener(function() if aiSettingsDialog then pcall(function() wm.removeView(aiSettingsDialog) end); aiSettingsDialog = nil end end)

            local lpClose = LinearLayout.LayoutParams(-1, -2); lpClose.topMargin = 20; btnL.addView(closeBtn, lpClose); contentL.addView(btnL)

        end

    }

    local function addSectionsSequentially(index)

        if index > #sections then

            pcall(function() aiSettingsDialog.removeView(loadingShield) end)

            scrollV.setVisibility(View.VISIBLE)

            service.asyncSpeak("تم تحميل الإعدادات بنجاح.")

            collectgarbage("collect")

            return

        end

        -- Periodic memory cleanup

        if index % 2 == 0 then collectgarbage("collect") end

        local success, err = pcall(sections[index])
        collectgarbage('collect')

        if not success then print("Error in AI section " .. index .. ": " .. tostring(err)) end

        mainHandler.postDelayed(luajava.createProxy("java.lang.Runnable", {

            run = function() addSectionsSequentially(index + 1) end

        }), 650) -- Increased delay for Jieshuo compatibility

    end

    addSectionsSequentially(1)

    local p = WindowManager.LayoutParams()

    p.width = WindowManager.LayoutParams.MATCH_PARENT

    p.height = WindowManager.LayoutParams.MATCH_PARENT

    p.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY

    p.flags = WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN

    p.format = PixelFormat.TRANSLUCENT

    p.gravity = Gravity.CENTER

    pcall(function() wm.addView(aiSettingsDialog, p) end)

end

function openSettings()

    if settingsDialog then return end

    collectgarbage("collect")

    service.asyncSpeak("جاري فتح الإعدادات المتقدمة، يرجى عدم لمس الشاشة...")

    settingsDialog = LinearLayout(service)

    settingsDialog.setOrientation(LinearLayout.VERTICAL)

    settingsDialog.setBackgroundColor(0xFF121212)

    settingsDialog.setPadding(35,35,35,35)

    -- Shield to prevent interaction during heavy UI build

    local loadingShield = Button(service)

    loadingShield.setText("جاري تهيئة الإعدادات... ⏳")

    loadingShield.setBackgroundColor(0xEE121212)

    loadingShield.setTextColor(0xFF64B5F6)

    loadingShield.setLayoutParams(LinearLayout.LayoutParams(-1, -1))

    local scrollV = ScrollView(service)

    scrollV.setVisibility(View.GONE)

    local contentL = LinearLayout(service)

    contentL.setOrientation(LinearLayout.VERTICAL)

    contentL.setPadding(10,10,10,10)

    scrollV.addView(contentL)

    settingsDialog.addView(loadingShield)

    settingsDialog.addView(scrollV)

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

    -- Initial variables for save logic

    local groqApiKeyIn, gemApiKeyIn, witApiKeyIn, tavilyApiKeyIn

    local sections = {

        function() -- 1. Header

            local titleTxt = TextView(service)

            titleTxt.setText("الإعدادات المتقدمة ⚙️")

            titleTxt.setTextSize(24)

            titleTxt.setTypeface(nil, Typeface.BOLD)

            titleTxt.setTextColor(0xFFFFFFFF)

            titleTxt.setGravity(Gravity.CENTER_HORIZONTAL)

            titleTxt.setPadding(0,0,0,40)

            contentL.addView(titleTxt)

            local mainAiBtn = Button(service); mainAiBtn.setText("🧠 إعدادات الإملاء والذكاء الاصطناعي"); styleButton(mainAiBtn, "primary")

            mainAiBtn.setOnClickListener(function() openAiSettingsWindow() end)

            contentL.addView(mainAiBtn, LinearLayout.LayoutParams(-1, -2))

        end,

        function() -- 2. API Keys

            local apiCard = createCard(contentL)

            addSectionHeader("مفاتيح الربط (API Keys)", apiCard)

            apiCard.addView(createLabel("مفتاح Groq API:"))

            groqApiKeyIn = EditText(service); groqApiKeyIn.setText(groqApiKey or ""); styleEditText(groqApiKeyIn)

            groqApiKeyIn.addTextChangedListener{onTextChanged=function(s) groqApiKey=s and s.toString() or "" end}

            groqApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })

            apiCard.addView(groqApiKeyIn)

            apiCard.addView(createLabel("مفتاح Gemini API:"))

            gemApiKeyIn = EditText(service); gemApiKeyIn.setText(geminiApiKey or ""); styleEditText(gemApiKeyIn)

            gemApiKeyIn.addTextChangedListener{onTextChanged=function(s) geminiApiKey=s and s.toString() or "" end}

            gemApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })

            apiCard.addView(gemApiKeyIn)

            apiCard.addView(createLabel("مفتاح Wit.ai (Facebook) API:"))

            witApiKeyIn = EditText(service); witApiKeyIn.setText(witApiKey or ""); styleEditText(witApiKeyIn)

            witApiKeyIn.addTextChangedListener{onTextChanged=function(s) witApiKey=s and s.toString() or "" end}

            witApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })

            apiCard.addView(witApiKeyIn)

            apiCard.addView(createLabel("مفتاح Tavily Search API:"))

            tavilyApiKeyIn = EditText(service); tavilyApiKeyIn.setText(tavilyApiKey or ""); styleEditText(tavilyApiKeyIn)

            tavilyApiKeyIn.addTextChangedListener{onTextChanged=function(s) tavilyApiKey=s and s.toString() or "" end}

            tavilyApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })

            apiCard.addView(tavilyApiKeyIn)

        end,

        function() -- 3. Models

            local modelCard = createCard(contentL)

            modelCard.setTag("models_section")

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

            local grFetchBtn = Button(service); grFetchBtn.setText("🔄 تحديث قائمة Groq"); styleButton(grFetchBtn, "secondary"); grFetchBtn.setContentDescription("تحديث قائمة موديلات Groq من الإنترنت");

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

        end,

        function() -- 4. Gemini Live

            local liveCard = createCard(contentL)

            addSectionHeader("إعدادات البث المباشر (Gemini Live) 🎙️", liveCard)

            liveCard.addView(createLabel("التعليمات المخصصة للبث (System Instruction):"))

            local liveSysIn = EditText(service); liveSysIn.setText(geminiLiveSystemInstruction or ""); styleEditText(liveSysIn)

            liveSysIn.addTextChangedListener{onTextChanged=function(s) geminiLiveSystemInstruction=s and s.toString() or "" end}

            liveSysIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })

            liveCard.addView(liveSysIn)

            liveCard.addView(createLabel("صوت المساعد (Voice):"))

            local glvNames = ArrayList(); local glvIds = {}

            for _, v in ipairs(geminiLiveVoices) do glvNames.add(v.name); table.insert(glvIds, v.id) end

            local glvAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, glvNames); glvAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            local glvSpinner = Spinner(service); glvSpinner.setAdapter(glvAdapter)

            local currGlvIdx = -1; for i, id in ipairs(glvIds) do if id == geminiLiveVoiceName then currGlvIdx = i-1 break end end

            if currGlvIdx ~= -1 then glvSpinner.setSelection(currGlvIdx) else glvSpinner.setSelection(0) end

            glvSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) geminiLiveVoiceName = glvIds[position + 1] end })

            liveCard.addView(glvSpinner)

        end,

        function() -- 5. Search & Sort

            -- Find the model card robustly

            local modelCard

            for i=0, contentL.getChildCount()-1 do

                local child = contentL.getChildAt(i)

                if child.getTag() == "models_section" then modelCard = child break end

            end

            if not modelCard then modelCard = contentL.getChildAt(contentL.getChildCount()-1) end

            -- Add search spinner to existing model card

            modelCard.addView(createLabel("اختر محرك البحث (AI Search Model):"))

            local searchNames = ArrayList(); local searchIds = {}

            for _, m in ipairs(groqModels) do if m.id:match("compound") then searchNames.add(m.name); table.insert(searchIds, m.id) end end

            local searchAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, searchNames); searchAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            local searchSpinner = Spinner(service); searchSpinner.setAdapter(searchAdapter)

            local currSearchIdx = -1; for i, id in ipairs(searchIds) do if id == selectedSearchModelId then currSearchIdx = i-1 break end end

            if currSearchIdx ~= -1 then searchSpinner.setSelection(currSearchIdx) end

            searchSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedSearchModelId = searchIds[position + 1] end })

            modelCard.addView(searchSpinner)

            local sortCard = createCard(contentL)

            addSectionHeader("ترتيب اللوحة السريعة", sortCard)

            local openSortDialogBtn = Button(service); openSortDialogBtn.setText("تعديل ترتيب أزرار الواجهة الرئيسية"); styleButton(openSortDialogBtn, "primary")

            openSortDialogBtn.setOnClickListener(function()

                local builder = AlertDialog.Builder(service); builder.setTitle("ترتيب اللوحة السريعة")

                local scrollView = ScrollView(service); local sortContainer = LinearLayout(service); sortContainer.setOrientation(LinearLayout.VERTICAL); sortContainer.setPadding(30, 30, 30, 30); scrollView.addView(sortContainer); builder.setView(scrollView)

                local sortDialog = nil; local keyNames = { dictation = "الإملاء والترجمة", doc_reader = "المكتبة والقارئ", video_analyzer = "محلل الفيديو", image = "وصف الصور", transcription = "تفريغ الصوت", settings = "الإعدادات", geminiLive = "البث المباشر (Gemini Live)" }

                local function refreshSortUI()

                    sortContainer.removeAllViews(); local keys = {}

                    for k in dashboardOrder:gmatch("([^,]+)") do local cleanKey = k:gsub("^%s+", ""):gsub("%s+$", ""); if keyNames[cleanKey] then table.insert(keys, cleanKey) end end

                    for i, k in ipairs(keys) do

                        local row = LinearLayout(service); row.setGravity(Gravity.CENTER_VERTICAL); row.setPadding(0, 15, 0, 15)

                        local nameTv = TextView(service); nameTv.setText(keyNames[k] or k); nameTv.setTextColor(0xFF000000); nameTv.setTextSize(17); row.addView(nameTv, LinearLayout.LayoutParams(0, -2, 1.0))

                        if i > 1 then

                            local upBtn = Button(service); upBtn.setText("🔼"); styleButton(upBtn, "secondary"); upBtn.setPadding(10,10,10,10)

                            upBtn.setOnClickListener(function() table.remove(keys, i); table.insert(keys, i-1, k); dashboardOrder = table.concat(keys, ","); refreshSortUI() end); row.addView(upBtn)

                        end

                        if i < #keys then

                            local downBtn = Button(service); downBtn.setText("🔽"); styleButton(downBtn, "secondary"); downBtn.setPadding(10,10,10,10)

                            downBtn.setOnClickListener(function() table.remove(keys, i); table.insert(keys, i+1, k); dashboardOrder = table.concat(keys, ","); refreshSortUI() end); local dlp = LinearLayout.LayoutParams(-2, -2); dlp.leftMargin = 15; row.addView(downBtn, dlp)

                        end

                        sortContainer.addView(row)

                    end

                end

                refreshSortUI()

                builder.setPositiveButton("حفظ وإغلاق", function() local editor = prefs.edit(); editor.putString("dashboardOrder", dashboardOrder); editor.apply(); if sortDialog then sortDialog.dismiss() end end)

                sortDialog = builder.create(); sortDialog.getWindow().setType(WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY); sortDialog.show()

            end)

            sortCard.addView(openSortDialogBtn)

        end,

        function() -- 6. Voice

            local voiceCard = createCard(contentL)

            addSectionHeader("إعدادات الصوت والإملاء", voiceCard)

            voiceCard.addView(createLabel("لغة الإملاء الأساسية:"))

            local langNames = ArrayList(); local langIds = {}

            for _, l in ipairs(supportedLanguages) do langNames.add(l.name); table.insert(langIds, l.code) end

            local langAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, langNames); langAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            local langSpinner = Spinner(service); langSpinner.setAdapter(langAdapter)

            local currLangIdx = 0; for i, id in ipairs(langIds) do if id == selectedLanguage then currLangIdx = i-1 break end end

            langSpinner.setSelection(currLangIdx); langSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedLanguage = langIds[position + 1] end }); voiceCard.addView(langSpinner)

            local voiceDesc = TextView(service)

            voiceDesc.setText("جميع خيارات الإملاء المتطورة (مثل الوضع المصري، الفصحى، التشكيل، والإملاء المستمر) تم نقلها إلى نافذة إعدادات الذكاء الاصطناعي.")

            voiceDesc.setTextSize(14); voiceDesc.setTextColor(0xFFB0B0B0); voiceDesc.setPadding(10, 0, 10, 20)

            voiceCard.addView(voiceDesc)

            local goToAiBtn = Button(service); goToAiBtn.setText("⚙️ فتح إعدادات الإملاء والذكاء"); styleButton(goToAiBtn, "secondary")

            goToAiBtn.setContentDescription("فتح نافذة إعدادات الذكاء الاصطناعي والإملاء المتطورة")

            goToAiBtn.setOnClickListener(function() openAiSettingsWindow() end); voiceCard.addView(goToAiBtn)

        end,

        function() -- 7. Tools & AI

            local aiCard = createCard(contentL)

            addSectionHeader("الأدوات والذكاء الاصطناعي 🛠️", aiCard)

            local swTrans = Switch(service); swTrans.setChecked(newTranslationFeatureEnabled); swTrans.setOnCheckedChangeListener(function(_, c) newTranslationFeatureEnabled=c end)

            createSettingRow("الترجمة التلقائية والشاملة", swTrans, aiCard)

            aiCard.addView(createLabel("اللغة المترجم إليها (الهدف):"))

            local trLangNames = ArrayList(); local trLangIds = {}

            for _, l in ipairs(supportedLanguages) do trLangNames.add(l.name); table.insert(trLangIds, l.code) end

            local trLangAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, trLangNames); trLangAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            local trLangSpinner = Spinner(service); trLangSpinner.setAdapter(trLangAdapter)

            local currTrLangIdx = 0; for i, id in ipairs(trLangIds) do if id == translateToLanguage then currTrLangIdx = i-1 break end end

            trLangSpinner.setSelection(currTrLangIdx); trLangSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) translateToLanguage = trLangIds[position + 1] end }); aiCard.addView(trLangSpinner)

            local swSum = Switch(service); swSum.setChecked(summarizeEnabled); swSum.setOnCheckedChangeListener(function(_, c) summarizeEnabled=c end); createSettingRow("تلخيص النصوص التلقائي", swSum, aiCard)

            local switchImg = Switch(service); switchImg.setChecked(imageDescriptionEnabled); createSettingRow("وصف الصور والشاشة", switchImg, aiCard)

            local screenModeContainer = LinearLayout(service); screenModeContainer.setOrientation(LinearLayout.VERTICAL); screenModeContainer.setPadding(60, 0, 40, 20)

            local smNames = ArrayList(); smNames.add("كامل الشاشة"); smNames.add("العنصر المحدد")

            local smAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, smNames); smAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

            local smSpinner = Spinner(service); smSpinner.setAdapter(smAdapter); smSpinner.setSelection(screenshotMode == "focus" and 1 or 0)

            smSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(p, v, pos, id) screenshotMode = (pos == 1 and "focus" or "full") end }); screenModeContainer.addView(smSpinner); aiCard.addView(screenModeContainer)

            local function updateVisionVisibility(enabled) screenModeContainer.setVisibility(enabled and View.VISIBLE or View.GONE) end

            updateVisionVisibility(imageDescriptionEnabled); switchImg.setOnCheckedChangeListener(function(_, c) imageDescriptionEnabled = c; updateVisionVisibility(c) end)

        end,

        function() -- 8. UI & Save

            local uiCard = createCard(contentL)

            addSectionHeader("الواجهة والتحديثات", uiCard)

            local switchStart = Switch(service); switchStart.setChecked(startWithDictation); switchStart.setOnCheckedChangeListener(function(_, c) startWithDictation=c end); createSettingRow("بدء التطبيق بالإملاء", switchStart, uiCard)

            local switchFloat = Switch(service); switchFloat.setChecked(showFloatingSettingsButtonEnabled); switchFloat.setOnCheckedChangeListener(function(_, c) showFloatingSettingsButtonEnabled=c end); createSettingRow("الزر العائم", switchFloat, uiCard)

            local checkUpdateBtn = Button(service); checkUpdateBtn.setText("🔄 التحقق من وجود تحديثات"); styleButton(checkUpdateBtn, "secondary")

            checkUpdateBtn.setOnClickListener(function() checkForUpdates(false) end); uiCard.addView(checkUpdateBtn, LinearLayout.LayoutParams(-1, -2))

            local versionTv = TextView(service); versionTv.setText("الإصدار الحالي: " .. currentAppVersion); versionTv.setTextColor(0xFF888888); versionTv.setGravity(Gravity.CENTER); uiCard.addView(versionTv)

            local btnL = LinearLayout(service); btnL.setOrientation(LinearLayout.VERTICAL); btnL.setGravity(Gravity.CENTER); btnL.setPadding(0,40,0,10)

            local saveBtn = Button(service); saveBtn.setText("💾 حفظ وإغلاق"); styleButton(saveBtn, "primary")

            saveBtn.setContentDescription("حفظ جميع الإعدادات الحالية والعودة")

            saveBtn.setOnClickListener(function()

                if groqApiKeyIn then groqApiKey = groqApiKeyIn.getText().toString() end

                if gemApiKeyIn then geminiApiKey = gemApiKeyIn.getText().toString() end

                if witApiKeyIn then witApiKey = witApiKeyIn.getText().toString() end

                if tavilyApiKeyIn then tavilyApiKey = tavilyApiKeyIn.getText().toString() end

                saveSettings()

            end)

            btnL.addView(saveBtn)

            local closeBtn = Button(service); closeBtn.setText("❌ إلغاء"); styleButton(closeBtn, "danger")

            closeBtn.setContentDescription("إلغاء التغييرات وإغلاق الإعدادات")

            closeBtn.setOnClickListener(hideSettings); local lpClose = LinearLayout.LayoutParams(-1, -2); lpClose.topMargin=20; btnL.addView(closeBtn, lpClose)

            local backBtn = Button(service); backBtn.setText("⬅️ العودة للوحة التحكم"); styleButton(backBtn, "secondary")

            backBtn.setContentDescription("العودة إلى لوحة التحكم الرئيسية")

            backBtn.setOnClickListener(function() hideSettings(); openMainWindow() end); local lpBack = LinearLayout.LayoutParams(-1, -2); lpBack.topMargin=20; btnL.addView(backBtn, lpBack)

            contentL.addView(btnL)

        end

    }

    local function addSectionsSequentially(index)

        if index > #sections then

            pcall(function() settingsDialog.removeView(loadingShield) end)

            scrollV.setVisibility(View.VISIBLE)

            service.asyncSpeak("جاهز.")

            collectgarbage("collect")

            return

        end

        -- Enhanced memory stability

        collectgarbage("collect")

        local success, err = pcall(sections[index])
        collectgarbage('collect')

        if not success then print("Error in section " .. index .. ": " .. tostring(err)) end

        mainHandler.postDelayed(luajava.createProxy("java.lang.Runnable", {

            run = function() addSectionsSequentially(index + 1) end

        }), 700) -- Significant delay for low-end device stability

    end

    addSectionsSequentially(1)

    local p = WindowManager.LayoutParams()

    p.width = WindowManager.LayoutParams.MATCH_PARENT

    p.height = WindowManager.LayoutParams.MATCH_PARENT

    p.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY

    p.flags = WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN

    p.format = PixelFormat.TRANSLUCENT

    p.gravity = Gravity.CENTER

    pcall(function() wm.addView(settingsDialog, p) end)

end
