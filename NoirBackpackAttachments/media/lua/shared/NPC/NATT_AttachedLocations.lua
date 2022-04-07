local group = AttachedLocations.getGroup("Human")
local attachments = {}

for _,v in pairs(Backpacks) do
    attachments[v.."BottleLeft"] = v.."_bottleleft";
    attachments[v.."BottleRight"] = v.."_bottleright";
    attachments[v.."Bedroll"] = v.."_bedroll";
    attachments[v.."TrinketDoll"] = v.."_trinketdoll";
    attachments[v.."TrinketDogChew"] = v.."_trinketdogchew";
    attachments[v.."TrinketCatToy"] = v.."_trinketcattoy";
    attachments[v.."TrinketToyCar"] = v.."_trinkettoycar";
    attachments[v.."TrinketRubberDucky"] = v.."_trinketrubberducky";
    attachments[v.."TrinketToyBear"] = v.."_trinkettoybear";
    attachments[v.."TrinketYoyo"] = v.."_trinketyoyo";
    attachments[v.."TrinketCube"] = v.."_trinketcube";
    attachments[v.."TrinketMask"] = v.."_trinketmask";
    attachments[v.."TrinketMaskGround"] = v.."_trinketmaskground";
    attachments[v.."TrinketPlushie"] = v.."_trinketplushie";
    attachments[v.."TrinketPAWSPlushie"] = v.."_trinketpawsplushie";
    attachments[v.."TrinketBallon"] = v.."_trinketballon";
    attachments[v.."TrinketDawn"] = v.."_trinketdawn";
    attachments[v.."Weapon"] = v.."_weapon";
    attachments[v.."WeaponBig"] = v.."_weaponbig";
    attachments[v.."WeaponShovel"] = v.."_weaponshovel";
    attachments[v.."WeaponPan"] = v.."_weaponpan";
    attachments[v.."WeaponSaucePan"] = v.."_weaponsaucepan";
    attachments[v.."Wrench"] = v.."_wrench";
    attachments[v.."Flashlight"] = v.."_flashlight";
end

for k,v in pairs(attachments) do 
    group:getOrCreateLocation(k):setAttachmentName(v)
end