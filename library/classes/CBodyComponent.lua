---@meta

---
---Exists in global environment but doesn't seem to be used by any entity.
---

---
---No Description Set
---
---@class CBodyComponent
CBodyComponent = {}

---
---Apply an impulse at a worldspace position to the physics
--
---@param Vector_1 Vector
---@param Vector_2 Vector
---@deprecated
function CBodyComponent:AddImpulseAtPosition(Vector_1, Vector_2) end

---
---Add linear and angular velocity to the physics object
---
---@param Vector_1 Vector
---@param Vector_2 Vector
---@deprecated
function CBodyComponent:AddVelocity(Vector_1, Vector_2) end

---
---Detach from its parent
---
---@deprecated
function CBodyComponent:DetachFromParent() end

---
---Returns the active sequence
---
---@return unknown
---@deprecated
function CBodyComponent:GetSequence() end

---
---Is attached to parent
---
---@return boolean
---@deprecated
function CBodyComponent:IsAttachedToParent() end

---
---Returns a sequence id given a name
---
---@param string_1 string
---@return unknown
---@deprecated
function CBodyComponent:LookupSequence(string_1) end

---
---Returns the duration in seconds of the specified sequence
---
---@param string_1 string
---@return number
---@deprecated
function CBodyComponent:SequenceDuration(string_1) end

---
---No Description Set
---
---@param Vector_1 Vector
---@deprecated
function CBodyComponent:SetAngularVelocity(Vector_1) end

---
---Pass string for the animation to play on this model
---
---@param string_1 string
---@deprecated
function CBodyComponent:SetAnimation(string_1) end

---
---No Description Set
---
---@param string_1 string
---@deprecated
function CBodyComponent:SetBodyGroup(string_1) end

---
---No Description Set
---
---@param utlstringtoken_1 unknown
---@deprecated
function CBodyComponent:SetMaterialGroup(utlstringtoken_1) end

---
---No Description Set
---
---@param velocity Vector
---@deprecated
function CBodyComponent:SetVelocity(velocity) end
