import re

with open("main.lua", "r") as f:
    content = f.read()

# 1. Update version logic to extract update message
version_logic_pattern = """    Http.get(versionUrl, nil, "UTF-8", nil, function(code, body)
        if code == 200 and body then
            local newVersionStr = body:match("^%s*([%d%.]+)")
            local newVersion = tonumber(newVersionStr)"""

new_version_logic = """    Http.get(versionUrl, nil, "UTF-8", nil, function(code, body)
        if code == 200 and body then
            local newVersionStr = body:match("^%s*([%d%.]+)")
            local newVersion = tonumber(newVersionStr)

            -- Extract "What's new" message if any (everything after the first line)
            local updateMessage = body:match("^%s*[%d%.]+%s*[\\r\\n]+(.*)")
            if not updateMessage or updateMessage:match("^%s*$") then
                updateMessage = "تحسينات عامة على الأداء والسرعة."
            end"""
content = content.replace(version_logic_pattern, new_version_logic)

# 2. Add updateMessage to the dialog
dialog_pattern = """                        local builder = AlertDialog.Builder(service)
                        builder.setTitle("تحديث جديد متاح! 🚀")
                        builder.setMessage("إصدار جديد من الإضافة متاح الآن.\\n\\nالإصدار الحالي: " .. currentAppVersion .. "\\nالإصدار الجديد: " .. newVersionStr .. "\\n\\nهل تريد تنزيل وتثبيت التحديث الآن؟")
                        builder.setPositiveButton("تحديث الآن", function()
                            downloadUpdateAndApply()
                        end)"""

new_dialog_pattern = """                        local builder = AlertDialog.Builder(service)
                        builder.setTitle("تحديث جديد متاح! 🚀")
                        builder.setMessage("إصدار جديد من الإضافة متاح الآن.\\n\\nالإصدار الحالي: " .. currentAppVersion .. "\\nالإصدار الجديد: " .. newVersionStr .. "\\n\\nالجديد في هذا التحديث:\\n" .. updateMessage .. "\\n\\nهل تريد تنزيل وتثبيت التحديث الآن؟")
                        builder.setPositiveButton("تحديث الآن", function()
                            -- Save the message to preferences to read it on next launch
                            local editor = prefs.edit()
                            editor.putString("pending_update_message", "تم التحديث بنجاح للإصدار " .. newVersionStr .. ". الجديد في هذا التحديث: " .. updateMessage)
                            editor.apply()
                            downloadUpdateAndApply()
                        end)"""
content = content.replace(dialog_pattern, new_dialog_pattern)

# 3. Add logic in onCreate to read the pending_update_message
oncreate_pattern = """mainHandler.post(luajava.createProxy("java.lang.Runnable", {
    run = function()
        createAndShowFloatingButton()
        -- Run silent update check
        checkForUpdates(true)

        if startWithDictation then startVoiceRecognition(false) else openMainWindow() end
    end
}))"""

new_oncreate_pattern = """mainHandler.post(luajava.createProxy("java.lang.Runnable", {
    run = function()
        createAndShowFloatingButton()
        -- Run silent update check
        checkForUpdates(true)

        -- Check if there's a pending update message to read
        local updateMsg = prefs.getString("pending_update_message", "")
        if updateMsg ~= "" then
            service.asyncSpeak(updateMsg)
            local editor = prefs.edit()
            editor.remove("pending_update_message")
            editor.apply()
        end

        if startWithDictation then startVoiceRecognition(false) else openMainWindow() end
    end
}))"""
content = content.replace(oncreate_pattern, new_oncreate_pattern)

# 4. Increment the currentAppVersion
current_version_pattern = "local currentAppVersion = "
import re
match = re.search(r"local currentAppVersion = ([\d\.]+)", content)
if match:
    old_version = float(match.group(1))
    new_version = round(old_version + 0.1, 1)
    content = content.replace(f"local currentAppVersion = {old_version}", f"local currentAppVersion = {new_version}")

    with open("version.txt", "w") as f:
        f.write(f"{new_version}\n1. إخفاء عارض المستندات في الخلفية مع استمرار القراءة بالضغط على زر الرئيسية.\n2. إضافة أزرار تنقل بين الصفحات السابقة والتالية.\n3. إعادة تصميم واجهة العارض لتصبح أسهل وأنظم مع قارئ الشاشة TalkBack.")

with open("main.lua", "w") as f:
    f.write(content)
