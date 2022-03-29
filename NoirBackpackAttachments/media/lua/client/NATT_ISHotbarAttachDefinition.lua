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

	slot = {
		type = v.."Flashlight",
		name = "Flashlight", 
		animset = "back",
		attachments = {
			Flashlight = v.."Flashlight",
			HandTorchSmall = v.."Flashlight",
			HandTorch = v.."Flashlight",
			Torchb = v.."Flashlight",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."BottleRight",
		name = "Bottle Right", 
		animset = "back",
		attachments = {
			Bottle = v.."BottleRight",
			Canteen = v.."BottleRight",
			WaterBottle = v.."BottleRight",
			Sodacan = v.."BottleRight",
			PillBottle = v.."BottleRight",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

	slot = {
		type = v.."BottleLeft",
		name = "Bottle Left", 
		animset = "back",
		attachments = {
			Bottle = v.."BottleLeft",
			Canteen = v.."BottleLeft",
			WaterBottle = v.."BottleLeft",
			Sodacan = v.."BottleLeft",
			PillBottle = v.."BottleLeft",
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
			TrinketMaskGround  = v.."TrinketMaskGround",
			TrinketPlushie  = v.."TrinketPlushie",
			SpiffoPlushie = v.."TrinketPlushie",
			TrinketPAWSPlushie  = v.."TrinketPAWSPlushie",
			BalloonSlot = v.."TrinketBallon",
			Doll = v.."TrinketDoll",
			RubberDuck = v.."TrinketRubberDucky",
			TeddyBear = v.."TrinketToyBear",
		},
	}
	table.insert(ISHotbarAttachDefinition, slot);

end