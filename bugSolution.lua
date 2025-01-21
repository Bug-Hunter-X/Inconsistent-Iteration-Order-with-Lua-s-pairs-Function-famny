The most reliable way to ensure consistent iteration is to explicitly manage the order, such as by iterating over a sorted array of keys or using a different iteration approach that controls order.

```lua
local function foo(t)
  local keys = {}
  for k in pairs(t) do
    table.insert(keys, k)
  end
  table.sort(keys)

  for _, k in ipairs(keys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v)
    else
      print(k, v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
```

This revised function first gathers all keys into an array (`keys`), sorts them, and then iterates in the defined order using `ipairs`.  This guarantees a consistent sequence.  If the order of keys within a nested table is critical, this approach should be adopted.