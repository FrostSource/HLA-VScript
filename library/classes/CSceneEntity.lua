---@meta

---
---Choreographed scene which controls animation and/or dialog on one or more actors.
---
---@class CSceneEntity : CEntityInstance
CSceneEntity = {}

---
---Adds a team (by index) to the broadcast list
---
---@param int_1 integer
function CSceneEntity:AddBroadcastTeamTarget(int_1) end

---
---Cancel scene playback
---
function CSceneEntity:Cancel() end

---
---Returns length of this scene in seconds.
---
---@return number
function CSceneEntity:EstimateLength() end

---
---Get the camera.
---
---@return unknown
function CSceneEntity:FindCamera() end

---
---Given an entity reference, such as !target, get actual entity from scene object.
---
---@param string_1 string
---@return unknown
function CSceneEntity:FindNamedEntity(string_1) end

---
---If this scene is currently paused.
---
---@return boolean
function CSceneEntity:IsPaused() end

---
---If this scene is currently playing.
---
---@return boolean
function CSceneEntity:IsPlayingBack() end

---
---Given a dummy scene name and a vcd string, load the scene.
---
---@param string_1 string
---@param string_2 string
---@return boolean
function CSceneEntity:LoadSceneFromString(string_1, string_2) end

---
---Removes a team (by index) from the broadcast list.
---
---@param int_1 integer
function CSceneEntity:RemoveBroadcastTeamTarget(int_1) end

---
---Start scene playback, takes activatorEntity as param
---
---@param handle_1 unknown
function CSceneEntity:Start(handle_1) end
