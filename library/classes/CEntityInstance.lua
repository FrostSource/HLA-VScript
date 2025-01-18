---@meta

---
---All entities inherit from this.
---
---@class CEntityInstance
CEntityInstance = {}

---
---Adds an I/O connection that will call the named function on this entity when the specified output fires.
---
---**Bug: This doesn't appear to work in Half-Life Alyx scripts. Use [CEntityInstance:RedirectOutput](lua://CEntityInstance.RedirectOutput) with `thisEntity` as the third parameter instead.**
---
---@param output string
---@param functionName string
---@deprecated
function CEntityInstance:ConnectOutput(output, functionName) end

---
---Deletes the entity. Equivalent to [UTIL_Remove](lua://UTIL_Remove).
---
function CEntityInstance:Destroy() end

---
---Removes a connected script function from an I/O event on this entity.
---
---**This function has no use because [CEntityInstance:ConnectOutput](lua://CEntityInstance.ConnectOutput) is broken.**
---
---@param output string
---@param functionName string
---@deprecated
function CEntityInstance:DisconnectOutput(output, functionName) end

---
---Removes a connected script function from an I/O event on the passed entity.
---
---@param output string # The output on this entity to disconnect from
---@param functionName string # The name of the function to disconnect
---@param entity EntityHandle # The entity that the output is redirected to
function CEntityInstance:DisconnectRedirectedOutput(output, functionName, entity) end

---
---Get the entity index of this entity. Will be different every time the map loads.
---
---Use [EntIndexToHScript](lua://EntIndexToHScript) to convert back to an entity handle.
---
---Functionally the same as [CEntityInstance:GetEntityIndex](lua://CEntityInstance.GetEntityIndex).
---
---@return integer
function CEntityInstance:entindex() end

---
---Fire an output on this entity.
---
---@param outputName string # The name of the output to fire
---@param activator EntityHandle|nil # The !activator of the output in the I/O chain
---@param caller EntityHandle|nil # The !caller of the output in the I/O chain
---@param parameter string|nil # The parameter override to send with the output.
---@param delay number # The delay in seconds before the output is fired
function CEntityInstance:FireOutput(outputName, activator, caller, parameter, delay) end

---
---Get the entity classname as a string.
---
---@return string
function CEntityInstance:GetClassname() end

---
---Get the debug name of the entity.
---
---If the entity has a targetname it will be returned, otherwise the entity's classname will be returned.
---
---@return string
function CEntityInstance:GetDebugName() end

---
---Get the entity as an EHANDLE.
---
---@return number
function CEntityInstance:GetEntityHandle() end

---
---Get the entity index of this entity. Will be different every time the map loads.
---
---Use [EntIndexToHScript](lua://EntIndexToHScript) to convert back to an entity handle.
---
---@return integer
function CEntityInstance:GetEntityIndex() end

---
---Get an integer attribute.
---
---Functionally the same as [CBaseEntity:Attribute_GetIntValue](lua://CBaseEntity.Attribute_GetIntValue).
---
---@param key string # The name of the attribute
---@return integer # The value of the attribute, or 0 if the attribute doesn't exist
function CEntityInstance:GetIntAttr(key) end

---
---Returns the targetname of the entity.
---
---@return string
function CEntityInstance:GetName() end

---
---Retrieve, creating if necessary, the private per-instance script-side data associated with an entity.
---
---@return ScriptScope
function CEntityInstance:GetOrCreatePrivateScriptScope() end

---
---Retrieve, creating if necessary, the public script-side data associated with an entity.
---
---@return ScriptScope
function CEntityInstance:GetOrCreatePublicScriptScope() end

---
---Retrieve the private per-instance script-side data associated with an entity.
---
---@return ScriptScope
function CEntityInstance:GetPrivateScriptScope() end

---
---Retrieve the public script-side data associated with an entity.
---
---@return ScriptScope
function CEntityInstance:GetPublicScriptScope() end

---
---Adds an I/O connection that will call the named function on the passed entity when the specified output fires.
---
---The redirection is persistent through game loads.
---
---@param output string # The name of the output on this entity
---@param functionName string # The name of the function to call
---@param entity EntityHandle # The entity that has the function
function CEntityInstance:RedirectOutput(output, functionName, entity) end

---
---Deletes the entity. Equivalent to [UTIL_Remove](lua://UTIL_Remove).
---
function CEntityInstance:RemoveSelf() end

---
---Set Integer Attribute.
---
---Functionally the same as [CBaseEntity:Attribute_SetIntValue](lua://CBaseEntity.Attribute_SetIntValue).
---
---@param key string # The name of the attribute
---@param value integer # The value of the attribute
function CEntityInstance:SetIntAttr(key, value) end
