require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end

for _,v in pairs(Backpacks) do

	local slot = {
		type = v.."ShortWeapon",
		name = "Short Weapon", 
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
		type = v.."Flashlight",
		name = "Flashlight", 
		animset = "back",
		attachments = {
			Flashlight = v.."Flashlight",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."Bottle",
		name = "Bottle", 
		animset = "back",
		attachments = {
			Bottle = v.."Bottle",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."Bedroll",
		name = "Bedroll", 
		animset = "back",
		attachments = {
			Bedroll = v.."Bedroll",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."Trinket",
		name = "Trinket", 
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
			TrinketGasMask  = v.."TrinketGasMask",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

end