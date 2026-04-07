import re

with open("main.lua", "r") as f:
    content = f.read()

# I misspelled the previous replace, let's fix the declaration
if "isDocumentReaderBackgrounded" not in content:
    content = content.replace("local tts = nil", "local tts = nil\nlocal homeButtonReceiver = nil\nlocal isDocumentReaderBackgrounded = false\nlocal globalDocViewerPath = nil")

with open("main.lua", "w") as f:
    f.write(content)
