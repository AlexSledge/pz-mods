if not ISHotbarAttachDefinition then
    return
end

local done = {}
for _,v in pairs(NATTBackpacks) do
	if not done[v] then 
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
			type = v.."Right",
			name = "Right", 
			animset = "back",
			attachments = {
				Bottle = v.."Right",
				Canteen = v.."Right",
				WaterBottle = v.."Right",
				Sodacan = v.."Right",
				PillBottle = v.."Right",
			},
		}
		table.insert(ISHotbarAttachDefinition, slot);

		slot = {
			type = v.."Left",
			name = "Left", 
			animset = "back",
			attachments = {
				Bottle = v.."Left",
				Canteen = v.."Left",
				WaterBottle = v.."Left",
				Sodacan = v.."Left",
				PillBottle = v.."Left",
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
				Doll = v.."Doll",
				DogChew  = v.."DogChew",
				CatToy  = v.."CatToy",
				RubberDucky  = v.."RubberDucky",
				ToyBear  = v.."ToyBear",
				ToyCar  = v.."ToyCar",
				Yoyo  = v.."Yoyo",
				Cube  = v.."Cube",
				Mask  = v.."Mask",
				MaskGround  = v.."MaskGround",
				Plushie  = v.."Plushie",
				SpiffoPlushie = v.."Plushie",
				PAWSPlushie  = v.."PAWSPlushie",
				BalloonSlot = v.."Ballon",
				RubberDuck = v.."RubberDucky",
				TeddyBear = v.."ToyBear",
				Dawn  = v.."Dawn",
			},
		}
		table.insert(ISHotbarAttachDefinition, slot);
		done[v] = true
	end
end