local group = AttachedLocations.getGroup("Human")
local attachments = {}
local done = {}

for _,v in pairs(NATTBackpacks) do
    if not done[v] then 
        attachments[v.."Left"] = v.."_left";
        attachments[v.."Right"] = v.."_right";
        attachments[v.."Bedroll"] = v.."_bedroll";
        attachments[v.."Doll"] = v.."_doll";
        attachments[v.."DogChew"] = v.."_dogchew";
        attachments[v.."CatToy"] = v.."_cattoy";
        attachments[v.."ToyCar"] = v.."_toycar";
        attachments[v.."RubberDucky"] = v.."_rubberducky";
        attachments[v.."ToyBear"] = v.."_toybear";
        attachments[v.."Yoyo"] = v.."_yoyo";
        attachments[v.."Cube"] = v.."_cube";
        attachments[v.."Mask"] = v.."_mask";
        attachments[v.."MaskGround"] = v.."_maskground";
        attachments[v.."Plushie"] = v.."_plushie";
        attachments[v.."PAWSPlushie"] = v.."_pawsplushie";
        attachments[v.."Ballon"] = v.."_ballon";
        attachments[v.."Dawn"] = v.."_dawn";
        attachments[v.."Weapon"] = v.."_weapon";
        attachments[v.."WeaponBig"] = v.."_weaponbig";
        attachments[v.."WeaponShovel"] = v.."_weaponshovel";
        attachments[v.."WeaponPan"] = v.."_weaponpan";
        attachments[v.."WeaponSaucePan"] = v.."_weaponsaucepan";
        attachments[v.."Wrench"] = v.."_wrench";
        attachments[v.."Flashlight"] = v.."_flashlight";
        done[v] = true
    end
end

for k,v in pairs(attachments) do 
    group:getOrCreateLocation(k):setAttachmentName(v)
end