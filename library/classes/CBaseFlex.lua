---@meta

---
---Animated entities that have vertex flex capability.
---
---@class CBaseFlex : CBaseAnimating
CBaseFlex = {}

---
---Finds a flex controller by name, returns the index, -1 if not found
---
---@param flexControllerName string
---@return integer
function CBaseFlex:FindFlexController(flexControllerName) end

---
---	Returns the instance of the oldest active scene entity (if any).
---
---@return CSceneEntity?
function CBaseFlex:GetCurrentScene() end

---
---Gets the weight of a flex controller specified by index, use FindFlexController to get the index of a flex controller by name.
---
---@param flexControllerIndex integer
---@return unknown|number
function CBaseFlex:GetFlexWeight(flexControllerIndex) end

---
---Play the specified .vcd file.
---
---@param sceneFile string
---@param delay number
---@return number
function CBaseFlex:ScriptPlayScene(sceneFile, delay) end

---
---Sets the weight of a flex controller specified by index, use FindFlexController to get the index of a flex controller by name.
---
---@param flexControllerIndex integer
---@param weight number
function CBaseFlex:SetFlexWeight(flexControllerIndex, weight) end