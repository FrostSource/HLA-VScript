---@meta

---
---Debug overlay class for drawing shapes in the world.
---
---@class CDebugOverlayScriptHelper
debugoverlay = {}

---
---Draws an axis. Specify origin + orientation in world space.
---
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param bool_4 boolean
---@param float_5 number
---@deprecated # Quaternions do not exist.
function debugoverlay:Axis(Vector_1, Quaternion_2, float_3, bool_4, float_5) end

---
---Draws a world-space axis-aligned wireframe box. Specify bounds in world space.
---
---@param min Vector # The minimum bounds of the box
---@param max Vector # The maximum bounds of the box
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:Box(min, max, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws an oriented box at the origin. Specify bounds in local space.
---
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param Vector_3 Vector
---@param Quaternion_4 Quaternion
---@param int_5 integer
---@param int_6 integer
---@param int_7 integer
---@param int_8 integer
---@param bool_9 boolean
---@param float_10 number
---@deprecated # Quaternions do not exist.
function debugoverlay:BoxAngles(
	Vector_1,
	Vector_2,
	Vector_3,
	Quaternion_4,
	int_5,
	int_6,
	int_7,
	int_8,
	bool_9,
	float_10
)
end

---
---Draws a capsule. Specify base in world space.
---
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param float_4 number
---@param int_5 integer
---@param int_6 integer
---@param int_7 integer
---@param int_8 integer
---@param bool_9 integer
---@param float_10 number
---@deprecated # Quaternions do not exist.
function debugoverlay:Capsule(
	Vector_1,
	Quaternion_2,
	float_3,
	float_4,
	int_5,
	int_6,
	int_7,
	int_8,
	bool_9,
	float_10
)
end

---
---Draws a circle. Specify center in world space.
---
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param int_4 integer
---@param int_5 integer
---@param int_6 integer
---@param int_7 integer
---@param bool_8 boolean
---@param float_9 number
---@deprecated # Quaternions do not exist.
function debugoverlay:Circle(Vector_1, Quaternion_2, float_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---
---Draws a circle oriented to the screen. Specify center in world space.
---
---@param origin Vector # Center of the circle
---@param radius number # Radius of the circle in (roughly) Hammer units
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:CircleScreenOriented(origin, radius, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws a wireframe cone.
---
---@param pos Vector # Starting tip for the cone
---@param direction Vector # Normalized direction the cone faces
---@param spreadAngle number # Opening angle of the cone in radians
---@param distance number # The length of the cone from `pos` in `axis` direction
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:Cone(pos, direction, spreadAngle, distance, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws a screen-aligned cross.
---
---@param origin Vector # Center of the cross in world space
---@param radius number # Radius of the cross in Hammer units
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:Cross(origin, radius, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws a world-aligned cross (3 intersecting lines).
---
---@param origin Vector # Center of the cross in world space
---@param radius number # Radius of the cross in Hammer units
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:Cross3D(origin, radius, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws an oriented cross. Specify origin in world space.
---
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param int_4 integer
---@param int_5 integer
---@param int_6 integer
---@param int_7 integer
---@param bool_8 boolean
---@param float_9 number
---@deprecated # Quaternions do not exist.
function debugoverlay:Cross3DOriented(Vector_1, Quaternion_2, float_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---
---Draws a dashed line. Specify endpoint's in world space.
---
---@param startPos Vector # Starting point of the line
---@param endPos Vector # End point of the line
---@param distanceBetweenTicks number # Distance between each tick, will determine how many ticks are drawn
---@param tickHighlightOffset integer # Number of ticks to skip between each labeled tick
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:DrawTickMarkedLine(
	startPos,
	endPos,
	distanceBetweenTicks,
	tickHighlightOffset,
	red,
	green,
	blue,
	alpha,
	noDepthTest,
	seconds
)
end

---
---Draws the attachments of the entity with each axis and label
---
---The attachments are not updated during the lifetime of the drawing.
---You will need to call this every time you want to update the positions.
---
---*Note: Seems to be buggy sometimes.*
---
---@param ehandle number # The ehandle of the entity, use [CEntityInstance:GetEntityHandle](lua://CEntityInstance.GetEntityHandle)
---@param size number # Size of the drawn axes.
---@param seconds number # The lifetime of the drawn attachments, -1 means forever
function debugoverlay:EntityAttachments(ehandle, size, seconds) end

---
---Draws the axis of the entity origin
---
---This axis is not updated during the lifetime of the drawing.
---You will need to call this every time you want to update the position.
---
---*Note: Seems to be buggy sometimes.*
---
---@param ehandle number # The ehandle of the entity, use [CEntityInstance:GetEntityHandle](lua://CEntityInstance.GetEntityHandle)
---@param size number # Size of the drawn axis
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the drawn axis, -1 means forever
function debugoverlay:EntityAxis(ehandle, size, noDepthTest, seconds) end

---
---Draws bounds of an entity.
---
---@param ehandle number # The ehandle of the entity, use [CEntityInstance:GetEntityHandle](lua://CEntityInstance.GetEntityHandle)
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:EntityBounds(ehandle, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws the skeleton of the entity.
---
---@param ehandle number # The ehandle of the entity, use [CEntityInstance:GetEntityHandle](lua://CEntityInstance.GetEntityHandle)
---@param seconds number # The lifetime of the drawn skeleton, -1 means forever
function debugoverlay:EntitySkeleton(ehandle, seconds) end

---
---Draws text on an entity's center.
---
---Escape sequences are consumed but only \n, \', \" and \\ are supported.
---
---@param ehandle number # The ehandle of the entity, use [CEntityInstance:GetEntityHandle](lua://CEntityInstance.GetEntityHandle)
---@param lineOffset integer # The line offset for the text, can be negative
---@param text string # The text to be displayed
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param seconds number # The lifetime of the drawn text, -1 means forever
function debugoverlay:EntityText(ehandle, lineOffset, text, red, green, blue, alpha, seconds) end

---
---Draws a screen-space filled 2D rectangle. Coordinates are in pixels.
---
---@param Vector2D_1 Vector2D
---@param Vector2D_2 Vector2D
---@param int_3 integer
---@param int_4 integer
---@param int_5 integer
---@param int_6 integer
---@param float_7 number
---@deprecated # Vector2D does not exist.
function debugoverlay:FilledRect2D(Vector2D_1, Vector2D_2, int_3, int_4, int_5, int_6, float_7) end

---
---Draws a horizontal arrow.
---
---@param startPos Vector # Starting point of the arrow
---@param endPos Vector # End point of the arrow, where the arrow will point
---@param width number # Width of the arrow
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:HorzArrow(startPos, endPos, width, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws a line between two points.
---
---@param startPos Vector # Starting point of the line
---@param endPos Vector # End point of the line
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:Line(startPos, endPos, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws a line between two points in screenspace.
---
---@param Vector2D_1 Vector2D
---@param Vector2D_2 Vector2D
---@param int_3 integer
---@param int_4 integer
---@param int_5 integer
---@param int_6 integer
---@param float_7 number
---@deprecated # Vector2D does not exist.
function debugoverlay:Line2D(Vector2D_1, Vector2D_2, int_3, int_4, int_5, int_6, float_7) end

---
---Pops the top identifier used to group overlays. Overlays marked with this identifier can be deleted in a big batch.
---
function debugoverlay:PopDebugOverlayScope() end

---
---Pushes an identifier used to group overlays. Deletes all existing overlays using this overlay id.
---
---@param scopeName string
function debugoverlay:PushAndClearDebugOverlayScope(scopeName) end

---
---Pushes an identifier used to group overlays. Overlays marked with this identifier can be deleted in a big batch.
---
---@param scopeName string
function debugoverlay:PushDebugOverlayScope(scopeName) end

---
---Removes all overlays marked with a specific identifier, regardless of their lifetime.
---
---You pass a blank string to remove all overlays.
---
---@param scopeName string
function debugoverlay:RemoveAllInScope(scopeName) end

---
---Draws a solid cone.
---
---@param startPos Vector # Starting point of the cone
---@param direction Vector # Direction the cone faces
---@param spreadAngle number # Opening angle of the cone in radians
---@param length number # Length of the cone
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:SolidCone(
	startPos,
	direction,
	spreadAngle,
	length,
	red,
	green,
	blue,
	alpha,
	noDepthTest,
	seconds
)
end

---
---Draws a wireframe sphere.
---
---@param position Vector # Center of the sphere
---@param radius number # Radius of the sphere
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:Sphere(position, radius, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws a swept box. Specify endpoint's in world space and the bounds in local space.
---
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param Vector_3 Vector
---@param Vector_4 Vector
---@param Quaternion_5 Quaternion
---@param int_6 integer
---@param int_7 integer
---@param int_8 integer
---@param int_9 integer
---@param float_10 number
---@deprecated # Quaternions do not exist.
function debugoverlay:SweptBox(
	Vector_1,
	Vector_2,
	Vector_3,
	Vector_4,
	Quaternion_5,
	int_6,
	int_7,
	int_8,
	int_9,
	float_10
)
end

---
---Draws 2D text in the world.
---
---Escape sequences are consumed but only \n, \', \" and \\ are supported.
---
---@param position Vector # Position of the text in world space
---@param lineOffset integer # The line offset for the text, can be negative
---@param text string # The text to be displayed
---@param unknown `0`|number # Unknown what this parameter is. Text doesn't appear when above 0
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param seconds number # The lifetime of the drawn text, -1 means forever
function debugoverlay:Text(position, lineOffset, text, unknown, red, green, blue, alpha, seconds) end

---
---Draws a screen-space texture. Coordinates are in pixels.
---
---@param string_1 string
---@param Vector2D_2 Vector2D
---@param Vector2D_3 Vector2D
---@param int_4 integer
---@param int_5 integer
---@param int_6 integer
---@param int_7 integer
---@param Vector2D_8 Vector2D
---@param Vector2D_9 Vector2D
---@param float_10 number
---@deprecated # Vector2D does not exist.
function debugoverlay:Texture(
	string_1,
	Vector2D_2,
	Vector2D_3,
	int_4,
	int_5,
	int_6,
	int_7,
	Vector2D_8,
	Vector2D_9,
	float_10
)
end

---
---Draws a filled triangle.
---
---@param point1 Vector # First corner of the triangle
---@param point2 Vector # Second corner of the triangle
---@param point3 Vector # Third corner of the triangle
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:Triangle(point1, point2, point3, red, green, blue, alpha, noDepthTest, seconds) end

---
---Toggles the overlay render type, for unit tests.
---
---Cycles through 3 different render types: solid, striped, and checkerboard.
---
function debugoverlay:UnitTestCycleOverlayRenderType() end

---
---Draws 3D text. Specify origin + orientation in world space.
---
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param string_3 string
---@param int_4 integer
---@param int_5 integer
---@param int_6 integer
---@param int_7 integer
---@param bool_8 boolean
---@param float_9 number
---@deprecated # Quaternions do not exist.
function debugoverlay:VectorText3D(Vector_1, Quaternion_2, string_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---
---Draws a vertical arrow. Specify endpoint's in world space.
---
---@param startPos Vector # Starting point of the arrow
---@param endPos Vector # End point of the arrow where the arrow will point
---@param width number # Width of the arrow
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:VertArrow(startPos, endPos, width, red, green, blue, alpha, noDepthTest, seconds) end

---
---Draws a arrow associated with a specific yaw.
---
---@param startPos Vector # Starting point of the arrow
---@param yaw number # Yaw of the arrow in degrees
---@param length number # Length of the arrow
---@param width number # Width of the arrow
---@param red integer # The red value of the color (0-255)
---@param green integer # The green value of the color (0-255)
---@param blue integer # The blue value of the color (0-255)
---@param alpha integer # The alpha value of the shape (0-255)
---@param noDepthTest boolean # Whether or not to disable depth testing (will render on top of everything)
---@param seconds number # The lifetime of the shape, -1 means forever
function debugoverlay:YawArrow(startPos, yaw, length, width, red, green, blue, alpha, noDepthTest, seconds) end
