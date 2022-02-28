require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end

for _,v in pairs(Backpacks) do

	local slot = {
		type = v.."Weapon",
		name = "Weapon", 
		animset = "back",
		attachments = {
			Hammer = v.."Weapon",
			Nightstick = v.."Weapon",
			MeatCleaver = v.."Weapon",
			Knife = v.."Weapon",
			Screwdriver = v.."Weapon",
			Wrench = v.."Wrench",
			BigBlade = v.."Weapon",
			BigWeapon = v.."WeaponBig",
			Shovel = v.."WeaponShovel",
			Rifle = v.."WeaponBig",
			Pan = v.."WeaponPan",
			Saucepan = v.."WeaponSaucePan",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	if getActivatedMods():contains(NATTmods.SLEO) then
		slot = {
			type = v.."ShortWeapon",
			name = "ShortWeapon", 
			animset = "back",
			attachments = {
				Hammer = v.."Weapon",
				Nightstick = v.."Weapon",
				MeatCleaver = v.."Weapon",
				Knife = v.."Weapon",
				Screwdriver = v.."Weapon",
				Wrench = v.."Wrench",
				Pan = v.."WeaponPan",
				Saucepan = v.."WeaponSaucePan",
			},
		}
		table.insert(ISHotbarAttachDefinition, slot);
	end

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
			Canteen = v.."Bottle",
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
			TrinketMask  = v.."TrinketMask",
			TrinketPlushie  = v.."TrinketPlushie",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

end