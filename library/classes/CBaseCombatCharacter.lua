---@meta

---
---Class that all combat based NPCs inherit.
---
---In Half Life Alyx this is all NPCs and players.
---
---@class CBaseCombatCharacter : CBaseFlex
CBaseCombatCharacter = {}

---
---Returns an array of all the equipped weapons
---
---@return EntityHandle[]
function CBaseCombatCharacter:GetEquippedWeapons() end

---
---Get the combat character faction.
---
---*Appears to always return 0 in Half Life Alyx.*
---
---@return integer
function CBaseCombatCharacter:GetFaction() end

---
---Gets the number of weapons currently equipped
---
---@return integer
function CBaseCombatCharacter:GetWeaponCount() end

---
---Returns the shoot position, i.e. weapon muzzle (or hand in VR).
---
---Pass 0,0 to get the shoot position of any npc or player.
---
---@param hand integer|0 # Unknown if this does anything in Half Life Alyx
---@param unknown integer|0 # Unknown what this parameter does
---@return Vector # World position of the NPCs weapon
function CBaseCombatCharacter:ShootPosition(hand, unknown) end
