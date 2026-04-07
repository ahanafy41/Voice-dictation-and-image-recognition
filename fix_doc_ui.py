import re

with open("main.lua", "r") as f:
    content = f.read()

# We need to remove the controlsL (playbackL, progressL) from the top,
# and move them to the footerL.
# We also need to add Page Next/Prev buttons.
# Let's write a python script that carefully replaces the old UI code with the new bottom-bar Material Design UI.

# 1. Remove controlsL entirely. We will recreate it inside footerL.
# Wait, controlsL is created at line 2288: local controlsL = LinearLayout(service); controlsL.setOrientation(LinearLayout.VERTICAL); resultWindow.addView(controlsL)
# and then pageCtrlL, chapL, encL are added to it.
# We should keep controlsL for chapL, encL (top controls), but remove playbackL and progressL from it.

remove_pattern_1 = """    local playbackL = LinearLayout(service); playbackL.setOrientation(LinearLayout.HORIZONTAL); playbackL.setGravity(Gravity.CENTER); playbackL.setPadding(0,10,0,10)
    local prevSkipBtn = Button(service); prevSkipBtn.setText("⏪"); styleButton(prevSkipBtn, "secondary"); prevSkipBtn.setContentDescription("الجملة السابقة");
    local playBtn = Button(service); playBtn.setText("▶️"); styleButton(playBtn, "primary"); playBtn.setContentDescription("بدء أو إيقاف القراءة الصوتية");
    local nextSkipBtn = Button(service); nextSkipBtn.setText("⏩"); styleButton(nextSkipBtn, "secondary"); nextSkipBtn.setContentDescription("الجملة التالية");
    local ttsSetBtn = Button(service); ttsSetBtn.setText("⚙️"); styleButton(ttsSetBtn, "secondary"); ttsSetBtn.setContentDescription("إعدادات صوت القراءة");

    local btnParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); btnParams.setMargins(5,0,5,0)
    playbackL.addView(prevSkipBtn, btnParams); playbackL.addView(playBtn, btnParams); playbackL.addView(nextSkipBtn, btnParams); playbackL.addView(ttsSetBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))
    controlsL.addView(playbackL)

    local progressL = LinearLayout(service); progressL.setOrientation(LinearLayout.HORIZONTAL); progressL.setGravity(Gravity.CENTER_VERTICAL); progressL.setPadding(10,0,10,10)
    local seekBar = SeekBar(service); seekBar.setMax(100); local lpS = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); progressL.addView(seekBar, lpS)
    local progressTv = TextView(service); progressTv.setText("0%"); progressTv.setTextColor(0xFF64B5F6); progressTv.setPadding(10,0,0,0); progressL.addView(progressTv)
    controlsL.addView(progressL)"""
content = content.replace(remove_pattern_1, "")

# 2. Add the new bottom bar to footerL. We need to find where footerL is created.
# It's at:
# local footerL = LinearLayout(service); footerL.setOrientation(LinearLayout.VERTICAL)
# ... footerL.addView(qnaScroll)
# ... footerL.addView(footerBtnsL)

# Let's find this block:
footer_pattern = """    local footerL = LinearLayout(service); footerL.setOrientation(LinearLayout.VERTICAL)
    local footerParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    footerParams.topMargin = 10
    resultWindow.addView(footerL, footerParams)

    local qnaScroll = ScrollView(service)
    qnaScroll.setLayoutParams(LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 150))
    local qnaHistoryLayout = LinearLayout(service); qnaHistoryLayout.setOrientation(LinearLayout.VERTICAL); qnaScroll.addView(qnaHistoryLayout); footerL.addView(qnaScroll)

    local footerBtnsL = LinearLayout(service); footerBtnsL.setOrientation(LinearLayout.HORIZONTAL)
    local voiceQBtn = Button(service); voiceQBtn.setText("🎤 سؤال"); styleButton(voiceQBtn, "primary"); voiceQBtn.setContentDescription("سؤال المساعد صوتياً حول محتوى المستند");
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger"); closeBtn.setContentDescription("إغلاق نافذة عارض المستندات");

    local lpBtn = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
    lpBtn.setMargins(10, 5, 10, 5)
    footerBtnsL.addView(voiceQBtn, lpBtn)
    footerBtnsL.addView(closeBtn, lpBtn)
    footerL.addView(footerBtnsL)"""

