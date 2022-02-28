local attachments = {
    ["WaterBottleFull"] = "Bottle",
    ["WaterBottleEmpty"] = "Bottle",
    ["WaterPopBottle"] = "Bottle",
    ["PopBottleEmpty"] = "Bottle",
    ["PopBottle"] = "Bottle",
	["Pop"] = "Bottle",
	["Pop2"] = "Bottle",
	["Pop3"] = "Bottle",
	["PopEmpty"] = "Bottle",
	["Pop2Empty"] = "Bottle",
	["Pop3Empty"] = "Bottle",
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
	["Spiffo"] = "TrinketPlushie",
	["DogChew"] = "TrinketDogChew",
	["CatToy"] = "TrinketCatToy",
	["Rubberducky"] = "TrinketRubberDucky",
	["Rubberducky2"] = "TrinketRubberDucky",
	["ToyBear"] = "TrinketToyBear",
	["ToyCar"] = "TrinketToyCar",
	["Yoyo"] = "TrinketYoyo",
	["Cube"] = "TrinketCube",
	["Hat_GasMask"] = "TrinketMask",
	["Hat_HockeyMask"] = "TrinketMask",
	["WeldingMask"] = "TrinketMask",
}

for k,v in pairs(attachments) do 
	TweakItem(k,"AttachmentType",v)
end

local staticModels = {
    ["Doll"] = "Doll",
	["Spiffo"] = "SpiffoPlushie",
    ["DogChew"] = "DogChewToy",
    ["CatToy"] = "CatToy",
    ["Rubberducky"] = "Rubberducky",
    ["Rubberducky2"] = "Rubberducky",
	["ToyBear"] = "ToyBear",
	["ToyCar"] = "ToyCar",
	["Yoyo"] = "Yoyo",
	["Hat_GasMask"] = "GasMask",
	["Hat_HockeyMask"] = "HockeyMask",
	["WeldingMask"] = "WelderMask",

	["PopEmpty"] = "PopCanDietWorld",
	["Pop2Empty"] = "PopCanRedWorld",
	["Pop3Empty"] = "PopCanFizzWorld",

	["PopBottleEmpty"] = "PopBottle",

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
if getActivatedMods():contains(NATTmods.Pitstop) then
	TweakItem("KleanBackPack","WeightReduction", 87);
	TweakItem("KleanBackPack","Capacity", 30)
end

--Add bedroll attachment to NomadBackpack
if getActivatedMods():contains(NATTmods.UndeadSuvivor) then
	TweakItem("UndeadSurvivor.NomadBackpack","AttachmentsProvided", "NomadBackpackBedroll");
end

--ScrapArmor
if getActivatedMods():contains(NATTmods.ScrapArmor) then
	TweakItem("Rucksack","WorldStaticModel", "Rucksack_Ground");
	TweakItem("Rucksack","AttachmentReplacement", "Bag");
	TweakItem("Rucksack","DisplayCategory", "Bag");
end