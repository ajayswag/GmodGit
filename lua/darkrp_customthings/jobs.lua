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

TEAM_Stormtrooper = DarkRP.createJob("Stormtrooper", {
   color = Color(255, 0, 0, 255),
   model = {""},
   description = [[He's the guy who shoots people]],
   weapons = {"weapon_752_e11"},
   command = "",
   max = ,
   salary = ,
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
   category = "Stormtrooper",
})

Team_HeavyStormtrooper = DarkRP.createJob("Heavy Stormtrooper", {
   color = Color(0, 0, 0, 255),
   model = {""},
   description = [[He eats a little too much so now he's heavy]],
   weapons = {"weapon_752_e11"},
   command = "",
   max = ,
   salary = ,
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
   category = "Stormtrooper",
})
