---@meta

---
---Entity class for logic_relay.
---
---@class CLogicRelay : CEntityInstance
CLogicRelay = {}

---
---Triggers the logic_relay.
---
---@param activator EntityHandle|nil # The !activator in the I/O chain.
---@param caller EntityHandle|nil # The !caller in the I/O chain.
function CLogicRelay:Trigger(activator, caller) end