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
	["WhiskeyWaterFull"] = "Bottle",

	["farming.RemouladeFull"] = "Bottle",
	["farming.RemouladeEmpty"] = "Bottle",
	["farming.RemouladeWaterFull"] = "Bottle",

	["BeerBottle"] = "Bottle",
	["BeerFull"] = "Bottle",
	["BeerEmpty"] = "Bottle",
	["BeerWaterFull"] = "Bottle",

	["Wine"] = "Bottle",
	["WineEmpty"] = "Bottle",
	["Wine2"] = "Bottle",
	["WineEmpty2"] = "Bottle",
	["WineWaterFull"] = "Bottle",
	["BeerEmpty"] = "Bottle",
	["BeerWaterFull"] = "Bottle",

	["MayonnaiseFull"] = "Bottle",
	["MayonnaiseEmpty"] = "Bottle",
	["MayonnaiseWaterFull"] = "Bottle",

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
	["Hat_GasMask"] = "TrinketGasMask",
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
	["Hat_GasMask"] = "GasMask",

	["SleepingbagRolled"] = "sleepingbag",
	["SleepingbagGRolled"] = "sleepingbagG",
	["SleepingbagRRolled"] = "sleepingbagR",
	["SleepingbagORolled"] = "sleepingbagO",
	["SleepingbagBKRolled"] = "sleepingbagBK",
	["SleepingbagLBRolled"] = "sleepingbagLB",
	["SleepingbagPRolled"] = "sleepingbagP",
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

--ScrapArmor
if getActivatedMods():contains("ScrapArmor(new version)") then
	TweakItem("Rucksack","WorldStaticModel", "Rucksack_Ground");
	TweakItem("Rucksack","AttachmentReplacement", "Bag");
	TweakItem("Rucksack","DisplayCategory", "Bag");
end