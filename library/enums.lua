---@meta

--#region Analog Input Actions

-- Actions for CBasePlayer:GetAnalogActionPositionForHand. These map to the actions in the SteamVR binding menu.

---@alias AnalogInputAction
---|0 # Hand | Hand Curl | X Axis
---|1 # Hand | Trigger Pull | X Axis
---|2 # Interact | Squeeze Xen Grenade | X Axis
---|3 # Move | Teleport Turn | Required X, Y Axis
---|4 # Move | Continuous Turn | X, Y Axis

--#endregion

--#region Controller types

-- Player VR controller types returned by CBasePlayer::GetVRControllerType()
-- Warning: The enumerations are missing from the scripting environment.

---@alias ControllerType
---|0 # VR_CONTROLLER_TYPE_UNKNOWN
---|1 # VR_CONTROLLER_TYPE_X360
---|2 # VR_CONTROLLER_TYPE_VIVE
---|3 # VR_CONTROLLER_TYPE_TOUCH
---|4 # VR_CONTROLLER_TYPE_RIFT_S
---|5 # UNKNOWN
---|6 # VR_CONTROLLER_TYPE_KNUCKLES
---|7 # VR_CONTROLLER_TYPE_WINDOWSMR
---|8 # VR_CONTROLLER_TYPE_WINDOWSMR_SAMSUNG
---|9 # VR_CONTROLLER_TYPE_GENERIC_TRACKED
---|10 # VR_CONTROLLER_TYPE_COSMOS

--#endregion

--#region Digital Input Actions

-- Actions for CBasePlayer:IsDigitalActionOnForHand. These map to the actions in the SteamVR binding menu.
-- Note: No enumerations exist in the game for these yet.
---@alias DigitalInputAction
---|0 # Menu > Toggle Menu
---|1 # Menu > Menu Interact
---|2 # Menu > Menu Dismiss
---|3 # Interact > Use
---|4 # Interact > Use Grip
---|5 # Weapon > Show inventory
---|6 # Interact > Grav Glove Lock
---|7 # Weapon > Fire
---|8 # Weapon > Alt Fire
---|9 # Weapon > Reload
---|10 # Weapon > Eject Magazine
---|11 # Weapon > Slide Release
---|12 # Weapon > Open Chamber
---|13 # Weapon > Toggle Laser Sight
---|14 # Weapon > Toggle Burst Fire
---|15 # Interact > Toggle Health Pen
---|16 # Interact > Arm Grenade
---|17 # Interact > Arm Xen Grenade
---|18 # Move > Teleport
---|19 # Move > Turn Left
---|20 # Move > Turn Right
---|21 # Move > Move Back
---|22 # Move > Walk
---|23 # Move > Jump
---|24 # Move > Mantle
---|25 # Move > Crouch Toggle
---|26 # Move > Stand toggle
---|27 # Move > Adjust Height

--#endregion

--#region Activation types

---Entity was activated for the first time.
ACTIVATE_TYPE_INITIAL_CREATION    = 0
---Unknown when this is used.
ACTIVATE_TYPE_DATAUPDATE_CREATION = 1
---Entity was activated during a game load.
ACTIVATE_TYPE_ONRESTORE           = 2

---Types of activation for the Activate() hook function.
---@alias ActivationType
---|`ACTIVATE_TYPE_INITIAL_CREATION` # Entity was activated for the first time.
---|`ACTIVATE_TYPE_DATAUPDATE_CREATION` # Unknown.
---|`ACTIVATE_TYPE_DATAUPDATE_CREATION` # Entity was activated during a game load.

--#endregion

--#region Damage types

DMG_GENERIC                 =	0
DMG_CRUSH                   =	1
DMG_BULLET                  =	2
DMG_SLASH                   =	4
DMG_BURN                    =   8
DMG_VEHICLE                 =	16
DMG_FALL                    =	32
DMG_BLAST                   =	64
DMG_CLUB                    =	128
DMG_SHOCK                   =	256
DMG_SONIC                   =	512
DMG_ENERGYBEAM              =	1024
DMG_PREVENT_PHYSICS_FORCE   =	2048
DMG_NEVERGIB                =	4096
DMG_ALWAYSGIB               =	8192
DMG_DROWN                   =	16384
DMG_PARALYZE                =	32768
DMG_NERVEGAS                =	65536
DMG_POISON                  =	131072
DMG_RADIATION               =	262144
DMG_DROWNRECOVER            =	524288
DMG_ACID                    =	1048576
DMG_SLOWBURN                =	2097152
DMG_REMOVENORAGDOLL         =	4194304
DMG_PHYSGUN                 =	8388608
DMG_PLASMA                  =	16777216
DMG_AIRBOAT                 =	33554432
DMG_DISSOLVE                =	67108864
DMG_BLAST_SURFACE           =	134217728
DMG_DIRECT                  =   268435456
DMG_BUCKSHOT                =   536870912 -- Shotgun damage. Gibs headcrabs.

