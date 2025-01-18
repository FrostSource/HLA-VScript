---@meta

---
---Entity class for triggers.
---
---@class CBaseTrigger : CEntityInstance
CBaseTrigger = {}

---
---Disable the trigger
---
function CBaseTrigger:Disable() end

---
---Enable the trigger
---
function CBaseTrigger:Enable() end

---
---Checks whether the passed entity is touching the trigger.
---
---@param entity EntityHandle
---@return boolean
function CBaseTrigger:IsTouching(entity) end
