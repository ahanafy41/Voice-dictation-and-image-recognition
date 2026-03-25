
local classesToTest = {
    "androidx.camera.core.CameraX",
    "androidx.camera.view.PreviewView",
    "com.google.mlkit.vision.common.InputImage",
    "com.google.mlkit.vision.text.TextRecognition",
    "com.google.mlkit.vision.documentscanner.GmsDocumentScannerOptions"
}

for _, className in ipairs(classesToTest) do
    local success, result = pcall(function() return luajava.bindClass(className) end)
    if success then
        print("SUCCESS: " .. className .. " is available.")
    else
        print("FAILED: " .. className .. " is NOT available. Error: " .. tostring(result))
    end
end
