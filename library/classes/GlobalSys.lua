---@meta

---
---Used to read the command line parameters the game was started with.
---
---@class GlobalSys
GlobalSys = {}

---
---Returns true if the command line param was used, otherwise false.
---
---@param name string
---@return boolean
function GlobalSys:CommandLineCheck(name) end

---
---Returns the command line param as a float.
---
---@param name string # The name of the command line param
---@param default number # The default value if the param doesn't exist or is empty
---@return number # The param value or the default
function GlobalSys:CommandLineFloat(name, default) end

---
---Returns the command line param as an int.
---
---@param name string # The name of the command line param
---@param default integer # The default value if the param doesn't exist or is empty
---@return integer # The param value or the default
function GlobalSys:CommandLineInt(name, default) end

---
---Returns the command line param as a string.
---
---@param name string # The name of the command line param
---@param default string # The default value if the param doesn't exist
---@return string # The param value or the default
function GlobalSys:CommandLineStr(name, default) end
