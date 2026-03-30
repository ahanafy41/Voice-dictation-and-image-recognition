import sys
import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Pattern to find methods calls in the new functions and replace : with .
# We'll target the functions I added.

def fix_function_dots(func_name, text):
    pattern = r'function ' + func_name + r'\(.*?\nend'
    match = re.search(pattern, text, re.DOTALL)
    if not match: return text

    func_body = match.group(0)
    # Replace : with . but be careful not to touch Lua-only things if any (unlikely in these blocks)
    # Java objects in these blocks: file, conn, urlObj, dos, fileInputStream, br, j, cands, parts, root, contentObj, partsArray, etc.

    # List of known Java objects/methods we used with :
    # file:exists, file:getName
    # urlObj:openConnection
    # conn:setChunkedStreamingMode, conn:setDoInput, conn:setDoOutput, conn:setUseCaches, conn:setRequestMethod, conn:setRequestProperty, conn:getResponseCode, conn:getInputStream, conn:getErrorStream, conn:setConnectTimeout, conn:setReadTimeout
    # dos:writeBytes, dos:write, dos:flush, dos:close
    # fileInputStream:read, fileInputStream:close
    # br:readLine, br:close
    # j:has, j:getString, j:getJSONArray, j:getJSONObject, j:getBoolean
    # cands:length, cands:getJSONObject
    # parts:length, parts.getJSONObject
    # root:put, contentObj:put, partsArray:put

    fixed_body = func_body.replace('file:exists', 'file.exists')
    fixed_body = fixed_body.replace('file:getName', 'file.getName')
    fixed_body = fixed_body.replace('urlObj:openConnection', 'urlObj.openConnection')
    fixed_body = fixed_body.replace('conn:set', 'conn.set')
    fixed_body = fixed_body.replace('conn:get', 'conn.get')
    fixed_body = fixed_body.replace('dos:write', 'dos.write')
    fixed_body = fixed_body.replace('dos:flush', 'dos.flush')
    fixed_body = fixed_body.replace('dos:close', 'dos.close')
    fixed_body = fixed_body.replace('fileInputStream:read', 'fileInputStream.read')
    fixed_body = fixed_body.replace('fileInputStream:close', 'fileInputStream.close')
    fixed_body = fixed_body.replace('br:readLine', 'br.readLine')
    fixed_body = fixed_body.replace('br:close', 'br.close')
    fixed_body = fixed_body.replace('j:has', 'j.has')
    fixed_body = fixed_body.replace('j:getString', 'j.getString')
    fixed_body = fixed_body.replace('j:getJSONArray', 'j.getJSONArray')
    fixed_body = fixed_body.replace('j:getJSONObject', 'j.getJSONObject')
    fixed_body = fixed_body.replace('j:getBoolean', 'j.getBoolean')
    fixed_body = fixed_body.replace('cands:length', 'cands.length')
    fixed_body = fixed_body.replace('cands:getJSONObject', 'cands.getJSONObject')
    fixed_body = fixed_body.replace('parts:length', 'parts.length')
    fixed_body = fixed_body.replace('parts:getJSONObject', 'parts.getJSONObject')
    fixed_body = fixed_body.replace('root:put', 'root.put')
    fixed_body = fixed_body.replace('contentObj:put', 'contentObj.put')
    fixed_body = fixed_body.replace('partsArray:put', 'partsArray.put')
    # Special cases for Gemini response parsing which uses j.has instead of j:has sometimes
    fixed_body = fixed_body.replace('j.has', 'j.has') # already dot

    return text.replace(func_body, fixed_body)

content = fix_function_dots('transcribeWithGroq', content)
content = fix_function_dots('transcribeWithGemini', content)
content = fix_function_dots('transcribeWithWitAI', content)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
