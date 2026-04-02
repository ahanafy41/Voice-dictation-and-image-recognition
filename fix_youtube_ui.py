import re

with open("main.lua", "r", encoding="utf-8") as f:
    code = f.read()

# 1. Add youtubeAudio to dashboardOrder default string (multiple places)
code = code.replace(
    'dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,reader,image,transcription,settings")',
    'dashboardOrder = prefs.getString("dashboardOrder", "assistant,dictation,geminiLive,youtubeAudio,reader,image,transcription,settings")'
)

code = code.replace(
    'editor.putString("dashboardOrder", dashboardOrder or "assistant,dictation,geminiLive,reader,image,transcription,settings")',
    'editor.putString("dashboardOrder", dashboardOrder or "assistant,dictation,geminiLive,youtubeAudio,reader,image,transcription,settings")'
)

code = code.replace(
    'local orderStr = dashboardOrder or "assistant,dictation,geminiLive,reader,image,transcription,settings"',
    'local orderStr = dashboardOrder or "assistant,dictation,geminiLive,youtubeAudio,reader,image,transcription,settings"'
)

code = code.replace(
    'if not dashboardOrder then dashboardOrder = "assistant,dictation,geminiLive,reader,image,transcription,settings" end',
    'if not dashboardOrder then dashboardOrder = "assistant,dictation,geminiLive,youtubeAudio,reader,image,transcription,settings" end'
)

# Also fix the check to append it if missing
check_gemini = """if not dashboardOrder:match("geminiLive") then
    dashboardOrder = dashboardOrder .. ",geminiLive"
end"""
check_youtube = """if not dashboardOrder:match("geminiLive") then
    dashboardOrder = dashboardOrder .. ",geminiLive"
end
if not dashboardOrder:match("youtubeAudio") then
    dashboardOrder = dashboardOrder .. ",youtubeAudio"
end"""
code = code.replace(check_gemini, check_youtube)


# 2. Add the button definition in openMainWindow
youtube_btn_str = """        geminiLive = function()
            local btn = Button(service); btn.setText("🎙️ البث المباشر (Gemini Live)")
            btn.setContentDescription("بدء بث صوتي مباشر مع المساعد الذكي")
            styleButton(btn, "primary")
            btn.setOnClickListener(function() hideMainWindow(); showGeminiLiveWindow() end)
            return btn
        end,
        youtubeAudio = function()
            local btn = Button(service); btn.setText("🎵 يوتيوب (صوت فقط)")
            btn.setContentDescription("فتح مشغل اليوتيوب الصوتي")
            styleButton(btn, "primary")
            btn.setOnClickListener(function() hideMainWindow(); showYoutubeAudioWindow() end)
            return btn
        end,"""
code = code.replace("""        geminiLive = function()
            local btn = Button(service); btn.setText("🎙️ البث المباشر (Gemini Live)")
            btn.setContentDescription("بدء بث صوتي مباشر مع المساعد الذكي")
            styleButton(btn, "primary")
            btn.setOnClickListener(function() hideMainWindow(); showGeminiLiveWindow() end)
            return btn
        end,""", youtube_btn_str)

# 3. Add to keyNames in settings
keynames_str = """        local keyNames = {
            assistant = "المساعد الشخصي",
            dictation = "الإملاء والترجمة",
            reader = "قارئ المستندات",
            image = "وصف الصور",
            transcription = "تفريغ الصوت",
            settings = "الإعدادات", geminiLive = "البث المباشر (Gemini Live)", youtubeAudio = "يوتيوب (صوت فقط)"
        }"""
code = code.replace("""        local keyNames = {
            assistant = "المساعد الشخصي",
            dictation = "الإملاء والترجمة",
            reader = "قارئ المستندات",
            image = "وصف الصور",
            transcription = "تفريغ الصوت",
            settings = "الإعدادات", geminiLive = "البث المباشر (Gemini Live)"
        }""", keynames_str)


# 4. Inject showYoutubeAudioWindow and hideYoutubeAudioWindow variables
# Let's find "local mainWindowDialog"
var_defs = """local transcriptionWindow
local imageDescWindow
local documentReaderWindow
local geminiLiveWindow
local youtubeAudioWindow"""
code = code.replace("""local transcriptionWindow
local imageDescWindow
local documentReaderWindow
local geminiLiveWindow""", var_defs)

