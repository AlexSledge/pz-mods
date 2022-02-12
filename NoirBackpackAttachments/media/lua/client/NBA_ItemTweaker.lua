
if not ItemTweaker then  ItemTweaker = {} end
if not TweakItem then  TweakItem = {} end
if not TweakItemData then  TweakItemData = {} end

function ItemTweaker.tweakItems()
	local item;
	for k,v in pairs(TweakItemData) do 
		for t,y in pairs(v) do 
			item = ScriptManager.instance:getItem(k);		
			if item ~= nil then
				item:DoParam(t.." = "..y);
				print(k..": "..t..", "..y);
			end
		end
	end
end

function TweakItem(itemName, itemProperty, propertyValue)
	if not TweakItemData[itemName] then
		TweakItemData[itemName] = {};
	end
	TweakItemData[itemName][itemProperty] = propertyValue;
end

Events.OnGameBoot.Add(ItemTweaker.tweakItems)

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

