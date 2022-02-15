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

}

for k,v in pairs(attachments) do 
	TweakItem(k,"AttachmentType",v)
end

-- Shoulder Handtorch Slot
TweakItem("HandTorch","AttachmentType", "Flashlight");

--Trinket Slot
TweakItem("Doll","AttachmentType", "TrinketDoll");
TweakItem("Doll","StaticModel", "Doll");
TweakItem("DogChew","AttachmentType", "TrinketDogChew");
TweakItem("DogChew","StaticModel", "DogChewToy");
TweakItem("CatToy","AttachmentType", "TrinketCatToy");
TweakItem("CatToy","StaticModel", "CatToy");
TweakItem("Rubberducky","AttachmentType", "TrinketRubberDucky");
TweakItem("Rubberducky","StaticModel", "Rubberducky");
TweakItem("Rubberducky2","AttachmentType", "TrinketRubberDucky");
TweakItem("Rubberducky2","StaticModel", "Rubberducky");
TweakItem("ToyBear","AttachmentType", "TrinketToyBear");
TweakItem("ToyBear","StaticModel", "ToyBear");
TweakItem("ToyCar","AttachmentType", "TrinketToyCar");
TweakItem("ToyCar","StaticModel", "ToyCar");
TweakItem("Yoyo","AttachmentType", "TrinketYoyo");
TweakItem("Yoyo","StaticModel", "Yoyo");
TweakItem("Cube","AttachmentType", "TrinketCube");

--Bedroll
TweakItem("SleepingbagRolled","StaticModel", "sleepingbag");
TweakItem("SleepingbagGRolled","StaticModel", "sleepingbag");
TweakItem("SleepingbagRRolled","StaticModel", "sleepingbag");
TweakItem("SleepingbagORolled","StaticModel", "sleepingbag");
TweakItem("SleepingbagBKRolled","StaticModel", "sleepingbag");
TweakItem("SleepingbagLBRolled","StaticModel", "sleepingbag");
TweakItem("SleepingbagPRolled","StaticModel", "sleepingbag");

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
