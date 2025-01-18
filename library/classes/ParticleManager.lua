---@meta

---
---Allows the creation and manipulation of particle systems.
---
---@class ParticleManager
ParticleManager = {}

---
---Creates a new particle effect. Returns the index of the created effect.
---
---@param particleName string # The path to the particle
---@param particleAttach ParticleAttachmentType # The attachment type
---@param owningEntity EntityHandle # The entity that owns the particle
---@return integer particleID # The ID of the created particle
function ParticleManager:CreateParticle(particleName, particleAttach, owningEntity) end

---
---Creates a new particle effect that only plays for the specified player. Returns the index of the created effect.
---
---@param particleName string # The path to the particle
---@param particleAttach ParticleAttachmentType # The attachment type
---@param owningEntity EntityHandle # The entity that owns the particle
---@param owningPlayer CBasePlayer # The player that owns the particle
---@return integer particleID # The ID of the created particle
function ParticleManager:CreateParticleForPlayer(particleName, particleAttach, owningEntity, owningPlayer) end

---
---Destroys particle.
---
---@param particleID integer # The ID of the particle to destroy
---@param immediately boolean # Destroy the particle immediately
function ParticleManager:DestroyParticle(particleID, immediately) end

---
---No Description Set
---
---@param string_1 string
---@param handle_2 unknown
---@return string
function ParticleManager:GetParticleReplacement(string_1, handle_2) end

---
---Frees the specified particle index.
---
---@param particleID integer # The ID of the particle
function ParticleManager:ReleaseParticleIndex(particleID) end

---
---No Description Set
---
---@param alwaysSimulate integer
function ParticleManager:SetParticleAlwaysSimulate(alwaysSimulate) end

---
---Set the control point data for a control on a particle effect.
---
---@param particleID integer # The ID of the particle
---@param controlIndex integer # The index of the control
---@param controlData Vector # The control data
function ParticleManager:SetParticleControl(particleID, controlIndex, controlData) end

---
---Attaches the control point to an entity.
---
---@param particleID integer # The ID of the particle
---@param controlIndex integer # The index of the control
---@param entity EntityHandle # The entity to attach to
---@param attachType ParticleAttachmentType # The attachment type
---@param attachment string|nil # The model attachment to use. Use `nil` for no attachment instead of blank string to avoid warnings.
---@param origin Vector # The origin offset of the attachment
---@param unknown boolean
function ParticleManager:SetParticleControlEnt(
	particleID,
	controlIndex,
	entity,
	attachType,
	attachment,
	origin,
	unknown
)
end

---
---Set the forward direction for a control point on a particle effect.
---
---@param particleID integer # The ID of the particle
---@param controlIndex integer # The index of the control
---@param forward Vector # The normalized forward direction
function ParticleManager:SetParticleControlForward(particleID, controlIndex, forward) end

---
---Set the linear offset for a control on a particle effect.
---
---@param particleID integer # The ID of the particle
---@param controlIndex integer # The index of the control
---@param offset Vector # The linear offset
function ParticleManager:SetParticleControlOffset(particleID, controlIndex, offset) end

---
---Set the orientation for a control point on a particle effect.
---
---*Note: This is left handed -- bad!!*
---
---@param particleID integer # The ID of the particle
---@param controlIndex integer # The index of the control
---@param forward Vector # The normalized forward direction
---@param right Vector # The normalized right direction
---@param up Vector # The normalized up direction
function ParticleManager:SetParticleControlOrientation(particleID, controlIndex, forward, right, up) end

---
---Set the orientation for a control point on a particle effect.
---
---@param particleID integer # The ID of the particle
---@param controlIndex integer # The index of the control
---@param forward Vector # The normalized forward direction
---@param left Vector # The normalized left direction
---@param up Vector # The normalized up direction
function ParticleManager:SetParticleControlOrientationFLU(particleID, controlIndex, forward, left, up) end
