---@meta

---
---DamageInfo handle returned by [CreateDamageInfo](lua://CreateDamageInfo).
---
---@class CTakeDamageInfo
CTakeDamageInfo = {}

---
---Adds to the damage value.
---
---@param addAmount number
function CTakeDamageInfo:AddDamage(addAmount) end

---
---Adds damage type bit flags.
---
---@param bitsDamageType DamageInfoTypes
function CTakeDamageInfo:AddDamageType(bitsDamageType) end

---
---Returns if friendly fire damage is allowed.
---
---@return boolean
function CTakeDamageInfo:AllowFriendlyFire() end

---
---Returns if the base damage is valid.
---
---@return boolean
function CTakeDamageInfo:BaseDamageIsValid() end

---
---Returns if the damage can be blocked.
---
---@return boolean
function CTakeDamageInfo:CanBeBlocked() end

---
---Returns the ammo type.
---
---@return integer
function CTakeDamageInfo:GetAmmoType() end

---
---Returns the attacker entity.
---
---@return EntityHandle
function CTakeDamageInfo:GetAttacker() end

---
---Returns the base damage.
---
---@return number
function CTakeDamageInfo:GetBaseDamage() end

---
---Returns the damage value.
---
---@return number
function CTakeDamageInfo:GetDamage() end

---
---
---
---@return integer
function CTakeDamageInfo:GetDamageCustom() end

---
---Returns the damage force.
---
---@return Vector
function CTakeDamageInfo:GetDamageForce() end

---
---Returns the damage position.
---
---@return Vector
function CTakeDamageInfo:GetDamagePosition() end

---
---
---
---@return number
function CTakeDamageInfo:GetDamageTaken() end

---
---Returns the damage type bitfield.
---
---@return integer
function CTakeDamageInfo:GetDamageType() end

---
---Returns the inflictor entity (usually the weapon).
---
---@return EntityHandle
function CTakeDamageInfo:GetInflictor() end

---
---
---
---@return number
function CTakeDamageInfo:GetMaxDamage() end

---
---
---
---@return number
function CTakeDamageInfo:GetOriginalDamage() end

---
---
---
---@return number
function CTakeDamageInfo:GetRadius() end

---
---
---
---@return Vector
function CTakeDamageInfo:GetReportedPosition() end

---
---
---
---@return number
function CTakeDamageInfo:GetStabilityDamage() end

---
---Returns if the damage type has these bits set.
---
---@param bitsToTest DamageInfoTypes
---@return boolean
function CTakeDamageInfo:HasDamageType(bitsToTest) end

---
---Scales the damage.
---
---@param scaleAmount number
function CTakeDamageInfo:ScaleDamage(scaleAmount) end

---
---Set if friendly fire damage is allowed.
---
---@param allow boolean
function CTakeDamageInfo:SetAllowFriendlyFire(allow) end

---
---
---
---@param ammoType integer
function CTakeDamageInfo:SetAmmoType(ammoType) end

---
---Set the attacker entity.
---
---@param attacker EntityHandle
function CTakeDamageInfo:SetAttacker(attacker) end

---
---Set if the damage can be blocked.
---
---@param block boolean
function CTakeDamageInfo:SetCanBeBlocked(block) end

---
---Set new damage value.
---
---@param damage number
function CTakeDamageInfo:SetDamage(damage) end

---
---
---
---@param damageCustom integer
function CTakeDamageInfo:SetDamageCustom(damageCustom) end

---
---Set the damage force vector.
---
---@param damageForce Vector
function CTakeDamageInfo:SetDamageForce(damageForce) end

---
---Set the world space damage position.
---
---@param damagePosition Vector
function CTakeDamageInfo:SetDamagePosition(damagePosition) end

---
---
---
---@param damageTaken integer
function CTakeDamageInfo:SetDamageTaken(damageTaken) end

---
---Set the damage type bitfield.
---
---@param bitsDamageType DamageInfoTypes
function CTakeDamageInfo:SetDamageType(bitsDamageType) end

---
---
---
---@param maxDamage number
function CTakeDamageInfo:SetMaxDamage(maxDamage) end

---
---
---
---@param originalDamage number
function CTakeDamageInfo:SetOriginalDamage(originalDamage) end

---
---
---
---@param radius number
function CTakeDamageInfo:SetRadius(radius) end

---
---
---
---@param reportedPosition Vector
function CTakeDamageInfo:SetReportedPosition(reportedPosition) end

---
---
---
---@param stabilityDamage number
function CTakeDamageInfo:SetStabilityDamage(stabilityDamage) end
