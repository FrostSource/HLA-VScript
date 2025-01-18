---@meta

---
---Class for angles.
---
---@class QAngle
---@field x number # Pitch angle.
---@field y number # Yaw angle.
---@field z number # Roll angle.
---@field __index table
---@operator add(QAngle): QAngle # Overloaded +. Adds QAngles together. Note: Use RotateOrientation() instead to properly rotate angles.
---@operator div(QAngle|Vector|number): QAngle # Overloaded /. Divides QAngles. Components will always be `nan` or `inf`.
---@operator mul(QAngle|Vector|number): QAngle # Overloaded * Returns the QAngle multiplied.
---@operator sub(QAngle|Vector|number): QAngle # Overloaded -. Subtracts QAngles.
---@operator concat: string # Overloaded .. Converts the QAngle to a human readable string.
local QAngleClass = {}

---
---Creates a new QAngle.
---
---@param pitch number? # Pitch angle, default 0
---@param yaw number? # Yaw angle, default 0
---@param roll number? # Roll angle, default 0
---@return QAngle # The new QAngle
function QAngle(pitch, yaw, roll) end

---
---Overloaded ==. Tests for Equality
---
---@param qangle QAngle
---@return QAngle
function QAngleClass:__eq(qangle) end

---
---Returns the QAngle as a forward vector.
---
---@return Vector
function QAngleClass:Forward() end

---
---Returns the QAngle as a left vector.
---
---@return Vector
function QAngleClass:Left() end

---
---Returns the QAngle as an up vector.
---
---@return Vector
function QAngleClass:Up() end