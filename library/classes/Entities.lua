---@meta

---
---Provides methods to enumerate all server-side entities.
---
---@class CEntities
Entities = {}

---
---Creates an entity by class name.
---
---**Warning: This does not initialize the created entity. Use the Spawn prefixed global functions instead.**
---
---@param className string
---@return EntityHandle
function Entities:CreateByClassname(className) end

---
---Finds all entities by class name. Returns an array containing all the found entities.
---
---You may use the wildcard * at the beginning or end of the string.
---
---@param className string # The class name to search for
---@return EntityHandle[] # Array of entities found
function Entities:FindAllByClassname(className) end

---
---Find entities by class name within a radius. Returns an array containing all the found entities.
---
---You may use the wildcard * at the beginning or end of the string.
---
---@param className string # The class name to search for
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle[] # Array of entities found
function Entities:FindAllByClassnameWithin(className, origin, maxRadius) end

---
---Find entities by model name. Returns an array containing all the found entities.
---
---@param modelName string # The model name to search for, should be the full asset path
---@return EntityHandle[] # Array of entities found
function Entities:FindAllByModel(modelName) end

---
---Find all entities by name. Returns an array containing all the found entities in it.
---
---@param name string # The targetname to search for
---@return EntityHandle[] # Array of entities found
function Entities:FindAllByName(name) end

---
---Find all entities by name within a radius. Returns an array containing all the found entities.
---
---@param name string # The targetname to search for
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle[] # Array of entities found
function Entities:FindAllByNameWithin(name, origin, maxRadius) end

---
---Find all entities with this target set. Returns an array containing all the found entities.
---
---*Note: Does not appear to work.*
---
---@param targetSet string
---@return EntityHandle[]
function Entities:FindAllByTarget(targetSet) end

---
---Find all entities within a radius. Returns an array containing all the found entities.
---
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle[] # Array of entities found
function Entities:FindAllInSphere(origin, maxRadius) end

---
---Find entities by class name. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---@param startFrom EntityHandle|nil # The entity to start the search from
---@param className string # The class name to search for
---@return EntityHandle # The found entity
function Entities:FindByClassname(startFrom, className) end

---
---Find the entity by class name nearest to a point.
---
---@param className string # The class name to search for
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle # The found entity
function Entities:FindByClassnameNearest(className, origin, maxRadius) end

---
---Find entities by class name within a radius. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---@param startFrom EntityHandle|nil # The entity to start the search from
---@param className string # The class name to search for
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle # The found entity
function Entities:FindByClassnameWithin(startFrom, className, origin, maxRadius) end

---
---Find entities by model name. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---@param startFrom EntityHandle|nil # The entity to start the search from
---@param modelName string # The model name to search for
---@return EntityHandle # The found entity
function Entities:FindByModel(startFrom, modelName) end

---
---Find entities by model name within a radius. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---@param startFrom EntityHandle|nil # The entity to start the search from
---@param modelName string # The model name to search for
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle # The found entity
function Entities:FindByModelWithin(startFrom, modelName, origin, maxRadius) end

---
---Find entities by name. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---@param startFrom EntityHandle|nil # The entity to start the search from
---@param searchString string # The targetname to search for
---@return EntityHandle # The found entity
function Entities:FindByName(startFrom, searchString) end

---
---Find entity by name nearest to a point.
---
---@param name string # The targetname to search for
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle # The found entity
function Entities:FindByNameNearest(name, origin, maxRadius) end

---
---Find entities by name within a radius. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---@param startFrom EntityHandle|nil # The entity to start the search from
---@param name string # The targetname to search for
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle # The found entity
function Entities:FindByNameWithin(startFrom, name, origin, maxRadius) end

---
---Find entities by targetname. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---*Note: Does not appear to work.*
---
---@param startFrom EntityHandle|nil
---@param targetName string
---@return EntityHandle
function Entities:FindByTarget(startFrom, targetName) end

---
---Find entities within a radius. Pass nil to start an iteration, or reference to a previously found entity to continue a search.
---
---@param startFrom EntityHandle|nil # The entity to start the search from
---@param origin Vector # The origin to search around
---@param maxRadius number # The radius from the origin to search in
---@return EntityHandle # The found entity
function Entities:FindInSphere(startFrom, origin, maxRadius) end

---
---Begin an iteration over all entities in the map.
---
---@return EntityHandle # The first entity
function Entities:First() end

---
---Get the local player.
---
---@return CHL2_Player
function Entities:GetLocalPlayer() end

---
---Continue an iteration over the entities in the map, providing reference to a previously found entity.
---
---If passing `nil`, works the same as [Entities:First](lua://Entities.First).
---
---@param startFrom EntityHandle|nil # The entity to search from
---@return EntityHandle # The next entity
function Entities:Next(startFrom) end
