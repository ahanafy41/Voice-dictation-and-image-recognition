import re

with open("main.lua", "r") as f:
    content = f.read()

# Add a global flag and receiver variables
declarations = """local tts = nil
local mediaRecorder = nil
"""
new_declarations = """local tts = nil
local mediaRecorder = nil

-- Home button receiver variables
local homeButtonReceiver = nil
local isDocumentReaderBackgrounded = false
"""
content = content.replace(declarations, new_declarations)

# Register receiver in onCreate or somewhere global. We can put it in createAndShowFloatingButton or directly in script root.
# It's better to put it as a global initialization.
init_code = """-- Broadcast Receiver for Home Button
import "android.content.BroadcastReceiver"
import "android.content.IntentFilter"

local function registerHomeButtonReceiver()
    if homeButtonReceiver then return end
    homeButtonReceiver = luajava.createProxy("android.content.BroadcastReceiver", {
        onReceive = function(context, intent)
            local action = intent.getAction()
            if action == Intent.ACTION_CLOSE_SYSTEM_DIALOGS then
                local reason = intent.getStringExtra("reason")
                if reason == "homekey" or reason == "recentapps" then
                    -- Hide resultWindow if it's the document viewer
                    if resultWindow and _G.globalHideDocumentViewer then
                        _G.globalHideDocumentViewer()
                    end
                end
            end
        end
    })
    local filter = IntentFilter(Intent.ACTION_CLOSE_SYSTEM_DIALOGS)
    pcall(function() service.registerReceiver(homeButtonReceiver, filter) end)
end

-- Ensure receiver is registered
pcall(registerHomeButtonReceiver)
"""

if "-- Broadcast Receiver for Home Button" not in content:
    # insert before "function createAndShowFloatingButton()"
    content = content.replace("function createAndShowFloatingButton()", init_code + "\nfunction createAndShowFloatingButton()")


# Cleanup receiver in onDestroy
cleanup_code = """function onDestroy()
    pcall(function() if homeButtonReceiver then service.unregisterReceiver(homeButtonReceiver); homeButtonReceiver = nil end end)"""
content = content.replace("function onDestroy()", cleanup_code)

with open("main.lua", "w") as f:
    f.write(content)
