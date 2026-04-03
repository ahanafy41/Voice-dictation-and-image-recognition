import re

with open("main.lua", "r") as f:
    content = f.read()

# 1. Update WebView settings in showVideoEditorWindow
settings_pattern = r'(settings\.setJavaScriptEnabled\(true\)\n\s*settings\.setDomStorageEnabled\(true\)\n\s*settings\.setMediaPlaybackRequiresUserGesture\(false\))'
settings_replacement = r'\1\n    settings.setAllowFileAccessFromFileURLs(true)\n    settings.setAllowUniversalAccessFromFileURLs(true)'
content = re.sub(settings_pattern, settings_replacement, content)

# 2. Update WebChromeClient to handle onJsPrompt for file picking and API calls
webchrome_pattern = r'(local webChromeClient = luajava\.override\(WebChromeClient, \{\n\s*onPermissionRequest = function\(super, request\)\n\s*request\.grant\(request\.getResources\(\)\)\n\s*end,\n\s*onConsoleMessage = function\(super, consoleMessage\)\n\s*print\("JS Console: " \.\. consoleMessage\.message\(\)\)\n\s*return true\n\s*end\n\s*\}\))'

webchrome_replacement = """local webChromeClient = luajava.override(WebChromeClient, {
        onPermissionRequest = function(super, request)
            request.grant(request.getResources())
        end,
        onConsoleMessage = function(super, consoleMessage)
            print("JS Console: " .. consoleMessage.message())
            return true
        end,
        onJsPrompt = function(super, view, url, message, defaultValue, result)
            if message == "PICK_FILE" then
                -- Open Lua custom file picker
                local paths = getStoragePaths()
                local startPath = "/storage/emulated/0"
                if #paths > 0 then startPath = paths[1].path end

                local function anyFileFilter(fname) return true end

                showUniversalFilePicker("اختر ملف (فيديو، صورة، صوت) 📁", startPath, anyFileFilter, function(selectedPath)
                    -- Pass back the selected file path to JS
                    local escapedPath = escapeJsonString(selectedPath)
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function()
                            view.evaluateJavascript("window.onFileSelectedNative('" .. escapedPath .. "', '" .. defaultValue .. "');", nil)
                        end
                    }))
                end)
                result.confirm("Handled")
                return true
            elseif message == "GENERATE_SCENES" then
                -- Handle Gemini API call natively to avoid CORS
                local prompt = defaultValue
                local systemPrompt = "أنت مخرج وكاتب. قم بتقسيم الموضوع إلى مشاهد متسلسلة بصيغة JSON فقط: [ { \\"scene_number\\": 1, \\"narration\\": \\"نص\\", \\"visual_description\\": \\"وصف دقيق\\" } ]"

                makeAiRequest(prompt, systemPrompt, nil, nil, function(aiResult)
                    local escapedResult = escapeJsonString(aiResult)
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function()
                            view.evaluateJavascript("window.onScenesGeneratedNative('" .. escapedResult .. "');", nil)
                        end
                    }))
                end)
                result.confirm("Handled")
                return true
            end
            return super.onJsPrompt(view, url, message, defaultValue, result)
        end
    })"""
content = re.sub(webchrome_pattern, webchrome_replacement, content)

with open("main.lua", "w") as f:
    f.write(content)
