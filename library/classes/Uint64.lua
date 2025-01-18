---@meta

---
---Integer with binary operations. Used for motion controller button masks.
---
---@class Uint64
Uint64 = {}

---
---Performs bitwise AND between two integers.
---
---@param operand Uint64
---@return integer
function Uint64:BitwiseAnd(operand) end

---
---Performs bitwise OR between two integers.
---
---@param operand Uint64
---@return integer
function Uint64:BitwiseOr(operand) end

---
---Performs bitwise XOR between two integers.
---
---@param operand Uint64
---@return integer
function Uint64:BitwiseXor(operand) end

---
---Performs bitwise NOT between two integers.
---
---@param operand Uint64
---@return integer
function Uint64:BitwiseNot(operand) end

---
---Clears the specified bit.
---
---@param bitValue integer
---@return integer
function Uint64:ClearBit(bitValue) end
---
---Checks if a bit is set.
---
---@param bitValue integer
---@return boolean
function Uint64:IsBitSet(bitValue) end

---
---Sets the specified bit.
---
---@param bitValue integer
---@return integer
function Uint64:SetBit(bitValue) end

---
---Toggles the specified bit.
---
---@param bitValue integer
---@return integer
function Uint64:ToggleBit(bitValue) end

---
---Returns a hexadecimal string representation of the integer.
---
---@return string
function Uint64:ToHexString() end
