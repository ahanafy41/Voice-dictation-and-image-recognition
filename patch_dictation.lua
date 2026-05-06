local file = io.open("main.lua", "r")
local content = file:read("*all")
file:close()

-- Modify insertFinalResult to use targetEditText
local search_pattern = "local editTextNode = service.getEditText()\n%s*if editTextNode then\n%s*local currentContent = editTextNode.getText() or \"\""

local replace_pattern = "local editTextNode = targetEditText\n                        if editTextNode then\n                            local currentContent = editTextNode.getText() or \"\""

content = string.gsub(content, search_pattern, replace_pattern)

local file = io.open("main.lua", "w")
file:write(content)
file:close()
print("Replaced targetEditText in insertFinalResult")
