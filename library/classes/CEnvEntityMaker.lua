---@meta

---
---Entity class for env_entity_maker.
---
---@class CEnvEntityMaker : CEntityInstance
CEnvEntityMaker = {}

---
---Create an entity at the location of the maker.
---
function CEnvEntityMaker:SpawnEntity() end

---
---Create an entity at the location of a specified entity instance.
---
---@param entity EntityHandle
function CEnvEntityMaker:SpawnEntityAtEntityOrigin(entity) end

---
---Create an entity at a specified location and orientaton, orientation is Euler angle in degrees (pitch, yaw, roll).
---
---@param origin Vector
---@param angles Vector
function CEnvEntityMaker:SpawnEntityAtLocation(origin, angles) end

---
---Create an entity at the location of a named entity.
---
---@param name string
function CEnvEntityMaker:SpawnEntityAtNamedEntityOrigin(name) end
