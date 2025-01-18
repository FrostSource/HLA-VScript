---@meta

---
---Entity class for point_template.
---
---@class CPointTemplate : CBaseEntity
CPointTemplate = {}

---
---Deletes any spawn groups that this point_template has spawned.
---
---If the template is set to "Spawn into a newly created spawn group" then any spawned entities will be killed.
---Otherwise the recently spawned entities will be forgotten in subsequent calls to [GetSpawnedEntities](lua://CPointTemplate.GetSpawnedEntities).
---
---*Note: The point_template will not be deleted by this.*
---
function CPointTemplate:DeleteCreatedSpawnGroups() end

---
---Spawns all of the entities the point_template is pointing at.
---
function CPointTemplate:ForceSpawn() end

---
---Get the list of the most recent spawned entities.
---
function CPointTemplate:GetSpawnedEntities() end

---
---Set a callback for when the template spawns entities.
---
---All recently spawned entities will be passed in as an array.
---
---Subsequent calls to this function will replace the previous callback.
---
---@generic T : table
---@param callback fun(context: T, entities: EntityHandle[])
---@param context T
function CPointTemplate:SetSpawnCallback(callback, context) end