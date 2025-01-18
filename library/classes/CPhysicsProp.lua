---@meta

---
---Entity class for prop_physics and many other physical props.
---
---@class CPhysicsProp : CBaseAnimating
CPhysicsProp = {}

---
---Enable/disable dynamic vs dynamic continuous collision traces.
---
---@param dynamicVsDynamicContinuousEnabled boolean
function CPhysicsProp:SetDynamicVsDynamicContinuous(dynamicVsDynamicContinuousEnabled) end

---
---Disable motion for the prop.
---
function CPhysicsProp:DisableMotion() end

---
---Enable motion for the prop.
---
function CPhysicsProp:EnableMotion() end