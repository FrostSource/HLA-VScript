---@meta

---
---Entity class for env_projectedtexture.
---
---@class CEnvProjectedTexture : CBaseEntity
CEnvProjectedTexture = {}

---
---Set light maximum range.
---
---@param range number
function CEnvProjectedTexture:SetFarRange(range) end

---
---Set light linear attenuation value.
---
---@param atten number
function CEnvProjectedTexture:SetLinearAttenuation(atten) end

---
---Set light minimum range.
---
---@param range number
function CEnvProjectedTexture:SetNearRange(range) end

---
---Set light quadratic attenuation value.
---
---@param atten number
function CEnvProjectedTexture:SetQuadraticAttenuation(atten) end

---
---Turn on/off light volumetrics.
---
---@param on boolean
---@param intensity number
---@param noise number
---@param planes integer
---@param planeOffset number
function CEnvProjectedTexture:SetVolumetrics(on, intensity, noise, planes, planeOffset) end
