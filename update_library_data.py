import re

with open('main.lua', 'r') as f:
    content = f.read()

# Define the new Lua code for library data management
library_code = """
-- ### Library Data Management ###
local libraryData = {} -- Table to hold books metadata

function loadLibraryData()
    local savedData = prefs.getString("library_books_data", "[]")
    local success, jArr = pcall(function() return JSONArray(savedData) end)
    libraryData = {}
    if success and jArr then
        for i = 0, jArr.length() - 1 do
            local item = jArr.getJSONObject(i)
            local book = {}
            local it = item.keys()
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
            table.insert(libraryData, book)
        end
    end
end

function saveLibraryData()
    local jArr = JSONArray()
    for _, book in ipairs(libraryData) do
        local jObj = JSONObject()
        for k, v in pairs(book) do
            jObj.put(k, v)
        end
        jArr.put(jObj)
    end
    local editor = prefs.edit()
    editor.putString("library_books_data", jArr.toString())
    editor.apply()
end

function updateBookProgress(path, title, chapterIdx, sentenceIdx, isFav)
    local found = false
    for _, book in ipairs(libraryData) do
        if book.path == path then
            book.title = title or book.title
            if chapterIdx then book.chapterIdx = chapterIdx end
            if sentenceIdx then book.sentenceIdx = sentenceIdx end
            if isFav ~= nil then book.isFav = isFav end
            book.lastReadTime = os.time()
            found = true
            break
        end
    end

    if not found then
        table.insert(libraryData, {
            path = path,
            title = title or path:match("([^/]+)$") or path,
            chapterIdx = chapterIdx or 1,
            sentenceIdx = sentenceIdx or 1,
            isFav = isFav or false,
            lastReadTime = os.time()
        })
    end
    saveLibraryData()
end

function getBookProgress(path)
    for _, book in ipairs(libraryData) do
        if book.path == path then
            return book
        end
    end
    return nil
end

function removeBookFromLibrary(path)
    for i = #libraryData, 1, -1 do
        if libraryData[i].path == path then
            table.remove(libraryData, i)
            saveLibraryData()
            return
        end
    end
end

-- Load library data on startup
loadLibraryData()

"""

# Find a good spot to insert this, like right after PDF TTS Settings and before the Global Variables section
target_comment = "-- PDF TTS Settings"
insertion_point_pattern = r"(-- PDF TTS Settings.*?)(?=\n-- \*\*Global UI Handler\*\*)"

match = re.search(insertion_point_pattern, content, re.DOTALL)
if match:
    original_block = match.group(1)
    new_content = content[:match.start()] + original_block + "\n" + library_code + "\n" + content[match.end():]
    with open('main.lua', 'w') as f:
        f.write(new_content)
    print("Library functions inserted successfully.")
else:
    print("Could not find insertion point.")
