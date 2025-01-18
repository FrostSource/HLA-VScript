---@meta

---
---The base class for entities.
---
---@class CBaseEntity : CEntityInstance
CBaseEntity = {}

---
---Adds the render effect flag.
---
---@param flags EffectFlags # The effect(s) to add
function CBaseEntity:AddEffects(flags) end

---
---Apply a Velocity Impulse.
---
---@param impulse Vector
function CBaseEntity:ApplyAbsVelocityImpulse(impulse) end

---
---Apply an Angular Velocity Impulse.
---
---@param angImpulse Vector
function CBaseEntity:ApplyLocalAngularVelocityImpulse(angImpulse) end

---
---Get float value for an entity attribute.
---
---@param name string # The name of the attribute
---@param default number # The default value to return if the attribute doesn't exist
---@return number # The attribute value
function CBaseEntity:Attribute_GetFloatValue(name, default) end

---
---Get int value for an entity attribute.
---
---@param name string # The name of the attribute
---@param default integer # The default value to return if the attribute doesn't exist
---@return number # The attribute value
function CBaseEntity:Attribute_GetIntValue(name, default) end

---
---Set float value for an entity attribute.
---
---@param name string # The name of the attribute
---@param value number # The value to set
function CBaseEntity:Attribute_SetFloatValue(name, value) end

---
---Set int value for an entity attribute.
---
---@param name string # The name of the attribute
---@param value integer # The value to set
function CBaseEntity:Attribute_SetIntValue(name, value) end

---
---Delete an entity attribute.
---
---@param name string # The name of the attribute
function CBaseEntity:DeleteAttribute(name) end

---
---Emit a sound event from the entity.
---
---@param soundName string # The name of the sound
function CBaseEntity:EmitSound(soundName) end

---
---Plays/modifies a sound from this entity. changes sound if Pitch and/or Volume or SoundTime is > 0.
---
---@param soundName string
---@param pitch integer
---@param volume number
---@param soundTime number
function CBaseEntity:EmitSoundParams(soundName, pitch, volume, soundTime) end

---
---Get the QAngles that this entity is looking at.
---
---@return QAngle
function CBaseEntity:EyeAngles() end

---
---Get vector to eye position - absolute coords.
---
---@return Vector
function CBaseEntity:EyePosition() end

---
---If in hierarchy, get the first move child.
---
---@return EntityHandle
function CBaseEntity:FirstMoveChild() end

---
---Follow the passed entity by parenting and matching the origin and angle, with optional bone merging.
---
---@param entity EntityHandle|nil # The entity to follow, or nil to stop following
---@param boneMerge boolean # Whether to bone merge with the entity
function CBaseEntity:FollowEntity(entity, boneMerge) end

