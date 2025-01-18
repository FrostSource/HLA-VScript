---@meta

---
---As far as I can tell CEntityInstance always exists with CBaseModelEntity.
---

---
---Entities with models inherit from this.
---
---@class CBaseModelEntity : CBaseEntity
CBaseModelEntity = {}

---
---Get the material group hash of this entity.
---
---@return integer
function CBaseModelEntity:GetMaterialGroupHash() end

---
---Get the mesh group mask of this entity.
---
---@return Uint64
function CBaseModelEntity:GetMaterialGroupMask() end

---
---Get the alpha modulation of this entity.
---
---@return integer
function CBaseModelEntity:GetRenderAlpha() end

---
---Get the render color of the entity.
---
---@return Vector
function CBaseModelEntity:GetRenderColor() end

---
---Sets a bodygroup by index.
---
---@param group integer # The index of the bodygroup, starting at 0.
---@param value integer # The value of the bodygroup, starting at 0.
function CBaseModelEntity:SetBodygroup(group, value) end

---
---Sets a bodygroup by name.
---
---@param group string # The case-insensitive name of the bodygroup.
---@param value integer # The value of the bodygroup, starting at 0.
function CBaseModelEntity:SetBodygroupByName(group, value) end

---
---Sets the light group of the entity.
---
---@param lightGroup string
function CBaseModelEntity:SetLightGroup(lightGroup) end

---
---Set the material group of this entity.
---
---@param name string # The case-insensitive name of the material group.
function CBaseModelEntity:SetMaterialGroup(name) end

---
---Set the material group hash of this entity.
---
---@param hash integer
function CBaseModelEntity:SetMaterialGroupHash(hash) end

---
---Set the mesh group mask of this entity.
---
---@param mask Uint64
function CBaseModelEntity:SetMaterialGroupMask(mask) end

---
---Changes the model of the entity. Make sure the new model is precached before using.
---
---@param modelName string
function CBaseModelEntity:SetModel(modelName) end

---
---Set the alpha modulation of this entity.
---
---@param alpha integer
function CBaseModelEntity:SetRenderAlpha(alpha) end

---
---Sets the render color of the entity.
---
---@param red integer
---@param green integer
---@param blue integer
function CBaseModelEntity:SetRenderColor(red, green, blue) end

---
---Sets the render mode of the entity.
---
---@param mode integer
function CBaseModelEntity:SetRenderMode(mode) end

---
---Set a single mesh group for this entity.
---
---@param meshGroupName string
function CBaseModelEntity:SetSingleMeshGroup(meshGroupName) end

---
---Set the bounding size of this entity.
---
---This does not change the entity visually but can be used in combination with
---[CBaseEntity:SetAbsScale](lua://CBaseEntity.SetAbsScale) to get correct bounding calculations.
---
---@param mins Vector # The minimum corner in local space
---@param maxs Vector # The maximum corner in local space
function CBaseModelEntity:SetSize(mins, maxs) end

---
---Set skin by number.
---
---@param skin integer # The index of the skin, starting at 0 for default skin.
function CBaseModelEntity:SetSkin(skin) end
