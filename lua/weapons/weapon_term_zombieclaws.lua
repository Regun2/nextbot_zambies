AddCSLuaFile()

SWEP.Base = "weapon_terminatorfists_term"

SWEP.PrintName = "Zombie Claws"
SWEP.Spawnable = false
SWEP.Author = "StrawWagen"
SWEP.Purpose = "Innate weapon that the zombie will use"

SWEP.Range = 50

SWEP.DamageMin = 15
SWEP.DamageMax = 25
SWEP.DamageType = DMG_SLASH

SWEP.PropDamageBonusMul = 3
SWEP.NPCDamageBonusMul = 1

SWEP.SwingSound = Sound( "Zombie.AttackMiss" )
SWEP.HitSound = Sound( "Zombie.AttackHit" )
SWEP.ViewPunchMul = 4

local className = "weapon_term_zombieclaws"
if CLIENT then
    language.Add( className, SWEP.PrintName )

end

function SWEP:PlayHitSound( owner, pitchShift )
    owner:EmitSound( self.HitSound, 75, 100 + pitchShift )

end

function SWEP:PlaySwingSound( owner, pitchShift )
    owner:EmitSound( self.SwingSound, 75, 100 + pitchShift )

end
