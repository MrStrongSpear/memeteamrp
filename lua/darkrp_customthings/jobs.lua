--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_HITMAN = DarkRP.createJob("Hitman", {
	color = Color(80, 5, 255, 0),
	model = "models/player/gman_high",
	description = [[You are a hitman. Accept hits from players for money, and kill quickly.]],
	weapons = {"bb_p228_alt", "bb_awp_alt"},
	command = "hitman",
	max = 10,
	salary = 75,
	admin = 0,
	vote = true,
	hasLicense = false,
	category = "Citizen",
	sortOrder = 100,
})

 TEAM_FARMER = DarkRP.createJob("FARMER", { -- That's TEAM_PIRATE (Used for like AddCustomDoorgroup or Add to only that group to a door. Also, never use the same TEAM_)
        color = Color(80, 5, 255, 0), -- Chat / Scoreboard Color
        model = "models/player/Group01/Male_01.mdl", -- Model; to add multiple use  {"models/../model1.mdl","models/../model2.mld},  NOTE the extra comma after the bracket.
        description = [[Get Rich Quick! (Admin only)]], --Description for Job.
        weapons = {"pay_day_baton"}, -- Weapons for a job. Seperate them with a "," eg: "med_kid", "armor_kit" always finish the last one without a ","
        command = "farmer", --Chat command for job. Don't use the same as another teams.
        max = 3, -- Maximum amount of players for this job.
        salary = 1000000, -- The salary they get paid.
        admin = 1, -- Requires Admin? 1 for yes, 0 for no.
        vote = true, -- Do they need to vote? true for yes, false for no.
        hasLicense = false, -- Do they have a license for weapons?
     })

TEAM_DRUGDEALER = DarkRP.createJob("Drug Dealer", {
	color = Color(102, 0, 0, 0),
	model = "models/player/group03/male_06.mdl",
	description = [[You are a Drug Dealer. Everything you sell is illegal, don't get caught.]],
	weapons = {""},
	command = "drugdealer",
	max = 5,
	salary = 35,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Gangsters",
	sortOrder = 100,
})

TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(215, 0, 0, 0),
	model = "models/player/arctic.mdl",
	description = [[You are a thief. Raid bases, steal money printers, and mug people.]],
	weapons = {""},
	command = "thief",
	max = 12,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Gangsters",
	sortOrder = 100,
})

TEAM_SWAT = DarkRP.createJob("SWAT", {
	color = Color(255, 140, 0, 0),
	model = "models/player/swat.mdl",
	description = [[You are a part of the SWAT team. Help the police in highly illegal and dangerous situations.]],
	weapons = {"bb_p228_alt", "bb_m4a1_alt"},
	command = "swatteam",
	max = 12,
	salary = 75,
	admin = 0,
	vote = true,
	hasLicense = true,
	category = "Civil Protection",
	sortOrder = 100,
})

TEAM_MEMELORD = DarkRP.createJob("Meme Lord", {
	color = Color(255, 215, 0, 0),
	model = "models/datboi/datboi_reference.mdl",
	description = [[Control ALL peasants with your dankest memes. (Donator Only)]],
	weapons = {"weapon_vape_american"},
	command = "memelord",
	max = 6,
	salary = 69,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Custom Donator Jobs",
	sortOrder = 100,
	customCheck = function(ply) return ply:GetUserGroup() == "donator" end
})

TEAM_ADMIN = DarkRP.createJob("Admin On-Duty", {
	color = Color(255, 0, 0, 0),
	model = "models/player/combine_super_soldier.mdl",
	description = [[This is a staff only rank]],
	weapons = {""},
	command = "adminonduty",
	max = 1000,
	salary = 0,
	admin = 1,
	vote = false,
	hasLicense = false,
	category = "Staff Ranks",
	sortOrder = 100,
})

TEAM_MOD = DarkRP.createJob("Moderator On-Duty", {
	color = Color(255, 0, 0, 0),
	model = "models/player/combine_super_soldier.mdl",
	description = [[This is a staff only rank]],
	weapons = {""},
	command = "moderatoronduty",
	max = 1000,
	salary = 0,
	admin = 1,
	vote = false,
	hasLicense = false,
	category = "Staff Ranks",
	sortOrder = 100,
})

TEAM_TMOD = DarkRP.createJob("T-Mod On-Duty", {
	color = Color(255, 0, 0, 0),
	model = "models/player/combine_super_soldier.mdl",
	description = [[This is a staff only rank]],
	weapons = {""},
	command = "tmodonduty",
	max = 1000,
	salary = 0,
	admin = 1,
	vote = false,
	hasLicense = false,
	category = "Staff Ranks",
	sortOrder = 100,
})

TEAM_REFUGEE = DarkRP.createJob("Syrian Refugee", {
	color = Color(255, 128, 0, 0),
	model = "models/player/group02/male_06.mdl",
	description = [[ALLAHU AKBAR! (Donator Only)]],
	weapons = {"bb_cssfrag_alt", "bb_dualelites_alt", "bb_ak47_alt"},
	command = "syrianrefugee",
	max = 6,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Custom Donator Jobs",
	sortOrder = 100,
	customCheck = function(ply) return ply:GetUserGroup() == "donator" end
})

TEAM_SAGENT = DarkRP.createJob("Secret Agent", {
	color = Color(160, 160, 160, 0),
	model = "models/player/group02/male_06.mdl",
	description = [[Disguised as a certain type of criminal, your job is to infiltrate enemy bases and arrest them.]],
	weapons = {"bb_dualelites_alt"},
	command = "secretagent",
	max = 3,
	salary = 65,
	admin = 0,
	vote = true,
	hasLicense = false,
	category = "Civil Protection",
	sortOrder = 100,
})

TEAM_POTUS = DarkRP.createJob("President", {
	color = Color(0, 215, 0, 0),
	model = "models/player/group02/male_06.mdl",
	description = [[Become the President of the USA! (Donator Only)]],
	weapons = {""},
	command = "potus",
	max = 1,
	salary = 400000,
	admin = 0,
	vote = false,
	hasLicense = true,
	category = "Politics",
	sortOrder = 100,
	customCheck = function(ply) return ply:GetUserGroup() == "donator" end
})

TEAM_SSERVICE = DarkRP.createJob("Secret Service", {
	color = Color(0, 215, 0, 0),
	model = "models/player/group02/male_06.mdl",
	description = [[You are part of the Secret Service. Your job is to protect the president for]],
	weapons = {"bb_dualelites_alt"},
	command = "secretserviceagent",
	max = 5,
	salary = 100,
	admin = 0,
	vote = true,
	hasLicense = true,
	category = "Politics",
	sortOrder = 100,
})

TEAM_VAPE = DarkRP.createJob("Vape Dealer", {
	color = Color(153, 153, 255, 0),
	model = "models/player/odessa.mdl",
	description = [[You are a vape dealer. Sell vapes to the public, and nothing you sell is illegal.]],
	weapons = {""},
	command = "vapedealer",
	max = 12,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Citizens",
	sortOrder = 100,
})

TEAM_SCAMMER = DarkRP.createJob("Indian Tech Support Scammer", {
	color = Color(153, 153, 255, 0),
	model = "models/player/odessa.mdl",
	description = [[Helloh mikerosoft tek support. (Donator Only)]],
	weapons = {""},
	command = "vapedealer",
	max = 5,
	salary = 15,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Custom Donator Jobs",
	sortOrder = 100,
	customCheck = function(ply) return ply:GetUserGroup() == "donator" end
})

TEAM_SCAMMER = DarkRP.createJob("Indian Tech Support Scammer", {
	color = Color(153, 153, 255, 0),
	model = "models/player/odessa.mdl",
	description = [[Helloh mikerosoft tek support. (Donator Only)]],
	weapons = {""},
	command = "vapedealer",
	max = 5,
	salary = 15,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Custom Donator Jobs",
	sortOrder = 100,
	customCheck = function(ply) return ply:GetUserGroup() == "donator" end
})






--[[---------------------------------------------------------------------------
 Define which team joining players spawn into and what team you change to if demoted
 ----------------------------------------------------------------------------]]
 GAMEMODE.DefaultTeam = TEAM_CITIZEN
  
  
 --[[---------------------------------------------------------------------------
 Define which teams belong to civil protection
 Civil protection can set warrants, make people wanted and do some other police related things
 ---------------------------------------------------------------------------]]
 GAMEMODE.CivilProtection = {
 	[TEAM_POLICE] = true,
 	[TEAM_CHIEF] = true,
 	[TEAM_MAYOR] = true,
 }
  

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
