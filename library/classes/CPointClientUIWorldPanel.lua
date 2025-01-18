---@meta

---
---Entity class for point_clientui_world_panel/
---
---A 2D Panorama panel projected at a set position in the world.
---
---@class CPointClientUIWorldPanel : CBaseModelEntity
CPointClientUIWorldPanel = {}

---
---Tells the panel to accept user input.
---
function CPointClientUIWorldPanel:AcceptUserInput() end

---
---Adds CSS class(es) to the panel.
---
---@param classes string # Space-separated list of CSS classes
function CPointClientUIWorldPanel:AddCSSClasses(classes) end

---
---Tells the panel to ignore user input.
---
function CPointClientUIWorldPanel:IgnoreUserInput() end

---
---Returns whether this entity is grabbable.
---
function CPointClientUIWorldPanel:IsGrabbable() end

---
---Remove CSS class(es) from the panel.
---
---@param classes string # Space-separated list of CSS classes
function CPointClientUIWorldPanel:RemoveCSSClasses(classes) end
