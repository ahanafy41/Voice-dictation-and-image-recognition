import re

with open('main.lua', 'r') as f:
    content = f.read()

bad_logic = """
            while it.hasNext() do
                local k = it.next()
                if item.get(k).getClass().getSimpleName() == "Boolean" then
                     book[k] = item.getBoolean(k)
                elseif item.get(k).getClass().getSimpleName() == "Integer" then
                     book[k] = item.getInt(k)
                else
                     book[k] = item.getString(k)
                end
            end
"""

good_logic = """
            while it.hasNext() do
                local k = tostring(it.next())
                local valStr = ""
                pcall(function() valStr = item.getString(k) end)

                if valStr == "true" then
                    book[k] = true
                elseif valStr == "false" then
                    book[k] = false
                elseif tonumber(valStr) and not valStr:match("^0") then
                    book[k] = tonumber(valStr)
                else
                    book[k] = valStr
                end
            end
"""

content = content.replace(bad_logic.strip(), good_logic.strip())

with open('main.lua', 'w') as f:
    f.write(content)

print("loadLibraryData fixed.")
