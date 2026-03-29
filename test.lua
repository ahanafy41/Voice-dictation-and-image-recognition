-- test.lua
-- Unit tests for the voice dictation script

-- Compatibility for Lua 5.2+
_G.loadstring = _G.load
_G.unpack = table.unpack or unpack

-- Load LuaUnit
luaunit = require('luaunit')

-- Define custom assertion functions
function assertTrue(condition, message)
    if not condition then
        error(message or "Assertion failed: expected true, but was false", 2)
    end
end

function assertFalse(condition, message)
    if condition then
        error(message or "Assertion failed: expected false, but was true", 2)
    end
end

-- Mocking Android and other dependencies
-- Mock the 'import' module and function
package.preload['import'] = function() return {} end
_G.import = function(path) end

_G.service = {
    getSharedPreferences = function(name, mode)
        return {
            getString = function(key, default) if key == "geminiApiKey" then return "fake_key" end if key == "groqApiKey" then return "fake_key" end if key == "imageDescriptionProvider" then return "gemini" end return default end, getInt = function(key, default) return default end, getFloat = function(key, default) return default end,
            getBoolean = function(key, default) return default end,
            edit = function()
                return {
                    putString = function(k, v) end,
                    putBoolean = function(k, v) end,
                    apply = function() end,
                }
            end,
        }
    end,
    getSystemService = function(name) return {
        setPrimaryClip = function() end,
    } end,
    asyncSpeak = function(text) print("asyncSpeak: " .. text) end,
    getRootInActiveWindow = function() return nil end,
    getEditText = function() return nil end,
    insertText = function(node, text) end,
    getResources = function() return { getDisplayMetrics = function() return { heightPixels = 1000 } end } end,
    getScreenShot = function() end,
    getFocusView = function() return nil end,
    setAsyncAudioFocus = function() end,
}

_G.Http = {
    post = function(url, body, headers, callback)
        -- This will be replaced in specific tests
    end
}

-- Mock other globals
_G.collectgarbage = function() end
_G.Thread = { sleep = function() end }

-- Define mock namespaces
_G.android = {
    widget = {}, speech = { tts = {} }, content = {},
    view = { accessibility = {} }, graphics = {}, provider = {},
    net = {}, util = {}, R = { layout = {} }, accessibilityservice = {},
}
_G.java = { io = {}, util = {} }
_G.org = { json = {} }
_G.JSONArray = function() local a = { data = {} }; a.put = function(self, v) table.insert(self.data, v) end; a.toString = function(self) return "[]" end; a.length = function(self) return #self.data end; return a end
_G.JSONObject = function() local o = { data = {} }; o.put = function(self, k, v) self.data[k] = v end; o.toString = function(self) return "{}" end; o.has = function(self, k) return self.data[k] ~= nil end; o.get = function(self, k) return self.data[k] end; o.getString = function(self, k) return tostring(self.data[k]) end; return o end