---@alias DamageInfoTypes
---|`DMG_GENERIC` # DMG_GENERIC
---|`DMG_CRUSH` # DMG_CRUSH
---|`DMG_BULLET` # DMG_BULLET
---|`DMG_SLASH` # DMG_SLASH
---|`DMG_BURN` # DMG_BURN
---|`DMG_VEHICLE` # DMG_VEHICLE
---|`DMG_FALL` # DMG_FALL
---|`DMG_BLAST` # DMG_BLAST
---|`DMG_CLUB` # DMG_CLUB
---|`DMG_SHOCK` # DMG_SHOCK
---|`DMG_SONIC` # DMG_SONIC
---|`DMG_ENERGYBEAM` # DMG_ENERGYBEAM
---|`DMG_PREVENT_PHYSICS_FORCE` # DMG_PREVENT_PHYSICS_FORCE
---|`DMG_NEVERGIB` # DMG_NEVERGIB
---|`DMG_ALWAYSGIB` # DMG_ALWAYSGIB
---|`DMG_DROWN` # DMG_DROWN
---|`DMG_PARALYZE` # DMG_PARALYZE
---|`DMG_NERVEGAS` # DMG_NERVEGAS
---|`DMG_POISON` # DMG_POISON
---|`DMG_RADIATION` # DMG_RADIATION
---|`DMG_DROWNRECOVER` # DMG_DROWNRECOVER
---|`DMG_ACID` # DMG_ACID
---|`DMG_SLOWBURN` # DMG_SLOWBURN
---|`DMG_REMOVENORAGDOLL` # DMG_REMOVENORAGDOLL
---|`DMG_PHYSGUN` # DMG_PHYSGUN
---|`DMG_PLASMA` # DMG_PLASMA
---|`DMG_AIRBOAT` # DMG_AIRBOAT
---|`DMG_DISSOLVE` # DMG_DISSOLVE
---|`DMG_BLAST_SURFACE` # DMG_BLAST_SURFACE
---|`DMG_DIRECT` # DMG_DIRECT
---|`DMG_BUCKSHOT` # DMG_BUCKSHOT

--#endregion

--#region ParticleAttachment_t

-- Commented out names don't exist

--PATTACH_INVALID             = -1
PATTACH_ABSORIGIN           = 0
PATTACH_ABSORIGIN_FOLLOW    = 1
PATTACH_CUSTOMORIGIN        = 2
PATTACH_CUSTOMORIGIN_FOLLOW = 3
PATTACH_POINT               = 4
PATTACH_POINT_FOLLOW        = 5
PATTACH_EYES_FOLLOW         = 6
PATTACH_OVERHEAD_FOLLOW     = 7
PATTACH_WORLDORIGIN         = 8
PATTACH_ROOTBONE_FOLLOW     = 9
PATTACH_RENDERORIGIN_FOLLOW = 10
--PATTACH_MAIN_VIEW           = 11
--PATTACH_WATERWAKE           = 12
--PATTACH_CENTER_FOLLOW       = 13
--PATTACH_CUSTOM_GAME_STATE_1 = 14
MAX_PATTACH_TYPES           = 15

---@alias ParticleAttachmentType
---|-1 # PATTACH_INVALID
---|`PATTACH_ABSORIGIN` # PATTACH_ABSORIGIN
---|`PATTACH_ABSORIGIN_FOLLOW` # PATTACH_ABSORIGIN_FOLLOW
---|`PATTACH_CUSTOMORIGIN` # PATTACH_CUSTOMORIGIN
---|`PATTACH_CUSTOMORIGIN_FOLLOW` # PATTACH_CUSTOMORIGIN_FOLLOW
---|`PATTACH_POINT` # PATTACH_POINT
---|`PATTACH_POINT_FOLLOW` # PATTACH_POINT_FOLLOW
---|`PATTACH_EYES_FOLLOW` # PATTACH_EYES_FOLLOW
---|`PATTACH_OVERHEAD_FOLLOW` # PATTACH_OVERHEAD_FOLLOW
---|`PATTACH_WORLDORIGIN` # PATTACH_WORLDORIGIN
---|`PATTACH_ROOTBONE_FOLLOW` # PATTACH_ROOTBONE_FOLLOW
---|`PATTACH_RENDERORIGIN_FOLLOW` # PATTACH_RENDERORIGIN_FOLLOW
---|11 # PATTACH_MAIN_VIEW
---|12 # PATTACH_WATERWAKE
---|13 # PATTACH_CENTER_FOLLOW
---|14 # PATTACH_CUSTOM_GAME_STATE_1
---|15 # MAX_PATTACH_TYPES

--#endregion

--#region Effect flags

-- Enumerations used by Entity:AddEffects, Entity:RemoveEffects and Entity:IsEffectActive.
-- Constants don't exist.

