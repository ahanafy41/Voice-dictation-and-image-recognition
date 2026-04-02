require "import"
import "java.io.File"
import "java.io.FileInputStream"
import "java.io.FileOutputStream"
import "java.lang.System"

local function createLargeFile(path, sizeMB)
    local f = io.open(path, "wb")
    local block = string.rep("A", 1024 * 1024)
    for i = 1, sizeMB do f:write(block) end
    f:close()
end

createLargeFile("test_large.txt", 10)

-- Test pure Java copy using Lua loops
local f1 = File("test_large.txt")
local fis = FileInputStream(f1)
local fos = FileOutputStream(File("test_copy.txt"))

local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, 1024 * 1024) -- 1MB buffer
local read = fis.read(buffer)

local start = System.currentTimeMillis()
while read ~= -1 do
    fos.write(buffer, 0, read)
    read = fis.read(buffer)
end
local timeTaken = System.currentTimeMillis() - start

fis.close()
fos.close()

print("Copied 10MB using Lua while-loop in " .. timeTaken .. " ms")
