---@meta

---
---Global functions. These can be called without any class.
---

---
---Prints any table keys/values with deep recursion.
---
---@param tbl table
function DeepPrintTable(tbl) end

---
---Returns a string like "foo.nut:53"
---with the source file and line number of its caller.
---returns the empty string if it couldn't get the source file and line number of its caller.
---
---**WARNING: This function is implemented incorrectly by Valve and will throw an error**
---
---@deprecated
---@return string
function _sourceline() end

---
---A function to re-lookup a function by name every time.
---
---Inside developer mode (dev > 0) this returns a function that checks for the existence of `name` every time it's called.
---
---Outside developer mode (dev < 1) this just returns the function.
---
---@param scope table # Scope/context that the named function belongs in.
---@param name string # Name of the function to wrap.
function Dynamic_Wrap(scope, name) end

--#region Math

---
---Returns the number of degrees difference between two yaw angles
---
---The result is positive if the shortest rotation from `angle1` to `angle2` is counterclockwise (left), 
---and negative if the shortest rotation is clockwise (right).
---
---@param angle1 number # First angle
---@param angle2 number # Second angle
---@return number # Difference in degrees
function AngleDiff(angle1, angle2) end

---
---Returns a normalized Vector from a QAngle.
---
---You can also use [QAngle:Forward](lua://QAngle.Forward) to get the same result.
---
---@param angle QAngle # The QAngle to convert.
---@return Vector # The vector pointing in the same direction as the QAngle.
function AnglesToVector(angle) end

---
---**Quaternions are not available in Half-Life: Alyx**
---
---Constructs a quaternion representing a rotation by angle around the specified vector axis.
---
---@param axis Vector
---@param angle number
---@return Quaternion
---@deprecated # Quaternions do not exist.
function AxisAngleToQuaternion(axis, angle) end

---
---Compute the closest point relative to a vector on the OBB of an entity.
---
---**This does not respect entity scale.**
---
---@param entity EntityHandle # The entity to use for the OBB.
---@param position Vector # The position to calculate the closest point from.
---@return Vector # The closest point on the `entity` OBB.
function CalcClosestPointOnEntityOBB(entity, position) end

---
---Compute the distance between two entity OBBs.
---
---A negative return value indicates an input error.
---
---A return value of zero indicates that the OBBs are overlapping.
---
---**This does not respect entity scale**
---
---@param entity1 EntityHandle # The first entity.
---@param entity2 EntityHandle # The second entity.
---@return number # The distance between the OBBs.
function CalcDistanceBetweenEntityOBB(entity1, entity2) end

---
---Calculate the cross product between two vectors (also available as a [Vector:Cross](lua://Vector.Cross)).
---
---@param vector1 Vector # The first vector.
---@param vector2 Vector # The second vector.
---@return Vector # The cross product of `vector1` and `vector2`.
function CrossVectors(vector1, vector2) end

---
---Get the closest point from `P` to the (infinite) line through `lineA` and `lineB` and calculate the shortest distance from P to the line.
---
---@param P Vector # The point to calculate the distance from.
---@param lineA Vector # The start of the line in world space.
---@param lineB Vector # The end of the line in world space.
---@return number # The shortest distance from `P` to the line.
function CalcDistanceToLineSegment2D(P, lineA, lineB) end

---
---Smooth curve decreasing slower as it approaches zero.
---
---@param decayTo number # The target value that the function will decay towards.
---@param decayTime number # The amount of time it takes to fully reach `decayTo`.
---@param dt number # The current time in the curve: [0, decayTime]. When `dt` equals `decayTime` the function will return `decayTo`.
---@return number # The value of the curve at time `dt`.
function ExponentialDecay(decayTo, decayTime, dt) end

---
---Linear interpolation of vector values over [0,1].
---
---@param vector1 Vector # Vector to lerp from.
---@param vector2 Vector # Vector to lerp to.
---@param t number # Lerp delta time: [0,1]
---@return Vector # The interpolated vector.
function LerpVectors(vector1, vector2, t) end

---
---Get a random float within a range.
---
---@param min number # The minimum value of the range.
---@param max number # The maximum value of the range.
---@return number # A random float within the range.
function RandomFloat(min, max) end

---
---Get a random integer within a range (inclusive).
---
---@param min number # The minimum value of the range.
---@param max number # The maximum value of the range.
---@return number # A random integer within the range.
function RandomInt(min, max) end

---
---Rotate a QAngle by another QAngle.
---
---@param angle1 QAngle # The QAngle to rotate.
---@param angle2 QAngle # The QAngle to rotate by.
---@return QAngle # The rotated QAngle.
function RotateOrientation(angle1, angle2) end

---
---Rotate a Vector around a point.
---
---E.g.
---
---    -- Returns Vector(0,1,0)
---    RotatePosition(Vector(0,0,0), QAngle(0,90,0), Vector(1,0,0))
---
---@param rotationOrigin Vector # The point to rotate around relative to `vectorToRotate`.
---@param rotationAngle QAngle # The angle to rotate by.
---@param vectorToRotate Vector # The vector to rotate.
---@return Vector # The rotated vector.
function RotatePosition(rotationOrigin, rotationAngle, vectorToRotate) end

---
---**Quaternions are not available in Half-Life: Alyx**
---
---Rotates a quaternion by the specified angle around the specified vector axis.
---
---@param quat Quaternion
---@param axis Vector
---@param angle number
---@return Quaternion
---@deprecated # Quaternions do not exist.
function RotateQuaternionByAxisAngle(quat, axis, angle) end

---
---Find the delta (difference) between two QAngles.
---
---E.g.
---
---    -- Returns QAngle(0,20,0)
---    RotationDelta(QAngle(0,10,0), QAngle(0,30,0))
---
---@param src QAngle # The starting QAngle.
---@param dest QAngle # The target QAngle.
---@return QAngle # The delta QAngle.
function RotationDelta(src, dest) end

---
---Converts delta QAngle to an angular velocity Vector.
---
---@param angle1 QAngle # The starting QAngle.
---@param angle2 QAngle # The target QAngle.
---@return Vector # The angular velocity Vector.
function RotationDeltaAsAngularVelocity(angle1, angle2) end

---
---**Quaternions are not available in Half-Life: Alyx**
---
---Very basic interpolation of quaternions q0 to q1 over time 't' on [0,1].
---
---@param q0 Quaternion
---@param q1 Quaternion
---@param t number
---@return Quaternion
---@deprecated # Quaternions do not exist.
function SplineQuaternions(q0, q1, t) end

---
---Very basic sigmoid interpolation of two vectors over time t on [0,1].
---
---@param vector1 Vector # The starting vector.
---@param vector2 Vector # The target vector.
---@param t number # The interpolation time.
---@return Vector # The interpolated vector.
function SplineVectors(vector1, vector2, t) end

---
---Returns a QAngle based on a Vector direction.
---
---It's recommended to normalize your Vector before converting.
---
---@param input Vector # The Vector to convert.
---@return QAngle # The resulting QAngle.
function VectorToAngles(input) end

--#endregion

--#region utilsinit.lua

-- Functions automatically included from the utilsinit.lua core library.

---
---Return value as an absolute value, i.e. Non-negative.
---
---@param value number # The number to convert to its absolute value.
---@return number # The absolute (non-negative) value of the input.
function abs(value) end

---
---Clamp the value between the min and max (inclusive).
---
---@param value number # The number to clamp.
---@param min number # The minimum value to clamp to.
---@param max number # The maximum value to clamp to.
---@return number # The clamped value within the range [min, max].
function Clamp(value, min, max) end

---
---Convert degrees to radians.
---
---@param deg number # The angle in degrees.
---@return number # The angle converted to radians.
function Deg2Rad(deg) end

---
---Convert radians to degrees.
---
---@param rad number # The angle in radians.
---@return number # The angle converted to degrees.
function Rad2Deg(rad) end

---
---Linear interpolation of float values a and b over t [0,1].
---
---@param t number # The interpolation factor, typically in the range [0, 1].
---@param a number # The start value.
---@param b number # The end value.
---@return number # The interpolated value.
function Lerp(t, a, b) end

---
---Returns the largest value of the inputs.
---
---@param x number # The first number to compare.
---@param y number # The second number to compare.
---@return number # The largest value between `x` and `y`.
function max(x, y) end

---
---Returns the smallest value of the inputs.
---
---@param x number # The first number to compare.
---@param y number # The second number to compare.
---@return number # The smallest value between `x` and `y`.
function min(x, y) end

---
---Returns a new table by merging `table1` and `table2` together.
---
---If there are any overlapping keys, the values from `table1` will be used instead of those from `table2`.
---
---If you want to concatenate a table in-place, use `vlua.tableadd`.
---
---@param table1 table # The first table to merge.
---@param table2 table # The second table to merge.
---@return table # A new table containing the merged key-value pairs from both `table1` and `table2`.
function Merge(table1, table2) end

---
---Remap a value in the range [a,b] to [c,d].
---
---This means that a value within the interval [a,b] will be scaled proportionally to fit within the interval [c,d].
---
---@param value number # The value to be remapped.
---@param a number # The lower bound of the original range.
---@param b number # The upper bound of the original range.
---@param c number # The lower bound of the target range.
---@param d number # The upper bound of the target range.
---@return number # The remapped value within the target range.
function RemapVal(value, a, b, c, d) end

---
---Remap a value in the range [a,b] to [c,d], clamping the output to the range.
---
---This means that a value within the interval [a,b] will be scaled proportionally to fit within the interval [c,d].
---
---@param value number # The value to be remapped.
---@param a number # The lower bound of the original range.
---@param b number # The upper bound of the original range.
---@param c number # The lower bound of the target range.
---@param d number # The upper bound of the target range.
---@return number # The remapped value within the target range.
function RemapValClamped(value, a, b, c, d) end

---
---Distance between two vectors squared (faster than calculating the plain distance).
---
---@param vector1 Vector # The first vector.
---@param vector2 Vector # The second vector.
---@return number # The squared distance between `vector1` and `vector2`.
function VectorDistanceSq(vector1, vector2) end

---
---Distance between two vectors.
---
---@param vector1 Vector # The first vector.
---@param vector2 Vector  # The second vector.
---@return number # The distance between `vector1` and `vector2`.
function VectorDistance(vector1, vector2) end

---
---Linear interpolation of vector values over [0,1]. The native function LerpVectors performs the same task.
---
---@param t number # The interpolation factor, typically in the range [0, 1].
---@param vector1 Vector # The start vector.
---@param vector2 Vector # The end vector.
---@return Vector # The interpolated vector.
function VectorLerp(t, vector1, vector2) end

---
---Check if the vector is a zero vector, i.e. [0,0,0].
---
---@param vector Vector # The vector to check.
---@return boolean # `true` if the vector is a zero vector, `false` otherwise.
function VectorIsZero(vector) end

--#endregion

--#region Printing & Drawing

---
---Appends a string to a log file on the server
---
---**This function is disabled and will only print an error message when called.**
---
---@param string_1 string
---@param string_2 string
---@deprecated
function AppendToLogFile(string_1, string_2) end

---
---Draw an unshaded debug overlay box in the world, with no depth testing.
---
---
---@param origin Vector # The origin point of the box.
---@param mins Vector # The minimum corner of the box.
---@param maxs Vector # The maximum corner of the box.
---@param red number # The red color component (0-255).
---@param green number # The green color component (0-255).
---@param blue number # The blue color component (0-255).
---@param alpha number # The alpha (transparency) component (0-255).
---@param seconds number # The duration in seconds for which the box should be displayed.
function DebugDrawBox(origin, mins, maxs, red, green, blue, alpha, seconds) end

---
---Draw an unshaded debug overlay box in the world, oriented to a vector, with no depth testing.
---
---The box will be rotated around its origin.
---
---@param origin Vector  # The origin point of the box.
---@param mins Vector  # The minimum corner of the box.
---@param maxs Vector  # The maximum corner of the box.
---@param orientation Vector  # The orientation vector for the box.
---@param rgb Vector  # The RGB color components as a vector (0-255).
---@param alpha number  # The alpha (transparency) component (0-255).
---@param seconds number  # The duration in seconds for which the box should be displayed.
function DebugDrawBoxDirection(origin, mins, maxs, orientation, rgb, alpha, seconds) end

---
---Draw a flat debug circle in the world, always facing upwards.
---
---@param origin Vector # The origin point of the circle.
---@param rgb Vector # The RGB color components as a vector.
---@param alpha number # The alpha (transparency) component (0-255).
---@param radius number # The radius of the circle in game units (inches).
---@param noDepthTest boolean # If true, the circle will be drawn above all geometry.
---@param seconds number # The duration in seconds for which the circle should be displayed.
function DebugDrawCircle(origin, rgb, alpha, radius, noDepthTest, seconds) end

---
---Try to clear all currently drawn debug overlay info/shapes.
---
function DebugDrawClear() end

---
---Draw a debug overlay line
---
---@param startPos Vector # The starting position of the line.
---@param endPos Vector # The ending position of the line.
---@param red number # The red color component (0-255).
---@param green number # The green color component (0-255).
---@param blue number # The blue color component (0-255).
---@param noDepthTest boolean # If true, the line will be drawn above all geometry.
---@param seconds number # The duration in seconds for which the line should be displayed.
function DebugDrawLine(startPos, endPos, red, green, blue, noDepthTest, seconds) end

---
---Draw a debug line using a color vector.
---
---@param startPos Vector # The starting position of the line.
---@param endPos Vector # The ending position of the line.
---@param rgb Vector # The RGB color components as a vector.
---@param noDepthTest boolean # If true, the line will be drawn above all geometry.
---@param seconds number # The duration in seconds for which the line should be displayed.
function DebugDrawLine_vCol(startPos, endPos, rgb, noDepthTest, seconds) end

---
---Draw text to the screen with a line offset. Use \n to break to a new line.
---
---Coordinates are in absolute pixels relative to the window position.
---
---@param x number Horizontal screen position.
---@param y number Vertical screen position.
---@param lineOffset integer Number of lines to start offset by.
---@param text string # The text to be displayed.
---@param red number # The red color component (0-255).
---@param green number # The green color component (0-255).
---@param blue number # The blue color component (0-255).
---@param alpha number # The alpha (transparency) component (0-255).
---@param seconds number # The duration in seconds for which the text should be displayed.
function DebugDrawScreenTextLine(x, y, lineOffset, text, red, green, blue, alpha, seconds) end

---
---Draw a wireframe debug sphere in the world.
---
---@param center Vector # The center position of the sphere.
---@param rgb Vector # The RGB color components as a vector.
---@param alpha number # The alpha (transparency) component (0-255).
---@param radius number # The radius of the sphere.
---@param noDepthTest boolean # If true, the sphere will be drawn above all geometry.
---@param seconds number # The duration in seconds for which the sphere should be displayed.
function DebugDrawSphere(center, rgb, alpha, radius, noDepthTest, seconds) end

---
---Draw screen oriented text at an absolute world position.
---
---The text will remain the same size on screen regardless of distance.
---
---@param origin Vector  # The world position where the text will be drawn.
---@param text string  # The text to be displayed.
---@param viewCheck boolean  # **This appears to be broken in Alyx** If true, the text will only be drawn if it is within the camera's view.
---@param seconds number  # The duration in seconds for which the text should be displayed.
function DebugDrawText(origin, text, viewCheck, seconds) end

---
---Draw pretty debug text.
---
---@param x number Horizontal screen position.
---@param y number Vertical screen position.
---@param lineOffset integer Number of lines to start offset by.
---@param text string # The text to be displayed.
---@param red number # The red color component (0-255).
---@param green number # The green color component (0-255).
---@param blue number # The blue color component (0-255).
---@param alpha number # The alpha (transparency) component (0-255).
---@param seconds number # The duration in seconds for which the text should be displayed.
---@param font string # Name of a system font.
---@param size integer # Size of the font
---@param bold boolean # If true, the text will be drawn bold.
function DebugScreenTextPretty(x, y, lineOffset, text, red, green, blue, alpha, seconds, font, size, bold) end

---
---Print a message to the console. Will show up in the 'General' channel.
---
---A newline (\n) character is not automatically appended.
---Any immediate subsequent calls will be appended directly to the last call.
---
---@param message string # The message to print.
function Msg(message) end

---
---Print a clickable console message with a linked console command. Will show up in the 'VScriptScripts' channel.
---
---@param message string # The message to print.
---@param command string # The command that will be executed when the message is clicked.
function PrintLinkedConsoleMessage(message, command) end

---
---Have entity say message. Will appear in console in 'Client' channel.
---
---If the message starts with "say" it will be trimmed trom the message.
---
---@param entity EntityHandle # The entity that will 'say' the message.
---@param message string # The message to say.
---@param teamOnly boolean # If true message will only be sent to clients on same team.
function Say(entity, message, teamOnly) end

---
---Print a hud message on all clients.
---
---**Appears to do nothing in Half-Life Alyx**
---
---@param message string
function ShowMessage(message) end

---
---Displays a message for a specific player.
---
---**Appears to do nothing in Half-Life Alyx**
---
---@param playerId integer
---@param message string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UTIL_MessageText(playerId, message, red, green, blue, alpha) end

---
---Sends a message to a specific player in the message box with a context table.
---
---**Appears to do nothing in Half-Life Alyx**
---
---@param playerId integer
---@param message string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param context table
function UTIL_MessageText_WithContext(playerId, message, red, green, blue, alpha, context) end

---
---Sends a message to everyone in the message box.
---
---**Appears to do nothing in Half-Life Alyx**
---
---@param messsage string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UTIL_MessageTextAll(messsage, red, green, blue, alpha) end

---
---Sends a message to everyone in the message box with a context table.
---
---**Appears to do nothing in Half-Life Alyx**
---
---@param messsage string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param context table
function UTIL_MessageTextAll_WithContext(messsage, red, green, blue, alpha, context) end

---
---Resets the message text for the player.
---
---**Appears to do nothing in Half-Life Alyx**
---
---@param playerId integer
function UTIL_ResetMessageText(playerId) end

---
---Resets the message text for all players.
---
---**Appears to do nothing in Half-Life Alyx**
---
function UTIL_ResetMessageTextAll() end

---
---Print a yellow warning message in the console. Will show in 'General' channel.
---
---A newline (\n) character is not automatically appended.
---Any subsequent calls will be appended directly to the last call.
---
---@param msg string
function Warning(msg) end

--#endregion

--#region Entity Manipulation

---
---Cancel all I/O events for a particular entity.
---Does not seem to work often if at all.
---
---@param EHANDLE number
function CancelEntityIOEvents(EHANDLE) end

---
---Connects all output script functions of the passed entity script scope to the entity outputs.
---Function name regex format: "^On.*Output$"
---
---**Doesn't work because ConnectOutput is broken.**
---
---@param outputs table
---@deprecated
function ConnectOutputs(outputs) end

---
---Allocate a [CTakeDamageInfo](lua://CTakeDamageInfo) object, used as an argument to [CBaseEntity:TakeDamage()](lua://CBaseEntity.TakeDamage).
---
---Call [DestroyDamageInfo(hInfo)](lua://DestroyDamageInfo) to free the object.
---
---@param inflictor EntityHandle # The entity that caused the damage.
---@param attacker EntityHandle # The entity that caused the attack.
---@param force Vector # The force of the damage.
---@param hitPos Vector # The world position where the damage occured.
---@param damage number # The amount of damage caused.
---@param damageTypes DamageInfoTypes # The type of damage.
---@return CTakeDamageInfo # The new damage info object.
function CreateDamageInfo(inflictor, attacker, force, hitPos, damage, damageTypes) end

---
---Pass table - Inputs: entity, effect
---
---@param keys table
---@return boolean
function CreateEffect(keys) end

---
---Create a scene entity to play the specified scene.
---
---@param sceneName string # Path to the vcd resource.
---@return CSceneEntity
function CreateSceneEntity(sceneName) end

---
---Creates and returns an enabled AABB trigger as a `trigger_multiple`.
---
---@param origin Vector # The world origin of the trigger.
---@param mins Vector # The minimum corner of the box.
---@param maxs Vector # The maximum corner of the box.
---@return CBaseTrigger # The new trigger.
function CreateTrigger(origin, mins, maxs) end

---
---Creates and returns an AABB trigger thats bigger than the radius provided.
---
---This is similar to:
---
---    CreateTrigger(origin, Vector(-radius, -radius, -radius), Vector(radius, radius, radius))
---
---@param origin Vector # The world origin of the trigger.
---@param radius number # The radius of the trigger.
---@return CBaseTrigger # The new trigger.
function CreateTriggerRadiusApproximate(origin, radius) end

---
---Free a [CTakeDamageInfo](lua://CTakeDamageInfo) object that was created with [CreateDamageInfo](lua://CreateDamageInfo).
---
---@param info CTakeDamageInfo
function DestroyDamageInfo(info) end

---
---Internal native function for [EntFire](lua://EntFire).
---
---@param target string # The name of the entity to fire the input on.
---@param action string # The name of the input to fire.
---@param value string # The value to pass as the "parameter override".
---@param delay number # The delay in seconds before the input is fired.
---@param activator EntityHandle|nil # The !activator of the input in the I/O chain.
---@param caller EntityHandle|nil # The !caller of the input in the I/O chain.
function DoEntFire(target, action, value, delay, activator, caller) end

---
---Internal native function for [EntFireByHandle](lua://EntFireByHandle).
---
---@param target EntityHandle # The EntityHandle to fire the input on.
---@param action string # The name of the input to fire.
---@param value string # The value to pass as the "parameter override".
---@param delay number # The delay in seconds before the input is fired.
---@param activator EntityHandle|nil # The !activator of the input in the I/O chain.
---@param caller EntityHandle|nil # The !caller of the input in the I/O chain.
function DoEntFireByInstanceHandle(target, action, value, delay, activator, caller) end

---
---Generate an entity I/O event on all entities matching the specified target name. The script scope of the calling entity should be passed to the first parameter.
---
---@param scope ScriptScope # The script scope of the calling entity.
---@param target string # The name of the entity to fire the input on.
---@param action string # The name of the input to fire.
---@param value string? # The value to pass as the "parameter override". Default = ""
---@param delay number? # The delay in seconds before the input is fired. Default = 0
---@param activator EntityHandle? # The !activator of the input in the I/O chain. Default = thisEntity
function EntFire(scope, target, action, value, delay, activator) end

---
---Generate an entity I/O event on the specified entity. The calling entity should be passed to the first parameter.
---
---@param self EntityHandle # The calling entity.
---@param target EntityHandle # The entity to fire the input on.
---@param action string # The name of the input to fire.
---@param value string? # The value to pass as the "parameter override". Default = ""
---@param delay number? # The delay in seconds before the input is fired. Default = 0
---@param activator EntityHandle? # The !activator of the input in the I/O chain. Default = self
function EntFireByHandle(self, target, action, value, delay, activator) end

---
---Turn an entity index integer to an HScript (entity handle) representing that entity's script instance.
---
---You can use [CEntityInstance:entindex](lua://CEntityInstance.entindex) or [CEntityInstance:GetEntityIndex](lua://CEntityInstance.GetEntityIndex) to get the index of an entity.
---
---@param entindex integer # The index of the entity.
---@return EntityHandle? # The EntityHandle of the entity if it exists.
function EntIndexToHScript(entindex) end

---
---Fire Entity's action input with no data.
---
---This is buggy, use the EntFire and DoEntFire functions instead.
---
---@param EHANDLE number # The EHANDLE of the entity to fire the input on.
---@param inputName string # The name of the input to fire.
function FireEntityIOInputNameOnly(EHANDLE, inputName) end

---
---Fire entity's action input with passed string - you own the memory.
---
---This is buggy, use the EntFire and DoEntFire functions instead.
---
---@param EHANDLE number # The EHANDLE of the entity to fire the input on.
---@param inputName string # The name of the input to fire.
---@param value string # The value to pass as the "parameter override".
function FireEntityIOInputString(EHANDLE, inputName, value) end

---
---Fire entity's action input with passed vector.
---
---This is buggy, use the EntFire and DoEntFire functions instead.
---
---@param EHANDLE number # The EHANDLE of the entity to fire the input on.
---@param inputName string # The name of the input to fire.
---@param value Vector # The vector value to pass to the input.
function FireEntityIOInputVec(EHANDLE, inputName, value) end

---
---Get the longest delay for all events attached to an output.
---Does not take the entire I/O chain into account, only the biggest delay of the output.
---
---**WARNING: This function is prone to crash.**
---
---@param EHANDLE number
---@param outputName string
---@return number
function GetMaxOutputDelay(EHANDLE, outputName) end

---
---Get Angular Velocity for VPHYS or normal object.
---
---@param entity EntityHandle # The entity to get the angular velocity of.
---@return Vector # A vector of the axis of rotation, multiplied by the rotation in radians per second.
function GetPhysAngularVelocity(entity) end

---
---Get Velocity for VPHYS or normal object.
---
---@param entity EntityHandle # The entity to get the velocity of.
---@return Vector # The velocity of the entity.
function GetPhysVelocity(entity) end

---
---Returns the validity of the entity. Opposite of CBaseEntity:IsNull()
---
---@param entity EntityHandle # The entity to check.
---@return boolean # True if the entity is valid, false if invalid or `entity` is nil.
function IsValidEntity(entity) end

---
---Get a script instance of a player by player index.
---
---In Half-Life Alyx, this will only return with an index of 1,
---which will always be the same as [Entities:GetLocalPlayer](lua://Entities.GetLocalPlayer).
---
---@param playerIndex integer # The index of the player.
---@return CHL2_Player? # The player instance for the given index if it exists.
function PlayerInstanceFromIndex(playerIndex) end

---
---Precache an entity from a KeyValues table.
---
---This will precache all resources needed for the entity to be spawned.
---
---@param classname string # The class name of the entity, e.g. "prop_physics".
---@param spawnKeys table # The KeyValues table, in the same format as passed to [SpawnEntityFromTableSynchronous](lua://SpawnEntityFromTableSynchronous).
---@param context CScriptPrecacheContext # The precache context as provided by the Precache hook.
function PrecacheEntityFromTable(classname, spawnKeys, context) end

---@class PrecacheEntityListTable
---@field classname string

---
---Precache a list of entity KeyValue tables.
---
---Each table must include the key 'classname' with a string value of the actual class name,
---e.g. classname = "prop_physics".
---
---@param groupSpawnTables PrecacheEntityListTable[] # A list of KeyValues tables, in the same format as passed to [SpawnEntityFromTableSynchronous](lua://SpawnEntityFromTableSynchronous).
---@param context CScriptPrecacheContext # The precache context as provided by the Precache hook.
function PrecacheEntityListFromTable(groupSpawnTables, context) end

---
---Manually precache a single model.
---
---@param modelName string # The path name of the model, e.g. "models/props/can_1.vmdl".
---@param context CScriptPrecacheContext # The precache context as provided by the Precache hook.
function PrecacheModel(modelName, context) end

---@alias PrecacheType "model_folder"|"sound"|"soundfile"|"particle"|"particle_folder"

---
---Precache a single resource.
---
---Examples of each resource type:
---
---- model_folder: "models/props"
---- sound: "My.Sound.Event"
---- soundfile: "sounds/my_sound.vsnd"
---- particle: "particles/my_particle.vpcf"
---- particle_folder: "models/particles"
---
---@param resourceType PrecacheType # The type of resource to precache.
---@param resourcePath string # The path to the resource.
---@param context CScriptPrecacheContext # The precache context as provided by the Precache hook.
function PrecacheResource(resourceType, resourcePath, context) end

---
---Set angular velocity for VPHYS or normal object.
---
---@param entity EntityHandle # The entity to set the angular velocity for.
---@param velocity Vector # A vector of the axis of rotation, multiplied by the rotation in radians per second.
function SetPhysAngularVelocity(entity, velocity) end

---
---Set rendering on/off for an EHANDLE.
---
---**WARNING: Unstable in Half-Life: Alyx. May cause hard crash.**
---
---Use `thisEntity:AddEffects(0x020)` and `thisEntity:RemoveEffects(0x020)` instead.
---
---@param EHANDLE integer # The entity to set rendering for.
---@param enabled boolean # True to enable rendering, false to disable.
function SetRenderingEnabled(EHANDLE, enabled) end

---
---Asynchronously spawns a single entity from a table.
---A callback will be triggered when the spawning is complete, passing the handle of the entity as a parameter.
---
---Precaching done in scripts attached to the spawned entity will apply correctly.
---
---**WARNING: Game will crash if called before the player spawns.**
---
---@param classname string # The class name of the entity, e.g. "prop_physics".
---@param spawnKeys table # The KeyValues table with properties for the entity.
---@param callback fun(spawnedEnt: EntityHandle)|fun(context: table?, spawnedEnt: EntityHandle)|function # The function called when the entity has spawned.
---@param context table|nil # Optional context to pass to the callback.
function SpawnEntityFromTableAsynchronous(classname, spawnKeys, callback, context) end

---
---Synchronously spawns a single entity from a table
---
---Any precaching done in scripts attached to the spawned entity will not apply to the entity.
---
---**WARNING: Game will break if called before the player spawns.**
---
---@param classname string # The class name of the entity, e.g. "prop_physics".
---@param spawnKeys table # The KeyValues table with properties for the entity.
---@return EntityHandle # The handle of the spawned entity.
function SpawnEntityFromTableSynchronous(classname, spawnKeys) end

---
---Hierarchically spawn an entity group from a set of spawn tables.
---
---**Note: This function does not appear to work in Half-Life: Alyx**
---
---@param groupSpawnTables table # A list of KeyValues tables.
---@param async boolean # True to spawn asynchronously, false to spawn synchronously.
---@param callback function # The function called when the entities have spawned.
---@return boolean # True if the entities were spawned.
function SpawnEntityGroupFromTable(groupSpawnTables, async, callback) end

---
---Asynchronously spawn an entity group from a list of spawn tables. A callback will be triggered when the spawning is complete, passing a list of spawned entities.
---Each table must include key 'classname'.
---
---@param spawnKeysList table # A list of KeyValues tables.
---@param callback fun(spawnedEntities: EntityHandle[])|function # The function called when the entities have spawned.
---@return integer # Spawn index.
function SpawnEntityListFromTableAsynchronous(spawnKeysList, callback) end

---
---Synchronously spawn an entity group from a list of spawn tables.
---Each table must include key 'classname'.
---
---@param spawnKeysList table # A list of KeyValues tables.
---@return EntityHandle[] # List of spawned entities.
function SpawnEntityListFromTableSynchronous(spawnKeysList) end

---
---Stop an effect on an entity.
---
---**Note: Unknown how this works in Half-Life: Alyx**
---
---@param entity EntityHandle # The entity to stop the effect on.
---@param effectName string # The name of the effect to stop.
function StopEffect(entity, effectName) end

---
---Deletes the entity
---
---@param entity EntityHandle # The entity to delete.
function UTIL_Remove(entity) end

---
---Deletes the entity with no delay.
---
---**WARNING: Incorrect usage may cause crashes.**
----
---@param entity EntityHandle # The entity to delete.
function UTIL_RemoveImmediate(entity) end

--#endregion

--#region Tracing

---
---Does a raytrace against a single entity. Input and output parameters are stored in the specified table.
---
---@param parameters TraceTableCollideable # The input and output parameters for the trace.
---@return boolean # True if the trace was successful. Use [TraceTableCollideable.hit](lua://TraceTableCollideable.hit) to check if the trace hit something.
function TraceCollideable(parameters) end

---
---Traces a axis aligned bounding box along a line. Input and output parameters are stored in the specified table.
---
---@param parameters TraceTableHull # The input and output parameters for the trace.
---@return boolean # True if the trace was successful. Use [TraceTableHull.hit](lua://TraceTableHull.hit) to check if the trace hit something.
function TraceHull(parameters) end

---
---Does a raytrace along a line. Input and output parameters are stored in the specified table.
---
---@param parameters TraceTableLine # The input and output parameters for the trace.
---@return boolean # True if the trace was successful. Use [TraceTableLine.hit](lua://TraceTableLine.hit) to check if the trace hit something.
function TraceLine(parameters) end

--#endregion

--#region Sound

---
---Play named sound for all players.
---
---**This function does not exist.**
---
---@param sound string # The sound event to play.
---@deprecated # Function does not appear to exist.
function EmitGlobalSound(sound) end

---
---Play named sound on Entity.
---
---@param sound string # The sound event to play.
---@param entity EntityHandle # The entity to play the sound on.
function EmitSoundOn(sound, entity) end

---
---Play named sound only on the client for the passed in player.
---
---@param sound string # The sound event to play.
---@param player CHL2_Player # The player to play the sound on.
function EmitSoundOnClient(sound, player) end

---
---Sets an opvar value for all players.
---
---@param stackName string|"hlvr_global_opvars" # The name of the opvar stack.
---@param operatorName string|"opvars" # The name of the opvar operator.
---@param opvarName string|HLVROpvarNames # The name of the opvar.
---@param opvarValue number # The value of the opvar.
function SetOpvarFloatAll(stackName, operatorName, opvarName, opvarValue) end

---
---Sets an opvar value for a single player.
---
---@param stackName string|"hlvr_global_opvars" # The name of the opvar stack.
---@param operatorName string|"opvars" # The name of the opvar operator.
---@param opvarName string|HLVROpvarNames # The name of the opvar.
---@param opvarValue number # The value of the opvar.
---@param player CHL2_Player # The player to set the opvar for.
function SetOpvarFloatPlayer(stackName, operatorName, opvarName, opvarValue, player) end

---
---Start a sound event on a specific entity.
---
---*Appears to be functionally equivalent to [EmitSoundOn](lua://EmitSoundOn).*
---
---@param sound string # The sound event to play.
---@param entity EntityHandle # The entity to play the sound on.
function StartSoundEvent(sound, entity) end

---
---Start a sound event from world position.
---
---@param sound string # The sound event to play.
---@param position Vector # The position to play the sound from.
function StartSoundEventFromPosition(sound, position) end

---
---Start a sound event from position with reliable delivery.
---
---@param sound string # The sound event to play.
---@param position Vector # The position to play the sound from.
function StartSoundEventFromPositionReliable(sound, position) end

---
---Start a sound event from position with optional delivery.
---
---@param sound string # The sound event to play.
---@param position Vector # The position to play the sound from.
function StartSoundEventFromPositionUnreliable(sound, position) end

---
---Start a sound event with reliable delivery.
---
---@param sound string # The sound event to play.
---@param entity EntityHandle # The entity to play the sound on.
function StartSoundEventReliable(sound, entity) end

---
---Start a sound event with optional delivery
---
---@param sound string # The sound event to play.
---@param entity EntityHandle # The entity to play the sound on.
function StartSoundEventUnreliable(sound, entity) end

---
---Stop a sound event.
---
---*Appears to be functionally equivalent to [StopSoundOn](lua://StopSoundOn).*
---
---@param sound string # The sound event to stop.
---@param entity EntityHandle # The entity playing the sound.
function StopSoundEvent(sound, entity) end

---
---Stop a sound event on an entity.
---
---@param sound string # The sound event to stop.
---@param playingEntity EntityHandle # The entity playing the sound.
function StopSoundOn(sound, playingEntity) end

--#endregion

--#region Miscellaneous

---
---Gets the value of the given Convar, as a float.
---
---@param convar string # The name of the Convar.
---@return number # The value of the Convar.
function cvar_getf(convar) end

---
---Sets the value of the given Convar, to a float.
---
---@param convar string # The name of the Convar.
---@param value number # The value to set the Convar to.
---@return boolean # Whether the Convar was successfully set.
function cvar_setf(convar, value) end

---
---Breaks in the debugger.
---
---*Unknown how this works in Half-Life: Alyx.*
---
function DebugBreak() end

---
---Executes a script file in the given scope.
---
---Internal native function for [IncludeScript](lua://IncludeScript].
---
---@param scriptFileName string # The name of the script file relative to the 'scripts/vscripts/' path.
---@param scope ScriptScope # The script scope to include the script in, e.g. [CEntityInstance:GetPrivateScriptScope](lua://CEntityInstance.GetPrivateScriptScope).
---@return boolean # Whether the script was successfully included, errors do not return false.
function DoIncludeScript(scriptFileName, scope) end

---
---Internal native function for [ScriptAssert](lua://ScriptAssert).
---
---**This function appears to do nothing in Half-Life Alyx**
---
---@param assertion boolean # The value to assert.
---@param message string # The message to print if the assertion fails.
function DoScriptAssert(assertion, message) end

---
---Creates a unique string and appends a given string to it.
---
---The unique string is 4 alphanumeric characters surrounded by underscores, e.g. "_8e33_"
---
---Internal native function for UniqueString().
---
---@param root string|"" # String that will be added to the end of the unique string.
---@return string # The new unique string.
function DoUniqueString(root) end

---
---Fires a pre-defined game event with custom parameters.
---
---@param eventName GameEventsAll # The name of the game event to fire.
---@param parameterTable table # The custom parameters. Arbitrary key/value pairs are allowed.
function FireGameEvent(eventName, parameterTable) end

---
---Fires a game event without broadcasting to the client.
---
---@param eventName GameEventsAll # The name of the game event to fire.
---@param parameterTable table # The custom parameters. Arbitrary key/value pairs are allowed.
function FireGameEventLocal(eventName, parameterTable) end

---
---Get the time spent on the server in the last frame in seconds.
---
---@return number
function FrameTime() end

---
---Returns the currently active spawn group handle.
---
---@return integer
function GetActiveSpawnGroupHandle() end

---
---Returns the engines current frame count.
---
---@return integer
function GetFrameCount() end

---
---Get the local player on a listen server.
---
---In Half-Life Alyx this is functionally the same as [Entities:GetLocalPlayer](lua://Entities.GetLocalPlayer).
---
---@return CHL2_Player # The local player.
function GetListenServerHost() end

---
---Get the name of the map.
---
---@return string
function GetMapName() end

---
---Executes a script file in the given scope.
---
---@param scriptFileName string # The name of the script file relative to the 'scripts/vscripts/' path.
---@param scope ScriptScope|nil # The script scope to include the script in, this is the private script scope by default.
---@return boolean # Whether the script was successfully included, errors do not return false.
function IncludeScript(scriptFileName, scope) end

---
---If the given file doesn't exist, creates it with the given contents; does nothing if it exists
---
---**This function is disabled and will only print an error message when called.**
---
---@param string_1 string
---@param string_2 string
---@deprecated # Function is disabled
function InitLogFile(string_1, string_2) end

---
---Returns true if this Lua code is running from the client.dll.
---
---@return boolean
function IsClient() end

---
---Returns true if this server is a dedicated server.
---
---*Appears to always return false in Half-Life Alyx.*
---
---@return boolean
function IsDedicatedServer() end

---
---Returns true if the entity is valid and marked for deletion.
---
---@param entity EntityHandle # The entity to check.
---@return boolean # True if the entity is marked for deletion.
function IsMarkedForDeletion(entity) end

---
---Returns true if this Lua code is running from the server.dll.
---
---@return boolean
function IsServer() end

---
---Returns true if this Lua code is running from the workshop tools.
---
---@return boolean
function IsInToolsMode() end

---
---Register as a listener for a game event from script.
---
---@param eventname GameEventsAll # The name of the game event to listen to.
---@param callback fun(params: GameEventBase)|fun(context: table, params: GameEventBase)|function # The function called when the game event is fired.
---@param context table|nil # Optional context to pass as the first parameter of `callback`.
---@return integer # ID used to cancel with [StopListeningToGameEvent](lua://StopListeningToGameEvent).
function ListenToGameEvent(eventname, callback, context) end

---
---Creates a table from the specified keyvalues text file.
---
---See https://developer.valvesoftware.com/wiki/KeyValues
---
---@param path string # The path to the keyvalues file relative to the addon game folder.
---@return table? # The table created from the keyvalues file.
function LoadKeyValues(path) end

---
---Creates a table from the specified keyvalues string.
---
---*KeyValues format is unknown.*
---
---@param keyvals string # The keyvalues string.
---@return table # The table created from the keyvalues string.
function LoadKeyValuesFromString(keyvals) end

---
---Returns the local system time as a table with the format {Hours = int; Minutes = int; Seconds = int}
---
---@return LocalTimeTable # Table of Hours, Minutes, Seconds.
function LocalTime() end

---
---Convert a string to an integer.
---
---*The conversion method is unknown.*
---
---@param str string # The string to convert.
---@return integer # The converted integer.
function MakeStringToken(str) end

---
---Triggers the creation of entities in a manually-completed spawn group.
---
---@param int integer
function ManuallyTriggerSpawnGroupCompletion(int) end

---
---Create a C proxy for a script-based spawn group filter.
---
---@param str string
function RegisterSpawnGroupFilterProxy(str) end

---
---Reloads the MotD file.
---
---*Appears to do nothing in Half-Life Alyx.*
---
function ReloadMOTD() end

---
---Remove the C proxy for a script-based spawn group filter
---
---@param str string
function RemoveSpawnGroupFilterProxy(str) end

---
---Add a rule to the decision database.
---
---@param rule Decider|unknown
---@return boolean
function rr_AddDecisionRule(rule) end

---
---Commit the result of QueryBestResponse back to the given entity to play.
---
---@param entity EntityHandle|unknown
---@param airesponse unknown
---@return boolean
function rr_CommitAIResponse(entity, airesponse) end

---
---Retrieve a table of all available expresser targets, in the form { name : handle, name: handle }.
---
---*In Alyx this appears to return a table with one value of the player.*
---
---@return table
function rr_GetResponseTargets() end

---
---Static : tests 'query' against entity's response system and returns the best response found (or nil if none found).
---
---@param ent unknown
---@param query unknown
---@param result unknown
function rr_QueryBestResponse(ent, query, result) end

---
---Start a screenshake.
---
---@param center Vector # The world position of the shaking. The further away the player is from this position, the less intense the shake will be.
---@param amplitude number # The strength of the effect. How far away from its origin the camera will move while shaking.
---@param frequency number # How many times per second to change the direction of the camera wobble. 40 is generally enough; values higher are hardly distinguishable.
---@param duration number # The duration of the shake in seconds.
---@param radius number # The radius of the shake.
---@param command # Ending the shake stops the effect immediately, otherwise it will fade out over `duration`.
---| 0 # SHAKE_START
---| 1 # SHAKE_END
---@param airShake boolean # Whether players in the air should also be affected.
function ScreenShake(center, amplitude, frequency, duration, radius, command, airShake) end

---
---Asserts the passed in value. Prints out a message and brings up the assert dialog.
---
---**This function appears to do nothing in Half-Life Alyx**
---
---@param assertion boolean # The value to assert.
---@param message string|"" # The message to print.
function ScriptAssert(assertion, message) end

---
---Send a string to the console as a client command.
---
---@param command string # Can send multiple commands by separating them with a semi-colon ;
function SendToConsole(command) end

---
---Send a string to the console as a server command.
---
---@param command string # Can send multiple commands by separating them with a semi-colon ;
function SendToServerConsole(command) end

---
---Set the current quest name.
---
---@param name string
function SetQuestName(name) end

---
---Set the current quest phase.
---
---@param phase integer
function SetQuestPhase(phase) end

---
---Stop listening to all game events with a specific context.
---
---E.g.
---
---    ListenToGameEvent("player_weapon_shoot", ..., thisEntity)
---    StopListeningToGameEvent(thisEntity)
---
---@param context table
function StopListeningToAllGameEvents(context) end

---
---Stop listening to a particular game event.
---
---@param eventlistener integer # The event ID returned by [ListenToGameEvent](lua://ListenToGameEvent).
---@return boolean # Whether the event was successfully stopped.
function StopListeningToGameEvent(eventlistener) end

---
---Get the current server time in seconds.
---
---@return number
function Time() end

---
---Generate a string guaranteed to be unique across the life of the script VM, with an optional root string.
---
---Useful for adding data to tables when you're not sure what keys are already in use in that table.
---
---@param root string? # String that will be added to the end.
---@return string # The new unique string.
function UniqueString(root) end

---
---Unload a spawn group by name.
---
---@param groupName string # The name of the group.
function UnloadSpawnGroup(groupName) end

---
---Unload a spawn group by handle.
---
---@param groupHandle integer # The handle of the group.
function UnloadSpawnGroupByHandle(groupHandle) end

---
---No Description Set
---
---@param handle_1 unknown
function UpdateEventPoints(handle_1) end

--#endregion