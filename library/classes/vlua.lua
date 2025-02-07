---@meta

---
---Functions automatically included from the library.lua core library. Located in the vlua table rather than directly in the global scope.
---
---Library functions to support Lua code generated by Sq2Lua.exe
---
---@class vlua
vlua = {}

---
---Implements Squirrel clear table method.
---
---Sets all keys to nil.
---
---@param t table
---@return table
function vlua.clear(t) end

---
---Implements Squirrel three way compare operator ( <=> ).
---
--- < -1
---
--- == 0
---
--- \>  1
---
---@param a number # The left value
---@param b number # The right value
---@return -1|0|1 # The comparison result
function vlua.compare(a, b) end

---
---Implements Squirrel in operator.
---
---@param t table # The table to search
---@param key any # The key to check
---@return boolean # True if the key has a non-nil value
function vlua.contains(t, key) end

---
---Implements Squirrel slot delete operator.
---
---Sets a key to nil and returns it.
---
---@param t table # The table to delete from
---@param key any # The key to delete
---@return any # The deleted value
function vlua.delete(t, key) end

---
---Implements Squirrel clone operator.
---
---Creates a new table with the same contents as the original and assign the existing metatable to the new table.
---
---This is shallow clone and will not clone nested tables.
---
---@param t table # The table to clone
---@return table # The new table
function vlua.clone(t) end

---
---Implements Squirrel rawdelete library function.
---
---*Functionally identical to [vlua.delete](lua://vlua.delete).*
---
---@param t table # The table to delete from
---@param key any # The key to delete
---@return any # The deleted value
function vlua.rawdelete(t, key) end

---
---Implements Squirrel rawin library function.
---
---*Functionally identical to [vlua.contains](lua://vlua.contains).*
---
---@param t table # The table to search
---@param key any # The key to check
---@return boolean # True if the key has a non-nil value
function vlua.rawin(t, key) end

---
---Implements Squirrel find method for tables.
---
---@param tbl table # Table to search
---@param value any # Value to search for
---@return any? # Key associated with `value`
function vlua.find(tbl, value) end
---
---Implements Squirrel find method for strings.
---
---This uses a plain [string.find](lua://string.find) internally.
---
---@param str string # String to search
---@param substr string # Substring to search for
---@param startIndex? integer # Index to start searching from
---@return string? # Substring found
function vlua.find(str, substr, startIndex) end

---
---Implements Squirrel slice method for tables.
---
---`startIndex` is inclusive and `endIndex` is exclusive.
---
---@param tbl table # Table to slice
---@param startIndex integer # Index to start slicing from, can be negative
---@param endIndex integer # Index to stop slicing at, can be negative
---@return table # New table containing the sliced values
----@overload fun(str: string, startIndex: integer, endIndex: integer): string
function vlua.slice(tbl, startIndex, endIndex) end
---
---Implements Squirrel slice method for strings.
---
---`startIndex` is inclusive and `endIndex` is exclusive.
---
---@param str string # String to slice
---@param startIndex integer # Index to start slicing from, can be negative
---@param endIndex integer # Index to stop slicing at, can be negative
---@return string # The sliced substr
function vlua.slice(str, startIndex, endIndex) end

---
---Implements Squirrel reverse method for tables.
---
---@param t table # Table to reverse
---@return table # The reversed in-place table
function vlua.reverse(t) end

---
---Implements Squirrel resize method for tables.
---
---Resizes a table by removing elements or adding elements with a fill value.
---
---@param t table # Table to resize
---@param size integer # Size to resize to
---@param fill any # Value to fill any new elements with
---@return table # The resized in-place table
function vlua.resize(t, size, fill) end

---
---Implements Squirrel extend method for tables.
---
---Adds each value from `array` to `o`.
---If `array` has no elements then `nil` is returned.
---
---@param o table # Table to extend
---@param array table # Table to append
---@return table? # The extended in-place table
function vlua.extend(o, array) end

---
---Implements Squirrel map method for tables.
---
---Passes each value in `o` to `mapFunc` and returns a new table with the resulting values in the same keys.
---
---@param o table # Table to map
---@param mapFunc function # Function to apply to each value
---@return table # Map of resulting values
function vlua.map(o, mapFunc) end

---
---Implements Squirrel reduce method for tables.
---
---If `o` is empty then `nil` is returned.
---If `o` has one element then that element is returned.
---
---@param o table # Table to reduce
---@param reduceFunc fun(previousValue: any, currentValue: any): any # Function to apply
---@return any? # The reduced value
function vlua.reduce(o, reduceFunc) end

---
---Implements tableadd function to support += paradigm used in Squirrel.
---
---Adds `t2` into `t1` overwriting any existing keys.
---
---@param t1 table # The table to add to
---@param t2 table # The table to add
---@return table # `t1` after addition
function vlua.tableadd(t1, t2) end

---
---Implements Squirrel split function for strings.
---
---Splits `input` into a table of substrings by all characters in `separator`.
---
---@param input string # String to split
---@param separator string # String of characters to split by
---@return string[] # Table of substrings
function vlua.split(input, separator) end

---
---Safe Ternary operator.
---
---@generic T1
---@generic T2
---@param conditional boolean
---@param valueIfTrue T1
---@param valueIfFalse T2
---@return T1|T2
function vlua.select(conditional, valueIfTrue, valueIfFalse) end