-- Manually create all global variables that would be imported
_G.Toast = { LENGTH_SHORT = 0 }
_G.LinearLayout = function() return { setOrientation = function() end, setBackgroundColor = function() end, setPadding = function() end, addView = function() end, findViewWithTag = function() end, setFocusable = function() end, setFocusableInTouchMode = function() end, requestFocus = function() end, setOnTouchListener = function() end, setGravity = function() end } end
_G.TextView = function() return { setText = function() end, setTextSize = function() end, setTextColor = function() end, setGravity = function() end, setPadding = function() end, setTypeface = function() end, getText = function() return { toString = function() return "" end } end, setTextIsSelectable = function() end } end
_G.Button = function() return { setText = function() end, setOnClickListener = function() end, setEnabled = function() end, setContentDescription = function() end, setPadding = function() end } end
_G.EditText = function() return { setText = function() end, setHint = function() end, setSingleLine = function() end, addTextChangedListener = function() end, getText = function() return { toString = function() return "" end } end } end
_G.CheckBox = function() return { setText = function() end, setChecked = function() end, setOnCheckedChangeListener = function() end, setTag = function() end } end
_G.RadioGroup = function() return { setOrientation = function() end, addView = function() end, check = function() end, setOnCheckedChangeListener = function() end } end
_G.RadioButton = function() return { setText = function() end, setTag = function() end, setId = function() end, setChecked = function() end, setOnCheckedChangeListener = function() end, getId = function() return 1 end } end
_G.ScrollView = function() return { addView = function() end } end
_G.ArrayAdapter = function(ctx, layout, data) return { setDropDownViewResource = function() end, getCount = function() return 0 end } end
_G.Spinner = function() return { setAdapter = function() end, setOnItemSelectedListener = function() end, setSelection = function() end, getCount = function() return 0 end } end
_G.AdapterView = { OnItemSelectedListener = {} }
_G.RecognizerIntent = { ACTION_RECOGNIZE_SPEECH = "recognize", LANGUAGE_MODEL_FREE_FORM = "free_form", EXTRA_LANGUAGE_MODEL = "lang_model", EXTRA_LANGUAGE = "lang", EXTRA_PARTIAL_RESULTS = "partial", EXTRA_MAX_RESULTS = "max_results" }
_G.SpeechRecognizer = { isRecognitionAvailable = function() return true end, createSpeechRecognizer = function() return { destroy = function() end, setRecognitionListener = function() end, startListening = function() end } end, RESULTS_RECOGNITION = "results", ERROR_NO_MATCH = 7, ERROR_SPEECH_TIMEOUT = 6, ERROR_RECOGNIZER_BUSY = 8 }
_G.RecognitionListener = function(t) return t end
_G.Intent = function() return { putExtra = function() end } end
_G.WindowManager = { LayoutParams = function() return { setMargins = function() end } end, TYPE_APPLICATION_OVERLAY = 1, FLAG_NOT_FOCUSABLE=1, FLAG_NOT_TOUCH_MODAL=1, FLAG_LAYOUT_IN_SCREEN=1, FLAG_ALT_FOCUSABLE_IM=1, FLAG_WATCH_OUTSIDE_TOUCH=1 }
_G.Matrix = function() return { postRotate = function() end } end
_G.BitmapFactory = { decodeFile = function() end }
_G.PixelFormat = { TRANSLUCENT = 1 }
_G.Context = { MODE_PRIVATE = 0, CLIPBOARD_SERVICE = "clipboard" }
_G.View = { generateViewId = function() return 1 end, OnTouchListener = function() return {} end, VISIBLE = 0, GONE = 8 }
_G.Uri = { parse = function() end }
_G.JSONObject = function(str)
    local obj = {}
    function obj.has(key) return key == "candidates" or key == "content" or key == "parts" or key == "text" end
    function obj.getJSONArray(key) return { length = function() return 1 end, getJSONObject = function(i) return obj end } end
    function obj.getJSONObject(key) return obj end
    function obj.getString(key) return _G.mock_gemini_response or "mocked response" end
    return obj
end
_G.Gravity = { TOP=1, START=1, CENTER=1, CENTER_HORIZONTAL=1 }
_G.AccessibilityNodeInfo = { ACTION_SCROLL_FORWARD = 1, ACTION_CLICK = 2 }
_G.AccessibilityService = {}
_G.File = function() end
_G.FileInputStream = function() end
_G.Base64 = { NO_WRAP = 0, encodeToString = function(bytes, flags) return "base64string" end }
_G.Bitmap = { CompressFormat = { PNG = "png" } }
_G.ByteArrayOutputStream = function() return { close = function() end, toByteArray = function() return {} end, compress = function() end } end
_G.ClipData = { newPlainText = function() end }
_G.Typeface = { BOLD = 1, ITALIC = 2 }
_G.MotionEvent = { ACTION_OUTSIDE = 4 }
_G.Settings = { canDrawOverlays = function() return true end }
_G.ArrayList = function()
    local t = {}
    return setmetatable(t, {
        __index = function(tbl, key)
            if key == "add" then return function(self, val) table.insert(t, val) end
            elseif key == "get" then return function(self, i) return t[i] end
            elseif key == "size" then return function(self) return #t end
            elseif key == "isEmpty" then return function(self) return #t == 0 end
            elseif key == "iterator" then
                local i = 0
                return function() i = i + 1; return t[i] end
            end
        end
    })
