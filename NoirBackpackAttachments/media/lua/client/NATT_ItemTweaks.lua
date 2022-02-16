local attachments = {
    ["WaterBottleFull"] = "Bottle",
    ["WaterBottleEmpty"] = "Bottle",
    ["WaterPopBottle"] = "Bottle",
    ["PopBottleEmpty"] = "Bottle",
    ["PopBottle"] = "Bottle",
	["Pop"] = "Bottle",
	["Pop2"] = "Bottle",
	["Pop3"] = "Bottle",
	["WhiskeyFull"] = "Bottle",
	["WhiskeyEmpty"] = "Bottle",

	["SleepingbagRolled"] = "Bedroll",
	["SleepingbagGRolled"] = "Bedroll",
	["SleepingbagRRolled"] = "Bedroll",
	["SleepingbagORolled"] = "Bedroll",
	["SleepingbagBKRolled"] = "Bedroll",
	["SleepingbagLBRolled"] = "Bedroll",
	["SleepingbagPRolled"] = "Bedroll",

	["HandTorch"] = "Flashlight",

	["Doll"] = "TrinketDoll",
	["DogChew"] = "TrinketDogChew",
	["CatToy"] = "TrinketCatToy",
	["Rubberducky"] = "TrinketRubberDucky",
	["Rubberducky2"] = "TrinketRubberDucky",
	["ToyBear"] = "TrinketToyBear",
	["ToyCar"] = "TrinketToyCar",
	["Yoyo"] = "TrinketYoyo",
	["Cube"] = "TrinketCube",
}

for k,v in pairs(attachments) do 
	TweakItem(k,"AttachmentType",v)
end

local staticModels = {
    ["Doll"] = "Doll",
    ["DogChew"] = "DogChewToy",
    ["CatToy"] = "CatToy",
    ["Rubberducky"] = "Rubberducky",
    ["Rubberducky2"] = "Rubberducky",
	["ToyBear"] = "ToyBear",
	["ToyCar"] = "ToyCar",
	["Yoyo"] = "Yoyo",

	["SleepingbagRolled"] = "sleepingbag",
	["SleepingbagGRolled"] = "sleepingbag",
	["SleepingbagRRolled"] = "sleepingbag",
	["SleepingbagORolled"] = "sleepingbag",
	["SleepingbagBKRolled"] = "sleepingbag",
	["SleepingbagLBRolled"] = "sleepingbag",
	["SleepingbagPRolled"] = "sleepingbag",
}

for k,v in pairs(staticModels) do 
	TweakItem(k,"StaticModel",v)
end

--Nerf Klean fcking op bag
if getActivatedMods():contains("Pitstop") then
	TweakItem("KleanBackPack","DisplayName", "Clean Up Krew Backpack");
	TweakItem("KleanBackPack","WeightReduction", 87);
	TweakItem("KleanBackPack","Capacity", 30)
end

--Add bedroll attachment to NomadBackpack
if getActivatedMods():contains("UndeadSuvivor") then
	TweakItem("UndeadSurvivor.NomadBackpack","AttachmentsProvided", "NomadBackpackBedroll");
end