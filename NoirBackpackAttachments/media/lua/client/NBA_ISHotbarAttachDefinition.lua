require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end

for _,v in pairs(Backpacks) do

	local slot = {
		type = v.."Weapon",
		name = "Short Weapon", -- Name on Slot
		animset = "back",
		attachments = {
			Hammer = v.."ShortWeapon",
			Nightstick = v.."ShortWeapon",
			MeatCleaver = v.."ShortWeapon",
			Knife = v.."ShortWeapon",
			Screwdriver = v.."ShortWeapon",
			Wrench = v.."Wrench",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."ShoulderTorch",
		name = "Shoulder Torch", -- Name on Slot
		animset = "back",
		attachments = {
			ShoulderTorch = v.."ShoulderTorch",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."BottleRight",
		name = "Water Bottle", -- Name on Slot
		animset = "back",
		attachments = {
			Bottle = v.."BottleRight",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."Bedroll",
		name = "Bedroll", -- Name on Slot
		animset = "back",
		attachments = {
			Bedroll = v.."Bedroll",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);


	slot = {
		type = v.."Trinket",
		name = "Trinket", -- Name on Slot
		animset = "back",
		attachments = {
			TrinketDoll = v.."TrinketDoll",
			TrinketDogChew  = v.."TrinketDogChew",
			TrinketCatToy  = v.."TrinketCatToy",
			TrinketRubberDucky  = v.."TrinketRubberDucky",
			TrinketToyBear  = v.."TrinketToyBear",
			TrinketToyCar  = v.."TrinketToyCar",
			TrinketYoyo  = v.."TrinketYoyo",
			TrinketCube  = v.."TrinketCube",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

end