require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end


local SchoolbagBottleRight = {
	type = "SchoolbagBottleRight",
	name = "Water Bottle",  -- Name on Slot
	animset = "back",
	attachments = {
		Bottle = "Schoolbag Bottle Right",
	},
}
table.insert(ISHotbarAttachDefinition, SchoolbagBottleRight);


local SchoolbagBedroll = {
	type = "SchoolbagBedroll",
	name = "Bedroll", -- Name on Slot
	animset = "back",
	attachments = {
		Bedroll = "Schoolbag Bedroll",
	},
}
table.insert(ISHotbarAttachDefinition, SchoolbagBedroll);

local SchoolbagTrinket = {
	type = "SchoolbagTrinket",
	name = "Trinket", -- Name on Slot
	animset = "back",
	attachments = {
		TrinketDoll = "Schoolbag Trinket Doll",
		TrinketDogChew  = "Schoolbag Trinket DogChew",
		TrinketCatToy  = "Schoolbag Trinket CatToy",
		TrinketRubberDucky  = "Schoolbag Trinket RubberDucky",
		TrinketToyBear  = "Schoolbag Trinket ToyBear",
		TrinketToyCar  = "Schoolbag Trinket ToyCar",
		TrinketYoyo  = "Schoolbag Trinket Yoyo",
		TrinketCube  = "Schoolbag Trinket Cube",
	},
}
table.insert(ISHotbarAttachDefinition, SchoolbagTrinket);