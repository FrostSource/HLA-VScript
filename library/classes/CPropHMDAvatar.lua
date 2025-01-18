---@meta

---
---Entity class for prop_hmd_avatar.
---
---@class CPropHMDAvatar : CBaseAnimating
CPropHMDAvatar = {}

---
---Get VR hand by ID (0 and 1).
---
---Typically 0 is the left hand and 1 is the right hand.
---
---Even in single-handed mode both hands will exist but the non-dominant hand will be invisible.
---
---@param handID 0|1 # The hand ID
---@return CPropVRHand # The VR hand, or nil if it doesn't exist
function CPropHMDAvatar:GetVRHand(handID) end