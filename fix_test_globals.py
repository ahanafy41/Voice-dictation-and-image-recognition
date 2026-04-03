import re

with open('test.lua', 'r') as f:
    content = f.read()

# Fix the mock JSONArray issue with 'self' (ensure we match the exact string)
bad_json_arr = '_G.JSONArray = function(str) local a = { data = {} }; a.put = function(self, v) table.insert(self.data, v) end; a.toString = function(self) return "[]" end; a.length = function(self) return #self.data end; return a end'
good_json_arr = '_G.JSONArray = function(str) local a = { data = {} }; a.put = function(self, v) if self then table.insert(self.data, v) else table.insert(a.data, v) end end; a.toString = function(self) return "[]" end; a.length = function(self) if self then return #self.data else return #a.data end end; return a end'

content = content.replace(bad_json_arr, good_json_arr)

# Also fix the `getClass().getSimpleName()` on mock json obj
bad_json_obj = '_G.JSONObject = function(str) local o = { data = {} }; o.put = function(self, k, v) self.data[k] = v end; o.toString = function(self) return "{}" end; o.has = function(self, k) return self.data[k] ~= nil end; o.get = function(self, k) local v = self.data[k]; if v == nil then return nil end; return { getClass = function() return { getSimpleName = function() if type(v) == "boolean" then return "Boolean" elseif type(v) == "number" then return "Integer" else return "String" end end } end } end; o.getString = function(self, k) return tostring(self.data[k]) end; o.getBoolean = function(self, k) return self.data[k] == true end; o.getInt = function(self, k) return tonumber(self.data[k]) end; o.keys = function(self) local keys = {}; for k,_ in pairs(self.data) do table.insert(keys,k) end; local i = 0; return { hasNext = function() return i < #keys end, next = function() i = i + 1; return keys[i] end } end; return o end'
good_json_obj = '_G.JSONObject = function(str) local o = { data = {} }; o.put = function(self, k, v) if self then self.data[k] = v else o.data[k]=v end end; o.toString = function(self) return "{}" end; o.has = function(self, k) if self then return self.data[k] ~= nil else return o.data[k] ~= nil end end; o.get = function(self, k) local v = self and self.data[k] or o.data[k]; if v == nil then return nil end; return { getClass = function() return { getSimpleName = function() if type(v) == "boolean" then return "Boolean" elseif type(v) == "number" then return "Integer" else return "String" end end } end } end; o.getString = function(self, k) return tostring(self and self.data[k] or o.data[k]) end; o.getBoolean = function(self, k) return (self and self.data[k] or o.data[k]) == true end; o.getInt = function(self, k) return tonumber(self and self.data[k] or o.data[k]) end; o.keys = function(self) local keys = {}; for k,_ in pairs(self and self.data or o.data) do table.insert(keys,k) end; local i = 0; return { hasNext = function() return i < #keys end, next = function() i = i + 1; return keys[i] end } end; return o end'
content = content.replace(bad_json_obj, good_json_obj)


# Fix the focusability issue in tests (missing mock methods)
bad_linear_layout = 'setFocusableInTouchMode = function() end, requestFocus = function() end, setOnTouchListener = function() end, setGravity = function() end, setOnKeyListener = function() end } end'
good_linear_layout = 'setFocusableInTouchMode = function() end, requestFocus = function() end, setOnTouchListener = function() end, setGravity = function() end, setOnKeyListener = function() end, setFocusable = function() end } end'

content = content.replace(bad_linear_layout, good_linear_layout)

with open('test.lua', 'w') as f:
    f.write(content)
