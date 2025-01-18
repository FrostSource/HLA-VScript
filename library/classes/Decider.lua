---@meta

---
---No Description Set
---
---@class Decider
Decider = {}

---
---Add a CRule object (defined in rulescript_base.nut)
---
---@param rule unknown
---@return boolean
function Decider:AddRule(rule) end

---
---Returns an array of all matching responses. If leeway is nonzero, all results scoring within 'leeway' of the best score return.
---
---@param query unknown
---@param leeway number
---@return unknown
function Decider:FindAllMatches(query, leeway) end

---
---Query the database and return the best result found. If multiple of equal score found, an arbitrary one returns.
---
---@param query unknown
---@return unknown
function Decider:FindBestMatch(query) end