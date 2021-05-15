SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CSA" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "PP-A9"
SWEP.TrueName = "Glock 18"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "9mm fully automatic police machine pistol. Low damage, but a sophisticated recoil control system allows for excellent automatic performance."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1989

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Glock Ges.m.b.H."
    SWEP.Trivia_Country = "Germany"
end

SWEP.CrouchPos = Vector(-0.5, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 250

---SWEP.CamAttachment = 3 does this even work?????

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_csanal/c_gluke.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_csanal/c_gluke.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 27
SWEP.DamageMin = 19 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 350 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 18
SWEP.MaxRecoilBlowback = 3

SWEP.Recoil = 1
SWEP.RecoilSide = 0.275
SWEP.RecoilRise = 1.25
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 900 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 20 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/csa/gluke/fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/pistol/sd.wav"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/pistol/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.25

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.2

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 14

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.481, 10, 0.92),
    Ang = Angle(0.503, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(1, 2, 0)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.CustomizePos = Vector(8, 2, 3)
SWEP.CustomizeAng = Angle(0, 23.763, 29.01)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 7

SWEP.AttachmentElements = {	
    ["rail"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},		
        },	
    },
    ["slog_csa_gluke_slide_18"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},		
        },
    },
    ["slog_csa_gluke_slide_roni"] = {
        AttPosMods = {
		[1] = {vpos = Vector(0, -4.65, 1.2)},
		[2] = {vpos = Vector(0, -3.15, 10)},		
		[5] = {vpos = Vector(1, -2.85, 6), vang = Angle(90, 0, 0),}
		},	
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 3, bg = 2},				
        },
        Override_ActivePos = Vector(1, 2, -0.5),
        Override_CrouchPos = Vector(-2, 2, -0.5),	
        Override_CrouchAng = Angle(0, 0, -10),		
        Override_HolsterPos = Vector(2,5,-4),
        Override_HolsterAng = Angle(7.036, 30.016, -30),	
        Override_IronSightStruct = {
            Pos = Vector(-2.481, 5, -0.7),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },		
    },	
    ["slog_csa_gluke_mag_x"] = {
        VMBodygroups = {
            {ind = 2, bg = 1},
        },
    },
    ["slog_csa_gluke_mag_drum"] = {
        VMBodygroups = {
            {ind = 2, bg = 2},
        },
    },	
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if wep.Attachments[3].Installed == "slog_csa_gluke_slide_roni" and (wep.Attachments[1].Installed or wep.Attachments[8].Installed) then vm:SetBodygroup(3, 0) end
end


SWEP.WorldModelOffset = {
    pos = Vector(-5, -1.5, -3.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp",
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -4.65, 1.2), 
            vang = Angle(90, 0, -90),
        },			
        InstalledEles = {"rail"},	
        MergeSlots = {8},		
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -3.15, 8),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Slide",
        Slot = {"csa_gluke_slide"},
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0.5, -3.5, 6), 
            vang = Angle(90, 0, -90),
        },			
    },	
    {
        PrintName = "Magazine",
        Slot = {"csa_gluke_mag"}
    },	
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -2, 6.5), 
            vang = Angle(90, 0, -90),
        },
        MergeSlots = {9},		
    },	
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"}
    },
    {
        PrintName = "Perk",
        Slot = {"go_perk"}
    },		
	
    { -- thank you 8z very cool
        Slot = "optic",
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -4.55, 1.2), 
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        HideIfBlocked = true,
        RequireFlags = {"slog_csa_gluke_slide_roni"},
        VMScale = Vector(1.25, 1.25, 1.25),
    },	

    { 
        Slot = "foregrip",
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -0.8, 7), 
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        HideIfBlocked = true,
        RequireFlags = {"slog_csa_gluke_slide_roni"},
    },	
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim) --- hierarchy ---
    if wep.Attachments[4].Installed == "slog_csa_gluke_mag_x" then
        return anim .. "_x"
    end
	
    if wep.Attachments[4].Installed == "slog_csa_gluke_mag_drum" then
        return anim .. "_drum"
    end
end


SWEP.Animations = {
    ["idle"] = {Source = "idle",},
    ["idle_empty"] = {Source = "idle_empty",},
    ["ready"] = {Source = "draw",},
    ["draw"] = {Source = "draw",},
    ["draw_empty"] = {Source = "draw_empty",},	
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "iron",
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "iron_last",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
    ["reload_x"] = {
        Source = "wet_x",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
    ["reload_empty_x"] = {
        Source = "dry_x",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.4,
        LHIKEaseOut = 0.25,		
    },
    ["reload_drum"] = {
        Source = "wet_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
    ["reload_empty_drum"] = {
        Source = "dry_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,	
    },	
}