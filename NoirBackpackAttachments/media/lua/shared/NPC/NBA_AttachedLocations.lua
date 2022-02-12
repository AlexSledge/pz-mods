--***********************************************************
--**                    THE INDIE STONE                    **
--***********************************************************

local group = AttachedLocations.getGroup("Human")

local attachments = {
    ["Schoolbag Bottle Right"] = "schoolbag_bottle",
    ["Schoolbag Bedroll"] = "schoolbag_bedroll",
    ["Schoolbag Trinket Doll"] = "schoolbag_trinketdoll",
    ["Schoolbag Trinket DogChew"] = "schoolbag_trinketdogchew",
    ["Schoolbag Trinket CatToy"] = "schoolbag_trinketcattoy",
    ["Schoolbag Trinket RubberDucky"] = "schoolbag_trinketrubberducky",
    ["Schoolbag Trinket ToyBear"] = "schoolbag_trinkettoybear",
    ["Schoolbag Trinket ToyCar"] = "schoolbag_trinkettoycar",
    ["Schoolbag Trinket Yoyo"] = "schoolbag_trinketyoyo",
    ["Schoolbag Trinket Cube"] = "schoolbag_trinketcube",
}

for k,v in pairs(attachments) do 
    group:getOrCreateLocation(k):setAttachmentName(v)
end
