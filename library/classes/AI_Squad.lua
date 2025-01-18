---@meta

---
---NPC squad class returned by [CAI_BaseNPC:GetSquad](lua://CAI_BaseNPC.GetSquad).
---
---@class AI_Squad
AI_Squad = {}

---
---Returns the invalidity of the squad entity. Opposite of [IsValidEntity](lua://IsValidEntity).
---
---@return boolean # true if the squad entity is invalid.
function AI_Squad:IsNull() end

---
---Gets the number of living NPCs in this squad.
---
---@param unknown boolean # Unknown boolean parameter.
function AI_Squad:GetNumMembers(unknown) end