# 5. Inject the UI functions and WebView logic
ui_functions = """
-- ==========================================
-- YouTube Audio Feature
-- ==========================================
local hiddenYoutubeWebView = nil

local function initHiddenYoutubeWebView()
    if hiddenYoutubeWebView then return end
    hiddenYoutubeWebView = WebView(service)

    local webSettings = hiddenYoutubeWebView.getSettings()
    webSettings.setJavaScriptEnabled(true)
    webSettings.setDomStorageEnabled(true)
    -- Important for background audio
    webSettings.setMediaPlaybackRequiresUserGesture(false)
    webSettings.setLoadsImagesAutomatically(false) -- save data

    hiddenYoutubeWebView.setWebChromeClient(luajava.createProxy("android.webkit.WebChromeClient", {
        onJsPrompt = function(view, url, message, defaultValue, result)
            local prefix = "youtube_results:"
            if message:sub(1, #prefix) == prefix then
                local jsonStr = message:sub(#prefix + 1)
                -- Process search results
                handleYoutubeSearchResults(jsonStr)
                result.confirm()
                return true
            end

            local prefixAudio = "youtube_audio_status:"
            if message:sub(1, #prefixAudio) == prefixAudio then
                local status = message:sub(#prefixAudio + 1)
                -- Could update UI based on play/pause status
                result.confirm()
                return true
            end

            return false
        end
    }))

    hiddenYoutubeWebView.setWebViewClient(luajava.createProxy("android.webkit.WebViewClient", {
        onPageFinished = function(view, url)
            -- Inject scripts to bypass background restrictions and lower quality
            local js = [[
                javascript:(function() {
                    // Prevent page visibility API from pausing video
                    Object.defineProperty(document, 'visibilityState', {
                        get: function() { return 'visible'; }
                    });
                    Object.defineProperty(document, 'hidden', {
                        get: function() { return false; }
                    });
                    document.dispatchEvent(new Event('visibilitychange'));

                    // Force low quality and play
                    var video = document.querySelector('video');
                    if(video) {
                        video.play();
                        // Try to click settings for 144p if needed, but standard mobile YT usually auto-adjusts or we rely on JS playback
                    }

                    // Periodically make sure it's playing if it pauses due to backgrounding
                    setInterval(function() {
                        var v = document.querySelector('video');
                        if (v && v.paused && v.currentTime > 0) {
                            v.play();
                        }
                    }, 2000);
                })();
            ]]
            view.evaluateJavascript(js, nil)
        end
    }))
end

local currentYoutubeResultsContainer = nil
local currentSearchStatusText = nil

function handleYoutubeSearchResults(jsonStr)
    if not currentYoutubeResultsContainer then return end

    -- Very basic JSON parse for array of objects {title, url, channel, duration}
    -- Since Lua string matching is limited for full JSON parsing, we will rely on a simple format from JS:
    -- TITLE|||URL|||CHANNEL|||DURATION---TITLE|||URL...

    local results = {}
    for item in string.gmatch(jsonStr, "([^%-%-%-]+)") do
        local parts = {}
        for p in string.gmatch(item, "([^|||]+)") do
            table.insert(parts, p)
        end
        if #parts >= 2 then
            table.insert(results, {title = parts[1], url = parts[2], channel = parts[3] or "", duration = parts[4] or ""})
        end
    end

    service.post(Runnable({
        run = function()
            currentYoutubeResultsContainer.removeAllViews()
            if #results == 0 then
                currentSearchStatusText.setText("لم يتم العثول على نتائج.")
                return
            end
            currentSearchStatusText.setText("نتائج البحث:")

            for i, res in ipairs(results) do
                local btn = Button(service)
                local btnText = res.title
                if res.channel and res.channel ~= "" then
                    btnText = btnText .. "\\nقناة: " .. res.channel
                end
                if res.duration and res.duration ~= "" then
                    btnText = btnText .. " | " .. res.duration
                end
                btn.setText(btnText)
                btn.setContentDescription("تشغيل فيديو: " .. res.title)
                styleButton(btn, "secondary")
                btn.setOnClickListener(function()
                    playYoutubeAudio(res.url)
                    Toast.makeText(service, "جاري تشغيل: " .. res.title, Toast.LENGTH_SHORT).show()
                end)
                currentYoutubeResultsContainer.addView(btn)

                -- Add separator
                local sep = View(service)
                local sepParams = LinearLayout_LayoutParams(ViewGroup_LayoutParams.MATCH_PARENT, 2)
                sepParams.setMargins(0, 10, 0, 10)
                sep.setLayoutParams(sepParams)
                sep.setBackgroundColor(0xFF333333)
                currentYoutubeResultsContainer.addView(sep)
            end
        end
    }))
end

function playYoutubeAudio(url)
    initHiddenYoutubeWebView()
    local fullUrl = url
    if not string.match(url, "^http") then
        fullUrl = "https://m.youtube.com" .. url
    end
    hiddenYoutubeWebView.loadUrl(fullUrl)
end

function pauseYoutubeAudio()
    if hiddenYoutubeWebView then
        local js = "javascript:(function() { var v = document.querySelector('video'); if(v) v.pause(); })();"
        hiddenYoutubeWebView.evaluateJavascript(js, nil)
    end
end

function resumeYoutubeAudio()
    if hiddenYoutubeWebView then
        local js = "javascript:(function() { var v = document.querySelector('video'); if(v) v.play(); })();"
        hiddenYoutubeWebView.evaluateJavascript(js, nil)
    end
end

function performYoutubeSearch(query)
    initHiddenYoutubeWebView()
    local encodedQuery = luajava.bindClass("java.net.URLEncoder").encode(query, "UTF-8")
    local searchUrl = "https://m.youtube.com/results?search_query=" .. encodedQuery

    if currentSearchStatusText then
        currentSearchStatusText.setText("جاري البحث...")
    end
    if currentYoutubeResultsContainer then
        currentYoutubeResultsContainer.removeAllViews()
    end

    -- Load search URL
    hiddenYoutubeWebView.loadUrl(searchUrl)

    -- Inject a script to scrape results after a delay
    service.postDelayed(Runnable({
        run = function()
            if hiddenYoutubeWebView then
                local js = [[
                    javascript:(function() {
                        var items = document.querySelectorAll('ytm-compact-video-renderer, ytm-video-with-context-renderer');
                        var results = [];
                        for(var i=0; i<Math.min(10, items.length); i++) {
                            var item = items[i];
                            var titleEl = item.querySelector('h4, .compact-media-item-headline');
                            var linkEl = item.querySelector('a');
                            var channelEl = item.querySelector('ytm-badge-and-byline-renderer span');

                            if (titleEl && linkEl) {
                                var title = titleEl.innerText.replace(/\|\|\|/g, "").replace(/---/g, "");
                                var url = linkEl.getAttribute('href');
                                var channel = channelEl ? channelEl.innerText.replace(/\|\|\|/g, "").replace(/---/g, "") : "";
                                results.push(title + "|||" + url + "|||" + channel + "|||");
                            }
                        }
                        var resStr = results.join("---");
                        prompt("youtube_results:" + resStr, "");
                    })();
                ]]
                hiddenYoutubeWebView.evaluateJavascript(js, nil)
            end
        end
    }), 4000) -- wait 4 seconds for results to load
end

function hideYoutubeAudioWindow()
    if youtubeAudioWindow then
        windowManager.removeView(youtubeAudioWindow)
        youtubeAudioWindow = nil
        currentYoutubeResultsContainer = nil
        currentSearchStatusText = nil
    end
end

function showYoutubeAudioWindow()
    if youtubeAudioWindow then return end

    youtubeAudioWindow = LinearLayout(service)
    youtubeAudioWindow.setOrientation(LinearLayout.VERTICAL)
    youtubeAudioWindow.setBackgroundColor(0xFF000000)
    youtubeAudioWindow.setPadding(30, 30, 30, 30)

    -- Header
    local headerL = LinearLayout(service)
    headerL.setOrientation(LinearLayout.HORIZONTAL)
    headerL.setGravity(Gravity.CENTER_VERTICAL)
    headerL.setPadding(0, 10, 0, 30)

    local titleTv = TextView(service)
    titleTv.setText("🎵 يوتيوب (صوت فقط)")
    titleTv.setTextSize(20)
    titleTv.setTypeface(nil, Typeface.BOLD)
    titleTv.setTextColor(0xFFFFFFFF)
    local tParams = LinearLayout_LayoutParams(0, ViewGroup_LayoutParams.WRAP_CONTENT, 1.0)
    titleTv.setLayoutParams(tParams)

    local closeBtn = Button(service)
    closeBtn.setText("❌ إغلاق")
    closeBtn.setContentDescription("إغلاق نافذة اليوتيوب")
    styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(function()
        hideYoutubeAudioWindow()
        showMainWindow()
    end)

    headerL.addView(titleTv)
    headerL.addView(closeBtn)
    youtubeAudioWindow.addView(headerL)

    -- Search Area
    local searchContainer = LinearLayout(service)
    searchContainer.setOrientation(LinearLayout.HORIZONTAL)
    searchContainer.setGravity(Gravity.CENTER_VERTICAL)

    local searchInput = EditText(service)
    searchInput.setHint("ابحث في يوتيوب...")
    searchInput.setTextColor(0xFFFFFFFF)
    searchInput.setHintTextColor(0xFFAAAAAA)
    searchInput.setTextSize(18)
    local sParams = LinearLayout_LayoutParams(0, ViewGroup_LayoutParams.WRAP_CONTENT, 1.0)
    searchInput.setLayoutParams(sParams)

    local searchBtn = Button(service)
    searchBtn.setText("🔍 بحث")
    searchBtn.setContentDescription("البحث عن الفيديوهات")
    styleButton(searchBtn, "primary")
    searchBtn.setOnClickListener(function()
        local q = searchInput.getText().toString()
        if q ~= "" then
            -- Hide keyboard
            local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE)
            imm.hideSoftInputFromWindow(searchInput.getWindowToken(), 0)
            performYoutubeSearch(q)
        end
    end)

    searchContainer.addView(searchInput)
    searchContainer.addView(searchBtn)
    youtubeAudioWindow.addView(searchContainer)

    -- Controls Area (Play/Pause)
    local controlsContainer = LinearLayout(service)
    controlsContainer.setOrientation(LinearLayout.HORIZONTAL)
    controlsContainer.setGravity(Gravity.CENTER)
    controlsContainer.setPadding(0, 20, 0, 20)

    local pauseBtn = Button(service)
    pauseBtn.setText("⏸️ إيقاف")
    styleButton(pauseBtn, "secondary")
    pauseBtn.setOnClickListener(function() pauseYoutubeAudio() end)

    local playBtn = Button(service)
    playBtn.setText("▶️ تشغيل")
    styleButton(playBtn, "secondary")
    playBtn.setOnClickListener(function() resumeYoutubeAudio() end)

    local spacerParams = LinearLayout_LayoutParams(20, 0)
    local spacer = View(service)
    spacer.setLayoutParams(spacerParams)

    controlsContainer.addView(playBtn)
    controlsContainer.addView(spacer)
    controlsContainer.addView(pauseBtn)
    youtubeAudioWindow.addView(controlsContainer)

    -- Results Area
    currentSearchStatusText = TextView(service)
    currentSearchStatusText.setText("قم بالبحث لظهور النتائج...")
    currentSearchStatusText.setTextColor(0xFFCCCCCC)
    currentSearchStatusText.setTextSize(16)
    currentSearchStatusText.setPadding(0, 20, 0, 20)
    youtubeAudioWindow.addView(currentSearchStatusText)

    local scrollV = ScrollView(service)
    local scrollParams = LinearLayout_LayoutParams(ViewGroup_LayoutParams.MATCH_PARENT, 0, 1.0)
    scrollV.setLayoutParams(scrollParams)

    currentYoutubeResultsContainer = LinearLayout(service)
    currentYoutubeResultsContainer.setOrientation(LinearLayout.VERTICAL)
    scrollV.addView(currentYoutubeResultsContainer)
    youtubeAudioWindow.addView(scrollV)

    local params = WindowManager_LayoutParams(
        WindowManager_LayoutParams.MATCH_PARENT,
        WindowManager_LayoutParams.MATCH_PARENT,
        WindowManager_LayoutParams.TYPE_ACCESSIBILITY_OVERLAY,
        WindowManager_LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager_LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,
        PixelFormat.TRANSLUCENT
    )
    windowManager.addView(youtubeAudioWindow, params)

    -- Request focus so keyboard can open
    searchInput.requestFocus()
end

"""

code = code.replace("function openMainWindow()", ui_functions + "\nfunction openMainWindow()")

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(code)