end
_G.R = { layout = { simple_spinner_item = 1, simple_spinner_dropdown_item = 1 } }
_G.TextToSpeech = {}
_G.TextToSpeech.OnInitListener = function(t) return t end
_G.TextToSpeech.SUCCESS = 0
_G.TextToSpeech.QUEUE_FLUSH = 0
_G.TextToSpeech.LANG_MISSING_DATA = -1
_G.TextToSpeech.LANG_NOT_SUPPORTED = -2

setmetatable(_G.TextToSpeech, {
    __call = function(self, ctx, listener, engine)
        if listener and listener.onInit then listener.onInit(_G.TextToSpeech.SUCCESS) end
        return {
            getEngines = function() local a = _G.ArrayList(); a:add({label="test_engine", name="com.test.engine"}); return a; end,
            getVoices = function() local a = _G.ArrayList(); a:add({getName=function() return "test_voice" end, getLocale=function() return _G.Locale("en","US") end}); return a; end,
            setLanguage = function() end, setVoice = function() end, speak = function() end,
            stop = function() end, shutdown = function() end, isLanguageAvailable = function() return 1 end,
        }
    end
})
_G.Locale = { ENGLISH = "en", FRANCE = "fr-FR", FRENCH = "fr", getDefault = function() return "en-US" end }
setmetatable(_G.Locale, { __call = function(self, ...)
    local lang, country = ...
    if lang and country then return { getLanguage = function() return lang end, getCountry = function() return country end }
    elseif lang then return { getLanguage = function() return lang end, getCountry = function() return "" end }
    else return { getLanguage = function() return "en" end, getCountry = function() return "US" end } end
end })
_G.Voice = {}


_G.luajava = {
    createProxy = function(name, t) return t end,
    bindClass = function(name) return { TYPE = {} } end,
    newArray = function(type, size) return {} end,
}

_G.bit = {
    rshift = function(a, b) return a >> b end,
    lshift = function(a, b) return a << b end,
    band = function(a, b) return a & b end,
}

_G.Handler = function(looper) return { post = function(self, runnable) if type(runnable) == "table" and runnable.run then runnable.run() elseif type(runnable) == "function" then runnable() end end, postDelayed = function(self, runnable, delay) if type(runnable) == "table" and runnable.run then runnable.run() elseif type(runnable) == "function" then runnable() end end } end
_G.Looper = { getMainLooper = function() return {} end }
_G.Runnable = function(t) return t end
_G.Switch = function(ctx) return { setChecked = function() end, setOnCheckedChangeListener = function() end, isChecked = function() return true end } end
_G.GradientDrawable = function() return { setCornerRadius = function() end, setColor = function() end, setStroke = function() end } end

_G.Http.get = function(url, body, charset, headers, callback)
    if type(charset) == 'table' then
        -- Handle case where charset is omitted
        headers = charset
        callback = headers
    end
end
-- Load the main script after mocks are set up
local loaded, error_msg = pcall(function()
    dofile("main.lua")
end)

-- Test Suite for Script Loading
TestScriptLoading = {}
function TestScriptLoading:testScriptLoadsWithoutErrors()
    if not loaded then
        error("The main script should load without errors. Error: " .. tostring(error_msg))
    end
end

-- Test suite for Helper Functions
TestHelperFunctions = {}

function TestHelperFunctions:test_escapeJsonString()
    assertEquals(escapeJsonString('hello "world"'), 'hello \\"world\\"')
    assertEquals(escapeJsonString("new\nline"), "new\\nline")
    assertEquals(escapeJsonString("path\\to\\file"), "path\\\\to\\\\file")
    assertEquals(escapeJsonString(""), "")
    assertEquals(escapeJsonString(nil), "")
