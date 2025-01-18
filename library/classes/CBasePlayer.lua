---@meta

---
---Entity class for players.
---
---@class CBasePlayer : CBaseCombatCharacter
CBasePlayer = {}

---
---Returns whether this player's chaperone bounds are visible.
---
---@return boolean
function CBasePlayer:AreChaperoneBoundsVisible() end

---
---Returns the value of the analog action for the given hand. See [ANALOG_INPUT_ACTION](lua://ANALOG_INPUT_ACTION) for action index values.
---
---*Note: Only reports input when headset is awake. Will still transmit input when controllers lose tracking.*
---
---@param literalHandType integer # The literal hand type, see [CPropVRHand:GetLiteralHandType](lua://CPropVRHand.GetLiteralHandType)
---@param analogAction AnalogInputAction # The analog action
---@return Vector # The value of the analog action
function CBasePlayer:GetAnalogActionPositionForHand(literalHandType, analogAction) end

---
---Returns the HMD anchor entity for this player if it exists.
---
---@return CEntityInstance?
function CBasePlayer:GetHMDAnchor() end

---
---Returns the HMD Avatar entity for this player if it exists.
---
---@return CPropHMDAvatar?
function CBasePlayer:GetHMDAvatar() end

---
---Returns the world position of a VR play area corner.
---
---These corners are not accurate to the shape of the play area
---but the maximum extent of the play area..
---
---@param point 0|1|2|3 # The corner index
---@return Vector
function CBasePlayer:GetPlayArea(point) end

---
---Returns the player's user ID.
---
---@return integer
function CBasePlayer:GetUserID() end

---
---Returns the type of controller being used while in VR.
---
---@return ControllerType
function CBasePlayer:GetVRControllerType() end

---
---Returns true if the digital action is on for the given hand. See [DIGITAL_INPUT_ACTION](lua://DIGITAL_INPUT_ACTION) for action index values.
---
---*Note: Only reports input when headset is awake. Will still transmit input when controllers lose tracking.*
---
---@param literalHandType integer # The literal hand type, see [CPropVRHand:GetLiteralHandType](lua://CPropVRHand.GetLiteralHandType)
---@param digitalAction DigitalInputAction # The digital action
---@return boolean # True if the digital action is being pressed
function CBasePlayer:IsDigitalActionOnForHand(literalHandType, digitalAction) end

---
---Returns true if the player is in noclip mode.
---
---@return boolean
function CBasePlayer:IsNoclipping() end

---
---Returns true if the use key is pressed.
---
---@return boolean
function CBasePlayer:IsUsePressed() end

---
---Returns true if the controller button is pressed.
---
---*Non-functional for motion controller buttons in Half-Life Alyx. Works with key bindings when VR is turned off.*
---
---@param nButton integer
---@return boolean
function CBasePlayer:IsVRControllerButtonPressed(nButton) end

---
---Returns true if the SteamVR dashboard is showing for this player.
---
---@return boolean
function CBasePlayer:IsVRDashboardShowing() end