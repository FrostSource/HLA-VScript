---@meta

---
---Allows access to read and modify console variables.
---
---@class Convars
Convars = {}

---
---Gets the convar as a boolean.
---
---Returns `nil` if the convar doesn't exist.
---
---@param name string # The name of the convar
---@return boolean? # True if the convar is above 1 or starts with a 1, false otherwise
function Convars:GetBool(name) end

---
---Returns the player who issued this console command.
---
---@return CHL2_Player
function Convars:GetCommandClient() end

---
---Gets the convar as a float.
---
---Returns `nil` if the convar doesn't exist.
---
---@param name string # The name of the convar
---@return number? # The float value that the convar starts with
function Convars:GetFloat(name) end

---
---Gets the convar as an int.
---
---Returns `nil` if the convar doesn't exist.
---
---@param name string # The name of the convar
---@return integer? # The int value that the convar starts with
function Convars:GetInt(name) end

---
---Gets the convar as a string.
---
---Returns `nil` if the convar doesn't exist.
---
---@param name string # The name of the convar
---@return string? # The string value of the convar
function Convars:GetStr(name) end

---
---Register a console command with a callback function.
---
---@param name string # Name of the command as it appears in the console
---@param callback fun(name:string, ...:string) # Callback function. Command name is the first argument and all others are passed after
---@param helpText string # Help text for the command
---@param flags integer # The [CVAR_FLAGS](lua://CVAR_FLAGS) for this command
function Convars:RegisterCommand(name, callback, helpText, flags) end

---
---Register a new console variable.
---
---@param name string # The name of the convar as it appears in the console
---@param defaultValue string # The default value of the convar, e.g. "1"
---@param helpText string # Help text for the convar
---@param flags integer # The [CVAR_FLAGS](lua://CVAR_FLAGS) for this convar
function Convars:RegisterConvar(name, defaultValue, helpText, flags) end

---
---Sets the value of the convar to the bool.
---
---@param name string # The name of the convar
---@param value boolean # Convar will be converted to 1 for true and 0 for false
function Convars:SetBool(name, value) end

---
---Sets the value of the convar to the float.
---
---@param name string # The name of the convar
---@param value number # The float value for the convar
function Convars:SetFloat(name, value) end

---
---Sets the value of the convar to the int.
---
---@param name string # The name of the convar
---@param value integer # The int value for the convar
function Convars:SetInt(name, value) end

---
---Sets the value of the convar to the string.
---
---@param name string # The name of the convar
---@param value string # The string value for the convar
function Convars:SetStr(name, value) end