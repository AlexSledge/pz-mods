if not Backpacks then Backpacks = {} end

local modsBackpacks = {
	["Pitstop"] = {"KleanBackpack"} ,
	["2507488373"] = {"HR","RUKSAK1","RUKSAK2","ANAT"} ,  --Clothes BOX
	["UndeadSuvivor"] = {"NomadBackpack"} ,
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