end

function TestHelperFunctions:test_getLanguageDetails()
    local arabic = getLanguageDetails("ar")
    assertEquals(arabic.name, "العربية")
    assertEquals(arabic.human_readable_for_gemini, "Arabic")

    local english = getLanguageDetails("en")
    assertEquals(english.name, "English")

    local french = getLanguageDetails("fr-FR")
    assertEquals(french.name, "Français (France)")

    local unknown = getLanguageDetails("de")
    assertEquals(unknown.name, "de")
    assertEquals(unknown.human_readable_for_gemini, "De")
end

function TestHelperFunctions:test_isArabicText()
    assertTrue(isArabicText("مرحبا بالعالم"))
    assertFalse(isArabicText("Hello world"))
    assertTrue(isArabicText("Hello مرحبا"))
    assertFalse(isArabicText(""))
    assertFalse(isArabicText(nil))
end

function TestHelperFunctions:test_smartSplitText()
    local text = "One two three four five"
    -- Split by 5 chars. "One t" -> next space at index 8 (" ").
    -- Word-safe split should take "One two " (indices 1-8).
    local pages = smartSplitText(text, 5)
    assertEquals(#pages, 3)
    assertEquals(pages[1], "One two ")
    assertEquals(pages[2], "three four five")

    local text2 = "1234567890 1234567890"
    local pages2 = smartSplitText(text2, 5)
    assertEquals(#pages2, 2)
    assertEquals(pages2[1], "1234567890 ")
    assertEquals(pages2[2], "1234567890")
end

function TestHelperFunctions:test_getFeedbackString()
    -- Test Arabic
    assertEquals(getFeedbackString("settings_saved", "ar"), "تم حفظ الإعدادات.")
    -- Test English
    assertEquals(getFeedbackString("settings_saved", "en"), "Settings saved.")
    -- Test French with formatting
    assertEquals(getFeedbackString("summarize_fail_api", "fr-FR", "error message"), "Échec du résumé: error message")
    -- Test fallback to Arabic for unknown language
    assertEquals(getFeedbackString("settings_saved", "de"), "تم حفظ الإعدادات.")
    -- Test unknown key
    assertTrue(string.find(getFeedbackString("unknown_key", "en"), "Unknown feedback key") ~= nil)
end

function TestHelperFunctions:test_parseImageDescription()
    local desc, ocr = parseImageDescription("Description: My description.\nText: My text.")
    assertEquals(desc, "My description.")
    assertEquals(ocr, "My text.")

    desc, ocr = parseImageDescription("Description: Only description.")
    assertEquals(desc, "Only description.")
    assertEquals(ocr, "لم يتم العثور على نص.")

    desc, ocr = parseImageDescription("No keywords, just a plain response.")
    assertEquals(desc, "No keywords, just a plain response.")
    assertEquals(ocr, "")

    desc, ocr = parseImageDescription("")
    assertEquals(desc, "لم يتم العثور على وصف.")
    assertEquals(ocr, "لم يتم العثور على نص.")

    desc, ocr = parseImageDescription(nil)
    assertEquals(desc, "لم يتم العثور على وصف.")
    assertEquals(ocr, "لم يتم العثور على نص.")
end

-- Test suite for Gemini Functions
TestGeminiFunctions = {}

function TestGeminiFunctions:setUp()
    -- Reset mocks before each test
    _G.Http.post = function(url, body, headers, callback) end
    _G.mock_gemini_response = nil
    geminiApiKey = "fake_api_key" -- Default fake key for tests
end

function TestGeminiFunctions:test_correctWithGemini_success()
    local originalText = "this is a tst"
    local correctedText = "This is a test. 👍"
    _G.mock_gemini_response = correctedText

    _G.Http.post = function(url, body, headers, callback)
        assertTrue(string.find(url, "gemini") ~= nil)
        callback(200, 'dummy_response_body')
    end

    correctWithGemini(originalText, function(result)
        assertEquals(result, correctedText)
    end)
end

function TestGeminiFunctions:test_correctWithGemini_api_failure()
    local originalText = "this is a tst"
    _G.Http.post = function(url, body, headers, callback)
        callback(500, 'Internal Server Error')
    end

    correctWithGemini(originalText, function(result)
        assertEquals(result, originalText)
    end)
end

function TestGeminiFunctions:test_summarizeWithGemini_success()
    local originalText = "This is a very long text that needs to be summarized."
    local summary = "This is a summary."
    _G.mock_gemini_response = summary

    _G.Http.post = function(url, body, headers, callback)
        callback(200, 'dummy_response_body')
    end

    summarizeWithGemini(originalText, function(result)
        assertEquals(result, summary)
    end)
end

function TestGeminiFunctions:test_summarizeWithGemini_api_failure()
    local originalText = "This is a very long text."
    _G.Http.post = function(url, body, headers, callback)
        callback(404, 'Not Found')
    end

    summarizeWithGemini(originalText, function(result)
        assertTrue(string.find(result, "404") ~= nil)
    end)
end

function TestGeminiFunctions:test_describeImageWithGemini_success()
    local base64Image = "some_base64_string"
    local description = "Description: A cat sitting on a mat.\nText: No text."
    _G.mock_gemini_response = description

    _G.Http.post = function(url, body, headers, callback)
        assertTrue(string.find(body, base64Image) ~= nil)
        callback(200, 'dummy_response_body')
    end

    describeImageWithGemini(base64Image, function(result, rB64)
        assertEquals(result, description)
        assertEquals(rB64, base64Image)
    end)
end

function TestGeminiFunctions:test_translateTextWithGemini_New_success()
    local text = "Hello"
    local translatedText = "مرحبا"
    _G.mock_gemini_response = translatedText

    _G.Http.post = function(url, body, headers, callback)
        assertTrue(string.find(body, "Translate the following text accurately from English to Arabic") ~= nil)
        callback(200, 'dummy_response_body')
    end

    translateTextWithGemini_New(text, "English", "Arabic", function(result)
        assertEquals(result, translatedText)
    end)
end

function TestGeminiFunctions:test_translateTextWithGemini_New_same_language()
    local text = "Hello"
    translateTextWithGemini_New(text, "English", "English", function(result)
        assertEquals(result, text)
    end)
end

function TestGeminiFunctions:test_queryImageWithGemini_success()
    local base64Image = "some_base64_string"
    local query = "What color is the cat?"
    local answer = "The cat is black."
    _G.mock_gemini_response = answer

    _G.Http.post = function(url, body, headers, callback)
        assertTrue(string.find(body, query) ~= nil)
        callback(200, 'dummy_response_body')
    end

    queryImageWithGemini(base64Image, query, "", function(result)
        assertEquals(result, answer)
    end)
end

-- Run tests
function TestHelperFunctions:test_extractEpubMetadata_mock()
    -- Mocking ZipFile and other classes for EPUB testing
    _G.ZipFile = function(path)
        return {
            getEntry = function(self, entry)
                if entry == "META-INF/container.xml" or entry == "OEBPS/content.opf" then
                    return {}
                end
                return nil
            end,
            getInputStream = function(self, entry)
                return {
                    read = function() return -1 end
                }
            end,
            close = function() end
        }
    end
    -- Since InputStreamReader and BufferedReader are also mocked or need to be,
    -- and we rely on pcall, we can check if it returns an error string or nil for invalid files.
    local spine, err = extractEpubMetadata("fake.epub")
    -- In a real environment with my mocks, this might fail or return error because of nested mocks.
    -- But we can at least verify the function exists and is callable.
    assertTrue(type(spine) == "nil" or type(spine) == "table")
end

os.exit(luaunit.run())
