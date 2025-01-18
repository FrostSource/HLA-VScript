---@meta

---
---3D vector class.
---
---@class Vector
---@field x number X-axis
---@field y number Y-axis
---@field z number Z-axis
---@field __index string
---@operator add(Vector|number): Vector # Overloaded +. Adds vectors together.
---@operator div(Vector|number): Vector # Overloaded /. Divides vectors.
---@operator len(Vector): number # Overloaded # returns the length of the vector.
---@operator mul(Vector|number): Vector # Overloaded * returns the vectors multiplied together. can also be used to multiply with scalars.
---@operator sub(Vector|number): Vector # Overloaded -. Subtracts vectors.
---@operator unm: Vector
---@operator concat: string # Overloaded .. Converts the vector to a human readable string.
local VectorClass = {}

---
---Creates a new vector with the specified Cartesian coordinates.
---
---@param x number? # The x-axis coordinate, default 0
---@param y number? # The y-axis coordinate, default 0
---@param z number? # The z-axis coordinate, default 0
---@return Vector # The new vector
function Vector(x, y, z) end

---
---Overloaded ==. Tests for Equality.
---
---@param vector Vector
---@return boolean
function VectorClass:__eq(vector) end

---
---Cross product of two vectors.
---
---@param vector Vector
---@return Vector
function VectorClass:Cross(vector) end

---
---Dot product of two vectors.
---
---@param vector Vector
---@return number
function VectorClass:Dot(vector) end

---
---Length of the Vector.
---
---You can also use the # operator.
---
---@return number
function VectorClass:Length() end

---
---Length of the Vector in the XY plane.
---
---@return number
function VectorClass:Length2D() end

---
---Linear interpolation between the vector and the passed in target over t = [0,1].
---
---@param target Vector # The target vector to interpolate towards
---@param t number # The interpolation factor, ranging from 0 to 1
---@return Vector # The resulting vector after linear interpolation
function VectorClass:Lerp(target, t) end

---
---Returns the vector normalized.
---
---@return Vector
function VectorClass:Normalized() end