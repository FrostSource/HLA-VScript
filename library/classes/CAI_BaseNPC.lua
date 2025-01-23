---@meta

---
---No Description Set
---
---@class CAI_BaseNPC : CBaseCombatCharacter
CAI_BaseNPC = {}

---
---Get the squad to which this NPC belongs.
---
---@return AI_Squad # The squad.
function CAI_BaseNPC:GetSquad() end

---
---Set a position goal and start moving.
---
---@param pos Vector # The position to move to.
---@param run boolean # If true the NPC will run.
---@param successTolerance number # How close the NPC must be to the goal before it is considered successful.
function CAI_BaseNPC:NpcForceGoPosition(pos, run, successTolerance) end

---
---Removes the NPC's current goal.
---
function CAI_BaseNPC:NpcNavClearGoal() end

---
---Get the position of the current goal.
---
---@return Vector # World position of the goal.
function CAI_BaseNPC:NpcNavGetGoalPosition() end

---
---Returns true if NPC has a goal and path.
---
---This will not immediately return `true` after calling [NpcForceGoPosition](lua://CAI_BaseNPC.NpcForceGoPosition).
---It takes a moment for the NPC to register as having a goal.
---
---@return boolean
function CAI_BaseNPC:NpcNavGoalActive() end
