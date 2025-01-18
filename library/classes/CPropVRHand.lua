---@meta

---
---Entity class for prop_vr_hand. Represents a VR motion controller.
---
---The controllers can be enumerated for each player using the [CPropHMDAvatar:GetVRHand](lua://CPropHMDAvatar.GetVRHand) method.
---
---@class CPropVRHand : CBaseAnimating
CPropVRHand = {}

---
---Add the attachment to this hand.
---
---**Warning: This will crash the game if the entity was not designed to be attached.**
---
---@param attachment EntityHandle
function CPropVRHand:AddHandAttachment(attachment) end

---
---Add a model override for this hand.
---
---@param modelName string
function CPropVRHand:AddHandModelOverride(modelName) end

---
---Find a specific model override for this hand.
---
---@param modelName string
---@return EntityHandle
function CPropVRHand:FindHandModelOverride(modelName) end

---
---Fire a haptic pulse on this hand. Integer range [0, 1, 2] for strength.
---
---@param strength 0|1|2
function CPropVRHand:FireHapticPulse(strength) end

---
---Fire a haptic pulse on this hand. Specify the duration in micro seconds.
---
---@param pulseDuration integer
function CPropVRHand:FireHapticPulsePrecise(pulseDuration) end

---
---Get the top-level attachment on this hand.
---
---@return EntityHandle
function CPropVRHand:GetHandAttachment() end

---
---Get the players hand ID for this hand.
---
---@return 0|1 # 0 - Left hand, 1 - Right hand
function CPropVRHand:GetHandID() end

---
---Get literal type for this hand.
---
---@return 0|1 # 0 - Right hand, 1 - Left hand
function CPropVRHand:GetLiteralHandType() end

---
---Get the player for this hand.
---
---@return CHL2_Player
function CPropVRHand:GetPlayer() end

---
---Get the filtered controller velocity.
---
---@return Vector
function CPropVRHand:GetVelocity() end

---
---Remove all model overrides for this hand.
---
function CPropVRHand:RemoveAllHandModelOverrides() end

---
---Remove hand attachment by handle.
---
---**Warning: Removing certain hand attachments will crash the game.**
---
---@param hAttachment EntityHandle
function CPropVRHand:RemoveHandAttachmentByHandle(hAttachment) end

---
---Remove a model override for this hand.
---
---@param pModelName string
function CPropVRHand:RemoveHandModelOverride(pModelName) end

---
---Set the attachment for this hand.
---
---**Warning: This appears to crash the game no matter what entity is used.**
---
---@param hAttachment EntityHandle
function CPropVRHand:SetHandAttachment(hAttachment) end