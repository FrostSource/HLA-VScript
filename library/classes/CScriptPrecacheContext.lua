---@meta

---
---Container to hold context published to the Precache() hook function.
---
---@class CScriptPrecacheContext
CScriptPrecacheContext = {}

---
---Precaches a specific resource
---
---@param resource string
function CScriptPrecacheContext:AddResource(resource) end

---
---Reads a spawn key.
---
---@param key string
---@return any
function CScriptPrecacheContext:GetValue(key) end