---
---Gathers into a table, the criteria that would be used for response queries on this entity.
---
---This is the same as the table that is passed to response rule script function callbacks.
---
---See [CriteriaTable](lua://CriteriaTable)
---
---@param result table # The table to gather criteria into.
function CBaseEntity:GatherCriteria(result) end

---
---Returns the world space origin of the entity.
---
---@return Vector
function CBaseEntity:GetAbsOrigin() end

---
---Get the absolute entity scale.
---
---@return number
function CBaseEntity:GetAbsScale() end

---
---Get the entity pitch, yaw, roll as QAngle
---
---@return QAngle
function CBaseEntity:GetAngles() end

---
---Get entity pitch, yaw, roll as a vector
---
---@return Vector
function CBaseEntity:GetAnglesAsVector() end

---
---Get the local angular velocity - returns a vector of pitch,yaw,roll
---
---@return Vector
function CBaseEntity:GetAngularVelocity() end

---
---Get Base velocity.
---
---@return Vector
function CBaseEntity:GetBaseVelocity() end

---
---Get a vector containing max bounds, in local space.
---
---Does not take entity scale into account.
---Use [CBaseModelEntity:SetSize](lua://CBaseModelEntity.SetSize) to set the correct internal size.
---
---@return Vector
function CBaseEntity:GetBoundingMaxs() end

---
---Get a vector containing min bounds, in local space.
---
---Does not take entity scale into account.
---Use [CBaseModelEntity:SetSize](lua://CBaseModelEntity.SetSize) to set the correct internal size.
---
---@return Vector
function CBaseEntity:GetBoundingMins() end

---
---Get a table containing the 'Mins' & 'Maxs' vector bounds, in local space.
---
---Does not take entity scale into account.
---Use [CBaseModelEntity:SetSize](lua://CBaseModelEntity.SetSize) to set the correct internal size.
---
---@return { Mins: Vector, Maxs: Vector }
function CBaseEntity:GetBounds() end

---
---Get vector to center of object - absolute coords.
---
---@return Vector
function CBaseEntity:GetCenter() end

---
---Get the entities parented to this entity. Including children of children.
---
---**WARNING: This function causes a memory leak that grows with each call.**
---
---@return EntityHandle[]
function CBaseEntity:GetChildren() end

---
---Looks up a context and returns it if available. May return string, float, or nil (if the context isn't found).
---
---@param name string # The name of the context
---@return (string|number)? # The value of the context
function CBaseEntity:GetContext(name) end

---
---Get the forward Vector of the entity.
---
---@return Vector
function CBaseEntity:GetForwardVector() end

---
---Get the health of the entity.
---
---@return integer
function CBaseEntity:GetHealth() end

---
---Get entity relative angular velocity.
---
---Only functional on prop_dynamic entities with the Scripted Movement property set.
---
---@return QAngle
function CBaseEntity:GetLocalAngularVelocity() end

---
---Get entity pitch, yaw, roll as a QAngle, in the space of the entity's parent or attachment point.
---
---@return QAngle
function CBaseEntity:GetLocalAngles() end

---
---Get entity origin as a Vector, in the space of the entity's parent or attachment point.
---
---@return Vector
function CBaseEntity:GetLocalOrigin() end

---
---	Get the entity scale relative to that of its parent.
---
---@return number
function CBaseEntity:GetLocalScale() end

---
---Get Entity relative velocity.
---
---Only functional on prop_dynamic entities with the Scripted Movement property set.
---
---@return Vector
function CBaseEntity:GetLocalVelocity() end

---
---Get the mass of an entity.
---
---@return number
function CBaseEntity:GetMass() end

---
---The default maximum health of the entity.
---
---Entity health is not clamped to this value and can be set higher with [CBaseEntity:SetHealth](lua://CBaseEntity.SetHealth).
---
---@return integer
function CBaseEntity:GetMaxHealth() end

---
---Returns the asset path name of the model.
---
---@return string
function CBaseEntity:GetModelName() end

---
---If in hierarchy, retrieves the entity's parent.
---
---@return EntityHandle
function CBaseEntity:GetMoveParent() end

---
---Returns the origin of the entity.
---
---@return Vector
function CBaseEntity:GetOrigin() end

---
---Gets this entity's owner.
---
---This is not the same as the parent.
---
---@return EntityHandle
function CBaseEntity:GetOwner() end

---
---Get the owner entity, if there is one.
---
---*Appears to be the same as [CBaseEntity:GetOwner](lua://CBaseEntity.GetOwner).*
---
---@return EntityHandle
function CBaseEntity:GetOwnerEntity() end

---
---Get the right vector of the entity.
---
---@return Vector
function CBaseEntity:GetRightVector() end

---
---If in hierarchy, walks up the hierarchy to find the root parent.
---
---@return EntityHandle
function CBaseEntity:GetRootMoveParent() end

---
---Returns float duration of the sound.
---
---**Note: Returns 2 for all sounds unless `vsnd_duration` property is set on sound event (not all sound events support this).**
---
---@param soundName string
---@param actormodelname string|""
---@return number
function CBaseEntity:GetSoundDuration(soundName, actormodelname) end

---
---Returns the spawn group handle of this entity.
---
---@return integer
function CBaseEntity:GetSpawnGroupHandle() end

---
---Get the team of the entity.
---
---*Appears to always return 0 in Half Life Alyx.*
---
---@return integer
function CBaseEntity:GetTeam() end

---
---Get the team number of this entity.
---
---*Appears to be the same as [CBaseEntity:GetTeam](lua://CBaseEntity.GetTeam).*
---
---@return integer
function CBaseEntity:GetTeamNumber() end

---
---Get the up vector of the entity.
---
---@return Vector
function CBaseEntity:GetUpVector() end

---
---World space velocity of the entity.
---
---@return Vector
function CBaseEntity:GetVelocity() end

---
---See if an entity has a particular attribute.
---
---@param name string
---@return boolean
function CBaseEntity:HasAttribute(name) end

---
---Is the entity alive
---
---@return boolean
function CBaseEntity:IsAlive() end

---
---Is this entity an CAI_BaseNPC?
---
---@return boolean
function CBaseEntity:IsNPC() end

---
---Returns the invalidity of the entity. Opposite of [IsValidEntity](lua://IsValidEntity).
---
---@return boolean # true if the entity is invalid.
function CBaseEntity:IsNull() end

---
---Is the entity a player
---
---@return boolean
function CBaseEntity:IsPlayer() end

---
---Deletes the entity (UTIL_Remove())
---
function CBaseEntity:Kill() end

---
---	Return the next entity in the same movement hierarchy.
---
---@return EntityHandle
function CBaseEntity:NextMovePeer() end

---
---Takes duration, value for a temporary override.
---
---Doesn't seem to work.
---@param duration number
---@param friction number
function CBaseEntity:OverrideFriction(duration, friction) end

---
---Precache a sound for later playing.
---
---@param soundname string
function CBaseEntity:PrecacheScriptSound(soundname) end

---
---Removes the render effect flag.
---
---@param flags integer
function CBaseEntity:RemoveEffects(flags) end

---
---Set entity world space pitch, yaw, roll by component.
---
---@param pitch number
---@param yaw number
---@param roll number
function CBaseEntity:SetAbsAngles(pitch, yaw, roll) end

---
---	Sets the world space entity origin.
---
---@param origin Vector
function CBaseEntity:SetAbsOrigin(origin) end

---
---Set the absolute scale of the entity.
---
---@param scale number
function CBaseEntity:SetAbsScale(scale) end

---
---Set entity pitch, yaw, roll by component. If parented, this is set relative to the parents local space.
---
---@param pitch number
---@param yaw number
---@param roll number
function CBaseEntity:SetAngles(pitch, yaw, roll) end

---
---Set the local angular velocity - takes float pitch, yaw, roll velocities.
---
---Only functional on prop_dynamic entities with the Scripted Movement property set.
---
---Use [SetPhysAngularVelocity](lua://SetPhysAngularVelocity) for physics objects.
---
---@param pitch number
---@param yaw number
---@param roll number
function CBaseEntity:SetAngularVelocity(pitch, yaw, roll) end

---
---Set the position of the constraint.
---
---@param pos Vector
function CBaseEntity:SetConstraint(pos) end

---
---Store any key/value pair in this entity's dialog contexts. Value must be a string. Will last for duration (set 0 to mean 'forever').
---
---@param name string # The name of the context
---@param value string|nil # The value of the context
---@param duration number # The duration of the context
function CBaseEntity:SetContext(name, value, duration) end

---
---Store any key/value pair in this entity's dialog contexts. Value must be a number (int or float). Will last for duration (set 0 to mean 'forever').
---
---@param name string # The name of the context
---@param value number # The value of the context
---@param duration number # The duration of the context
function CBaseEntity:SetContextNum(name, value, duration) end

---
---Set a context think function on this entity.
---
---The think function should return the number of seconds until the next call.
---
---@param thinkName string|nil # Name of the think
---@param thinkFunction fun():number?|nil # Think function or `nil` to stop the think
---@param initialDelay number # Initial delay before the function is first called
function CBaseEntity:SetContextThink(thinkName, thinkFunction, initialDelay) end

---
---Set entity targetname.
---
---@param name string
function CBaseEntity:SetEntityName(name) end

---
---Set the orientation of the entity to have this forward vector.
---
---@param forwardVec Vector
function CBaseEntity:SetForwardVector(forwardVec) end

---
---Set PLAYER friction, ignored for objects
---
---**Note: Only applies to NoVR player.**
---
---@param friction number
function CBaseEntity:SetFriction(friction) end

---
---Set PLAYER gravity, ignored for objects
---
---**Note: Only applies to NoVR player.**
---
---@param gravity number
function CBaseEntity:SetGravity(gravity) end

---
---Set entity health. Can be above max health.
---
---@param hp integer
function CBaseEntity:SetHealth(hp) end

---
---Set the entity pitch, yaw, roll by component, relative to the local space of the entity's parent or attachment point.
---
---@param pitch number
---@param yaw number
---@param roll number
function CBaseEntity:SetLocalAngles(pitch, yaw, roll) end

---
---Set entity local origin. Relative to the local space of the entity's parent or attachment point.
---
---@param origin Vector
function CBaseEntity:SetLocalOrigin(origin) end

---
---Set the entity scale relative to the entity's parent.
---
---@param scale number
function CBaseEntity:SetLocalScale(scale) end

---
---Set the mass of an entity.
---
---@param mass number
function CBaseEntity:SetMass(mass) end

---
---Set entity's max health.
---
---@param maxHP integer
function CBaseEntity:SetMaxHealth(maxHP) end

---
---Set entity's absolute origin.
---
---@param origin Vector
function CBaseEntity:SetOrigin(origin) end

---
---Sets this entity's owner.
---
---@param owningEntity EntityHandle|nil # The owning entity or `nil` to clear
function CBaseEntity:SetOwner(owningEntity) end

---
---Set the parent for this entity. The attachment is optional, pass an empty string to not use it.
---
---@param parent EntityHandle|nil # The entity to parent to, or `nil` to unparent
---@param attachmentName string|"" # The name of the attachment to parent to
function CBaseEntity:SetParent(parent, attachmentName) end

---
---Set entity team.
---
---@param team integer
function CBaseEntity:SetTeam(team) end

---
---Sets a thinker function to be called periodically.
---
---If `thinkFunction` is a string the function will be looked up in the calling instance or given `context` to find the function.
---
---The first parameter of the function is the handle of the entity that called SetThink.
---
---The function should return the number of seconds until the next call, or nil to stop.
---
---@param thinkFunction function|string # The function or name of the function
---@param thinkName string # Name of the think
---@param initialDelay number? # Initial delay before the function is first called
---@param context EntityHandle? # If `thinkFunction` is a string, use this context to find the function, otherwise ignored
function CBaseEntity:SetThink(thinkFunction, thinkName, initialDelay, context) end

---
---Sets the world space velocity of the entity.
---
---Only functional on prop_dynamic entities with the Scripted Movement property set.
---
---@param velocity Vector
function CBaseEntity:SetVelocity(velocity) end

---
---Stops the named sound event playing from this entity.
---
---@param soundName string
function CBaseEntity:StopSound(soundName) end

---
---Stops the named thinker function.
---
---@param thinkName string
function CBaseEntity:StopThink(thinkName) end

---
---Apply damage to this entity. Use [CreateDamageInfo](lua://CreateDamageInfo) to create a damageinfo object.
---
---@param damageInfo CTakeDamageInfo
---@return integer
function CBaseEntity:TakeDamage(damageInfo) end

---
---Returns the input Vector transformed from entity to world space.
---
---*Does not respect entity scale*
---
---@param point Vector # The local space vector to transform
---@return Vector # The vector in world space
function CBaseEntity:TransformPointEntityToWorld(point) end

---
---Returns the input Vector transformed from world to entity space.
---
---*Does not respect entity scale*
---
---@param point Vector # The world space vector to transform
---@return Vector # The vector in local space
function CBaseEntity:TransformPointWorldToEntity(point) end

---
---Fires off this entity's OnTrigger responses.
---
function CBaseEntity:Trigger() end

---
---Validates the private script scope and creates it if one doesn't exist.
---
function CBaseEntity:ValidatePrivateScriptScope() end

---
---Returns true if the entity is instance of the given class.
---
---E.g.
---
---    thisEntity:IsInstance(CBaseEntity)
---
---@param classOrClassName string|table # The name or table of the class
---@return boolean
function CBaseEntity:IsInstance(classOrClassName) end
