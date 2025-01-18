---@meta

---
---A class containing methods involved in animations. Most model based entities inherit this.
---
---@class CBaseAnimating : CBaseModelEntity
CBaseAnimating = {}

---
---Returns the duration in seconds of the active sequence.
---
---@return number
function CBaseAnimating:ActiveSequenceDuration() end

---
---Get the attachment angles as a Pitch,Yaw,Roll vector
---
---@param attachmentIndex integer # The attachment id. Use [CBaseAnimating:ScriptLookupAttachment](lua://CBaseAnimating.ScriptLookupAttachment) to obtain.
---@return Vector # The attachment angles
function CBaseAnimating:GetAttachmentAngles(attachmentIndex) end

---
---Get the attachment forward vector.
---
---@param attachmentIndex integer # The attachment id. Use [CBaseAnimating:ScriptLookupAttachment](lua://CBaseAnimating.ScriptLookupAttachment) to obtain.
---@return Vector # The attachment forward vector
function CBaseAnimating:GetAttachmentForward(attachmentIndex) end

---
---Get the attachment origin vector
---
---@param attachmentIndex integer # The attachment id. Use [CBaseAnimating:ScriptLookupAttachment](lua://CBaseAnimating.ScriptLookupAttachment) to obtain.
---@return Vector # The attachment world origin
function CBaseAnimating:GetAttachmentOrigin(attachmentIndex) end

---
---Get the cycle of the animation, a [0-1] range.
---
---@return number
function CBaseAnimating:GetCycle() end

---
---Get the value of the given AnimGraph parameter.
---
---@param paramName string # The name of the parameter
---@return any # The parameter value
function CBaseAnimating:GetGraphParameter(paramName) end

---
---Get scale of entity's model.
---
---@return number
function CBaseAnimating:GetModelScale() end

---
---Returns the name of the active animation sequence.
---
---@return string
function CBaseAnimating:GetSequence() end

---
---Ask whether the main sequence is done playing
---
---@return boolean
function CBaseAnimating:IsSequenceFinished() end

---
---Registers a listener for changes to a tag in the entity's AnimGraph.
---
---Replaces existing script listener if any.
---
---@param animTagListenerFunc fun(tagName:string, status:integer)
function CBaseAnimating:RegisterAnimTagListener(animTagListenerFunc) end

---
---Sets the active animation sequence by name, resetting the current cycle.
---
---@param sequenceName string # The name of the sequence.
function CBaseAnimating:ResetSequence(sequenceName) end

---
---Get the named attachment id.
---
---@param attachmentName string # The name of the attachment
---@return integer # The attachment id
function CBaseAnimating:ScriptLookupAttachment(attachmentName) end

---
---Returns the duration in seconds of the given sequence name.
---
---@param sequenceName string # The name of the sequence
---@return number # The sequence duration
function CBaseAnimating:SequenceDuration(sequenceName) end

---
---Pass the desired look target in world space to the entity's AnimGraph.
---
---@param position Vector # The new position for the look target
function CBaseAnimating:SetGraphLookTarget(position) end

---
---Set the specific AnimGraph param value, type is inferred from the type in script.
---
---@param name string # The name of the parameter
---@param value any # The value to set the parameter to
function CBaseAnimating:SetGraphParameter(name, value) end

---
---Set the specific boolean parameter on or off for the entity's AnimGraph.
---
---@param name string # The name of the parameter
---@param value boolean # The value to set the parameter to
function CBaseAnimating:SetGraphParameterBool(name, value) end

---
---Pass the enum (int) value to the specified param for the entity's AnimGraph.
---
---@param name string # The name of the parameter
---@param value integer # The value to set the parameter to
function CBaseAnimating:SetGraphParameterEnum(name, value) end

---
---Pass the float value to the specified parameter for the entity's AnimGraph.
---
---@param name string # The name of the parameter
---@param value number # The value to set the parameter to
function CBaseAnimating:SetGraphParameterFloat(name, value) end

---
---Pass the int value to the specified parameter for the entity's AnimGraph.
---
---@param name string # The name of the parameter
---@param value integer # The value to set the parameter to
function CBaseAnimating:SetGraphParameterInt(name, value) end

---
---Pass the vector value to the specified parameter for the entity's AnimGraph.
---
---@param name string # The name of the parameter
---@param value Vector # The value to set the parameter to
function CBaseAnimating:SetGraphParameterVector(name, value) end

---
---Sets the model's scale.
---
---*This is functionally equivalent to [CBaseEntity:SetAbsScale](lua://CBaseEntity.SetAbsScale)*
---
---@param scale number # Relative scale factor
function CBaseAnimating:SetModelScale(scale) end

---
---Set the specified pose parameter to the specified value.
---
---@param name string # The name of the parameter as defined in ModelDoc
---@param value number # The value to set the parameter to
---@return number # The value of the parameter if successful, 0 otherwise
function CBaseAnimating:SetPoseParameter(name, value) end

---
---Sets the active sequence by name, keeping the current cycle.
---
---@param sequenceName string # The name of the sequence
function CBaseAnimating:SetSequence(sequenceName) end

---
---Stop the current animation by setting playback rate to 0.0.
---
function CBaseAnimating:StopAnimation() end

---
---Unregisters the current AnimTag listener, if any
---
---@param hScript any? # Unknown
function CBaseAnimating:UnregisterAnimTagListener(hScript) end