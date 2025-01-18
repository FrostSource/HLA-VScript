---@meta

---
---No Description Set
---
---@class CCustomGameEventManager
CustomGameEventManager = {}

---
---( string EventName, func CallbackFunction ) - Register a callback to be called when a particular custom event arrives. Returns a listener ID that can be used to unregister later.
---
---@param string_1 string
---@param handle_2 unknown
---@return integer
function CustomGameEventManager:RegisterListener(string_1, handle_2) end

---
---( string EventName, table EventData )
---
---@param string_1 string
---@param handle_2 unknown
function CustomGameEventManager:Send_ServerToAllClients(string_1, handle_2) end

---
---( Entity Player, string EventName, table EventData )
---
---@param handle_1 unknown
---@param string_2 string
---@param handle_3 unknown
function CustomGameEventManager:Send_ServerToPlayer(handle_1, string_2, handle_3) end

---
---( int TeamNumber, string EventName, table EventData )
---
---@param int_1 integer
---@param string_2 string
---@param handle_3 unknown
function CustomGameEventManager:Send_ServerToTeam(int_1, string_2, handle_3) end

---
---( int ListnerID ) - Unregister a specific listener
---
---@param int_1 integer
function CustomGameEventManager:UnregisterListener(int_1) end