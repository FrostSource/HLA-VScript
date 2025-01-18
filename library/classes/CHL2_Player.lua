---@meta

---
---Half-life player subclass.
---
---@class CHL2_Player : CBasePlayer
CHL2_Player = {}

---
---
---
---@param name string
---@param delta integer
---@return boolean
function CHL2_Player:PlayerCounter_CanModifyValue(name, delta) end

---
---
---
---@param name string
---@param max integer
---@return integer
function CHL2_Player:PlayerCounter_SetMax(name, max) end

---
---
---
---@param name string
---@param delta integer
---@return integer
function CHL2_Player:PlayerCounter_ModifyValue(name, delta) end

---
---
---
---@param name string
---@param min integer
---@return integer
function CHL2_Player:PlayerCounter_SetMin(name, min) end

---
---
---
---@param name string
---@param min integer
---@param max integer
---@return integer
function CHL2_Player:PlayerCounter_SetMinMax(name, min, max) end

---
---
---
---@param name string
---@param value integer
---@return integer
function CHL2_Player:PlayerCounter_SetValue(name, value) end

---
---
---
---@param name string
---@return integer
function CHL2_Player:PlayerCounter_GetValue(name) end