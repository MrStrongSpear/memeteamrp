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

     TEAM_HITMAN = DarkRP.createJob("Hitman", { -- That's TEAM_PIRATE (Used for like AddCustomDoorgroup or Add to only that group to a door. Also, never use the same TEAM_)
        color = Color(80, 5, 255, 0), -- Chat / Scoreboard Color
        model = "models/player/Group01/Male_01.mdl", -- Model; to add multiple use  {"models/../model1.mdl","models/../model2.mld},  NOTE the extra comma after the bracket.
        description = [[You are a hitman. Accept hits from players for money, and kill quickly.]], --Description for Job.
        weapons = {"bb_p228_alt"}, -- Weapons for a job. Seperate them with a "," eg: "med_kid", "armor_kit" always finish the last one without a ","
        command = "hitman", --Chat command for job. Don't use the same as another teams.
        max = 3, -- Maximum amount of players for this job.
        salary = 75, -- The salary they get paid.
        admin = 0, -- Requires Admin? 1 for yes, 0 for no.
        vote = true, -- Do they need to vote? true for yes, false for no.
        hasLicense = false, -- Do they have a license for weapons?
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




--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
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
