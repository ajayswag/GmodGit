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

TEAM_CAPTAINPHASMA = DarkRP.createJob("Captain Phasma", {
   color = Color(77, 0, 0, 255),
   model = {"models/dusty/playermodels/theforceawakens/phasma/phasma_playermodel.mdl"},
   description = [[Captain Phasma commands the First Order’s legions of stormtroopers. A tough veteran commander, she has no use for fancy titles or complex war rooms.]],
   weapons = {"weapon_752_e11"},
   command = "cphasma",
   max = 1,
   salary = 900,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "FN Corps",
})

TEAM_SNOWTROOPER = DarkRP.createJob("Snowtrooper", {
   color = Color(255, 0, 0, 255),
   model = {"models/nate159/swbf2015/playermodels/snowtrooper.mdl"},
   description = [[Under the command of Captain Phasma, these snowtroopers were trained in extremley harsh conditions aswell as to cope with new obstacles. They have the most intense and extraordinary training in the galaxy.]],
   weapons = {"weapon_752_e11", "weapon_752_se14c"},
   command = "snow",
   max = 8,
   salary = 200,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Troopers",
})

TEAM_KNIGHTOFREN = DarkRP.createJob("Knight Of Ren", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/darth_revan.mdl"},
   description = [[As a Knight of Ren, you are looked at as a member of the most dangerous dark side orginization. You are under the command of supreme leader Snoke.]],
   weapons = {},
   command = "kor",
   max = 3,
   salary = 700,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Knights of Ren",
})

TEAM_STORMTROOPER = DarkRP.createJob("First Order Storm Trooper", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/Star Wars The Force Awakens/spartanmark6/First Order Trooper/ep7_stormtrooper.mdl"},
   description = [[Under the command of Captain Phasma, the troopers went through her relentless training program and are one of the finest soldiers in the galaxy.]],
   weapons = {"weapon_752_e11"},
   command = "stormtrooper",
   max = 50,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "stormtrooper" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "You do not have the required training to become this job", -- Allows you to tell the user what went wrong when attempting to switch jobs
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Troopers",
})

TEAM_KYLOREN = DarkRP.createJob("Kylo Ren", {
   color = Color(255, 0, 0, 255),
   model = {"models/grealms/characters/kyloren/kyloren.mdl"},
   description = [[Kylo Ren was a Force-sensitive human male who trained as a Jedi pupil under Jedi Master Luke Skywalker before turning to the dark side of the Force and joining the Knights of Ren.]],
   weapons = {"weapon_lightsaber"},
   command = "kylo",
   max = 1,
   salary = 1000,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Knights of Ren",
})

TEAM_HANSOLO = DarkRP.createJob("Han Solo", {
   color = Color(206, 60, 60, 255),
   model = {""},
   description = [[Hes Ma Nigga]],
   weapons = {weapon_752_dl44},
   command = "/HanSolo",
   max = 1,
   salary = 300,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Rebels",
})

TEAM_Rebel = DarkRP.createJob("Rebel", {
   color = Color(155, 61, 61, 255),
   model = {""},
   description = [[Rebel]],
   weapons = {weapon_752_e11},
   command = "/Rebel",
   max = 5,
   salary = 150,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Rebels",
})


--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_SNOWTROOPER


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
DarkRP.addHitmanTeam(TEAM_MOB)
