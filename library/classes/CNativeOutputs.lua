---@meta

---
---Container for holding outputs published by scripted entity classes to the game code.
---
---@class CNativeOutputs
CNativeOutputs = {}

---
---Creates a new CNativeOutputs object.
---
---@return CNativeOutputs
function CNativeOutputs() end

---
---Add an output.
---
---@param outputName string
---@param description string
function CNativeOutputs:AddOutput(outputName, description) end

---
---Initialize with specified number of outputs.
---
---@param numOutputs integer
function CNativeOutputs:Init(numOutputs) end
