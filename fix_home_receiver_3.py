with open("main.lua", "r") as f:
    content = f.read()

content = content.replace("local isListening = false", "local isListening = false\nlocal homeButtonReceiver = nil\nlocal isDocumentReaderBackgrounded = false\nlocal globalDocViewerPath = nil\n")

with open("main.lua", "w") as f:
    f.write(content)