---@alias EffectFlags
---|1 # EF_BONEMERGE Performs bone merge on client side
---|2 # EF_BRIGHTLIGHT DLIGHT centered at entity origin
---|4 # EF_DIMLIGHT Player flashlight
---|8 # EF_NOINTERP Don't interpolate the next frame
---|16 # EF_NOSHADOW Disables shadow
---|32 # EF_NODRAW Prevents the entity from drawing and networking.
---|64 # EF_NORECEIVESHADOW Don't receive shadows
---|128 # EF_BONEMERGE_FASTCULL For use with EF_BONEMERGE. If this is set, then it places this ents origin at its parent and uses the parent's bbox + the max extents of the aiment. Otherwise, it sets up the parent's bones every frame to figure out where to place the aiment, which is inefficient because it'll setup the parent's bones even if the parent is not in the PVS.
---|256 # EF_ITEM_BLINK Makes the entity blink
---|512 # EF_PARENT_ANIMATES Always assume that the parent entity is animating
---|1024 # EF_FOLLOWBONE Internal flag that is set by Entity:FollowBone

--#endregion

--#region Convars

-- CVar flags

---No flags
FCVAR_NONE                       = 0
---If this is set, the convar will become anonymous and won't show up in the 'find' results.
FCVAR_UNREGISTERED               = 1
---Hidden in released products. Flag is removed automatically if ALLOW_DEVELOPMENT_CVARS is defined.
FCVAR_DEVELOPMENTONLY            = 2
---Hidden. Doesn't appear in find or autocomplete. Like DEVELOPMENTONLY, but can't be compiled out.
FCVAR_HIDDEN                     = 16
---Makes the ConVar value hidden from all clients ( For example sv_password )
FCVAR_PROTECTED                  = 32
---Executing the command or changing the ConVar is only allowed in singleplayer
FCVAR_SPONLY                     = 64
---Save the ConVar value into client.vdf
FCVAR_ARCHIVE                    = 128
---For serverside ConVars, notifies all players with blue chat text when the value gets changed
FCVAR_NOTIFY                     = 256
---For clientside commands, sends the value to the server
FCVAR_USERINFO                   = 512
---Forces the ConVar to only have printable characters ( No control characters )
FCVAR_PRINTABLEONLY              = 1024
---Don't log the ConVar changes to console/log files/users
FCVAR_UNLOGGED                   = 2048
---Tells the engine to never print this variable as a string. This is used for variables which may contain control characters.
FCVAR_NEVER_AS_STRING            = 4096
---For serverside ConVars, it will send its value to all clients. The ConVar with the same name must also exist on the client!
FCVAR_REPLICATED                 = 8192
---Requires sv_cheats to be enabled to change the ConVar or run the command
FCVAR_CHEAT                      = 16384
---Unknown split screen flag
FCVAR_SS                         = 32768
---Force the ConVar to be recorded by demo recordings.
FCVAR_DEMO                       = 65536
---Opposite of FCVAR_DEMO, ensures the ConVar is not recorded in demos
FCVAR_DONTRECORD                 = 131072
---Makes the ConVar not changeable while connected to a server or in singleplayer
FCVAR_NOT_CONNECTED              = 4194304
---Unknown
FCVAR_VCONSOLE_SET_FOCUS         = 1073741824

---@alias CVarFlags
---|`FCVAR_NONE` # No flags
---|`FCVAR_UNREGISTERED` # If this is set, the convar will become anonymous and won't show up in the 'find' results.
---|`FCVAR_DEVELOPMENTONLY` # Hidden in released products. Flag is removed automatically if ALLOW_DEVELOPMENT_CVARS is defined.
---|`FCVAR_HIDDEN` # Hidden. Doesn't appear in find or autocomplete. Like DEVELOPMENTONLY, but can't be compiled out.
---|`FCVAR_PROTECTED` # Makes the ConVar value hidden from all clients ( For example sv_password )
---|`FCVAR_SPONLY` # Executing the command or changing the ConVar is only allowed in singleplayer
---|`FCVAR_ARCHIVE` # Save the ConVar value into client.vdf
---|`FCVAR_NOTIFY` # For serverside ConVars, notifies all players with blue chat text when the value gets changed
---|`FCVAR_USERINFO` # For clientside commands, sends the value to the server
---|`FCVAR_PRINTABLEONLY` # Forces the ConVar to only have printable characters ( No control characters )
---|`FCVAR_UNLOGGED` # Don't log the ConVar changes to console/log files/users
---|`FCVAR_NEVER_AS_STRING` # Tells the engine to never print this variable as a string. This is used for variables which may contain control characters.
---|`FCVAR_REPLICATED` # For serverside ConVars, it will send its value to all clients. The ConVar with the same name must also exist on the client!
---|`FCVAR_CHEAT` # Requires sv_cheats to be enabled to change the ConVar or run the command
---|`FCVAR_SS` # Unknown split screen flag
---|`FCVAR_DEMO` # Force the ConVar to be recorded by demo recordings.
---|`FCVAR_DONTRECORD` # Opposite of FCVAR_DEMO, ensures the ConVar is not recorded in demos
---|`FCVAR_NOT_CONNECTED` # Makes the ConVar not changeable while connected to a server or in singleplayer
---|`FCVAR_VCONSOLE_SET_FOCUS` # Unknown

--#endregion

--#region Unknown globals

-- Found through brute force.
BURST   = 5
EMPTY   = 0
TAUNT   = 14
PRESIM  = 0
RELOAD  = 6
ACT_ARM = 71
ACT_FLY = 25
ACT_HOP = 30
ACT_RUN = 10
ACT_USE = 47

--#endregion