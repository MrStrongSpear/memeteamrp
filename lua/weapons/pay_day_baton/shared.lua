AddCSLuaFile()
 
if CLIENT then --Client stuff
	SWEP.PrintName = "Pay Day Baton" --Name
	SWEP.Slot = 1
	SWEP.SlotPos = 3
	SWEP.DrawAmmo = false --Draw ammo in bottom right corner
	SWEP.DrawCrosshair = false --Draw crosshair?
end
 
SWEP.Author = "KillerLUA Edited by Glitch" --Author
SWEP.Instructions = "Left or right click to give the player a pay day" --How to use
SWEP.Contact = "" --Contact
SWEP.Purpose = "Gives people paydays" --Purpose
 
SWEP.ViewModelFOV = 62
SWEP.ViewModelFlip = false
SWEP.AnimPrefix = "stunstick"
 
SWEP.Spawnable = true
SWEP.AdminOnly = true --Only spawnable by admins!
 
SWEP.NextStrike = 0
 
SWEP.ViewModel = Model("models/weapons/v_stunstick.mdl") --The model while being held
SWEP.WorldModel = Model("models/weapons/w_stunbaton.mdl") --World model (on the ground)
 
SWEP.Sound = Sound("weapons/stunstick/stunstick_swing1.wav") --The sound
 
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic = false 
SWEP.Primary.Ammo = ""
 
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""
 
function SWEP:Initialize()
	self:SetHoldType("normal")
end
 
function SWEP:PrimaryAttack()
	if CurTime() < self.NextStrike then return end
 
	self:SetHoldType("normal")
	timer.Simple(0.3, function() if self:IsValid() then self:SetHoldType("normal") end end) --Checks that the swep hasn't quickly been switched
 
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self.Weapon:EmitSound(self.Sound) ---Emit a sound, the stunstick wack
	self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
 
	self.NextStrike = CurTime() + 0.51
 
	if CLIENT then return end --No clients past here
 
	self.Owner:LagCompensation(true)
	local trace = util.QuickTrace(self.Owner:EyePos(), self.Owner:GetAimVector() * 90, {self.Owner})
	self.Owner:LagCompensation(false)
 
	local ent = self.Owner:getEyeSightHitEntity(nil, nil, function(p) return p ~= self.Owner and p:IsPlayer() and p:Alive() end)
 
        if not IsValid(ent) or (self.Owner:EyePos():Distance(ent:GetPos()) > 90) or (not ent:IsPlayer() and not ent:IsNPC()) then
		return
	end
 
	ent:payDay() --Give them a payday
end
 
function SWEP:SecondaryAttack()
	
	self.Owner:payDay() --Pay yourself..
	return true
end