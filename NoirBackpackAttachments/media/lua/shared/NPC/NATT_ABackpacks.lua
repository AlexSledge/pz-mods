-- If you change mods ids for some reason, you need to change it here as well
-- or some recipes will stop working
-- ["Dont change this value"] = "New mod id need to be here"
-- Example = ["ScrapArmor"] = "vs69"
NATTmods = {
	["Pitstop"] = "Pitstop",
	["ClothesBox"] = "2507488373",
	["UndeadSuvivor"] = "UndeadSuvivor",
	["ScrapArmor"] = "ScrapArmor(new version)",
	["SLEO"] = "SLEO",
	["SMUI"] = "SMUI",
}  


if not Backpacks then Backpacks = {} end

local modsBackpacks = {
	[NATTmods.Pitstop] = {"KleanBackpack"} ,
	[NATTmods.ClothesBox] = {"HR","RUKSAK1","RUKSAK2","ANAT"} ,
	[NATTmods.UndeadSuvivor] = {"NomadBackpack"} ,
	[NATTmods.ScrapArmor] = {"Rucksack"} ,
	[NATTmods.SLEO] = {"PoliceUtilityBag"} ,
	[NATTmods.SMUI] = {"CFP90PatrolPack","MilitaryMedicalBag"} ,
}

Backpacks = {
	"Schoolbag",
	"Alicepack",
	"BigHikingbag",
	"Hikingbag",
	"MilitaryAlicepack",
}

function loadBackpacks(bps)
	for _,backpack in ipairs(bps) do
		table.insert(Backpacks,backpack)
	end
end

function checkBackpacks()
	for k,_ in pairs(modsBackpacks) do
		if getActivatedMods():contains(k) then
			loadBackpacks(modsBackpacks[k])
		end
	end
end

checkBackpacks()