new_footer_str = """    local footerL = LinearLayout(service); footerL.setOrientation(LinearLayout.VERTICAL)
    local footerParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    footerParams.topMargin = 10
    resultWindow.addView(footerL, footerParams)

    local qnaScroll = ScrollView(service)
    qnaScroll.setLayoutParams(LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 150))
    local qnaHistoryLayout = LinearLayout(service); qnaHistoryLayout.setOrientation(LinearLayout.VERTICAL); qnaScroll.addView(qnaHistoryLayout); footerL.addView(qnaScroll)

    -- New Material Design Bottom Bar controls
    local progressL = LinearLayout(service); progressL.setOrientation(LinearLayout.HORIZONTAL); progressL.setGravity(Gravity.CENTER_VERTICAL); progressL.setPadding(10,0,10,10)
    local seekBar = SeekBar(service); seekBar.setMax(100); local lpS = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); progressL.addView(seekBar, lpS)
    local progressTv = TextView(service); progressTv.setText("0%"); progressTv.setTextColor(0xFF64B5F6); progressTv.setPadding(10,0,0,0); progressL.addView(progressTv)
    footerL.addView(progressL)

    local playbackL = LinearLayout(service); playbackL.setOrientation(LinearLayout.HORIZONTAL); playbackL.setGravity(Gravity.CENTER); playbackL.setPadding(0,10,0,10)
    local prevPageBtn = Button(service); prevPageBtn.setText("⏮️"); styleButton(prevPageBtn, "secondary"); prevPageBtn.setContentDescription("الصفحة السابقة");
    local prevSkipBtn = Button(service); prevSkipBtn.setText("⏪"); styleButton(prevSkipBtn, "secondary"); prevSkipBtn.setContentDescription("الجملة السابقة");
    local playBtn = Button(service); playBtn.setText("▶️"); styleButton(playBtn, "primary"); playBtn.setContentDescription("بدء أو إيقاف القراءة الصوتية");
    local nextSkipBtn = Button(service); nextSkipBtn.setText("⏩"); styleButton(nextSkipBtn, "secondary"); nextSkipBtn.setContentDescription("الجملة التالية");
    local nextPageBtn = Button(service); nextPageBtn.setText("⏭️"); styleButton(nextPageBtn, "secondary"); nextPageBtn.setContentDescription("الصفحة التالية");

    local btnParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); btnParams.setMargins(5,0,5,0)
    playbackL.addView(prevPageBtn, btnParams); playbackL.addView(prevSkipBtn, btnParams); playbackL.addView(playBtn, btnParams); playbackL.addView(nextSkipBtn, btnParams); playbackL.addView(nextPageBtn, btnParams)
    footerL.addView(playbackL)

    local footerBtnsL = LinearLayout(service); footerBtnsL.setOrientation(LinearLayout.HORIZONTAL)
    local voiceQBtn = Button(service); voiceQBtn.setText("🎤 سؤال"); styleButton(voiceQBtn, "primary"); voiceQBtn.setContentDescription("سؤال المساعد صوتياً حول محتوى المستند");
    local ttsSetBtn = Button(service); ttsSetBtn.setText("⚙️ إعدادات"); styleButton(ttsSetBtn, "secondary"); ttsSetBtn.setContentDescription("إعدادات صوت القراءة");
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger"); closeBtn.setContentDescription("إغلاق تام للعارض");

    local lpBtn = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
    lpBtn.setMargins(5, 5, 5, 5)
    footerBtnsL.addView(voiceQBtn, lpBtn)
    footerBtnsL.addView(ttsSetBtn, lpBtn)
    footerBtnsL.addView(closeBtn, lpBtn)
    footerL.addView(footerBtnsL)"""
content = content.replace(footer_pattern, new_footer_str)

# 3. Add logic for prevPageBtn and nextPageBtn
# We need to find the old click listeners:
listeners_pattern = """    playBtn.setOnClickListener(function() if isPlaying then stopReading() else readCurrentSentence() end end)

    prevSkipBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        currentSentenceIdx = math.max(1, currentSentenceIdx - 4)
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)

    nextSkipBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        currentSentenceIdx = math.min(#sentencesList, currentSentenceIdx + 4)
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)"""

new_listeners_str = """    playBtn.setOnClickListener(function() if isPlaying then stopReading() else readCurrentSentence() end end)

    -- Calculate page boundaries for pagination
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
    end)

    prevSkipBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        currentSentenceIdx = math.max(1, currentSentenceIdx - 4)
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)

    nextSkipBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        currentSentenceIdx = math.min(#sentencesList, currentSentenceIdx + 4)
        updateProgress()
        saveCurrentProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)"""
content = content.replace(listeners_pattern, new_listeners_str)


with open("main.lua", "w") as f:
    f.write(content)
