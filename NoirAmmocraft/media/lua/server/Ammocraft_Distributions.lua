require 'Items/ProceduralDistributions'
require 'Items/SuburbsDistributions'
require 'Vehicles/VehicleDistributions'


local magazines = {
    "GunEnthusiast1", 0.025,
    "GunEnthusiast2", 0.025,
    "GunEnthusiast3", 0.025,
    "GunEnthusiast4", 0.025,
    "GunEnthusiast5", 0.025,
    "GunEnthusiast6", 0.025,
}

local molds = {
    "9mmBulletsMold", 0.025,
    "45BulletsMold", 0.025,
    "44BulletsMold", 0.025,
    "38BulletsMold", 0.025,
    "308BulletsMold", 0.025,
    "223BulletsMold", 0.025,
    "556BulletsMold", 0.025,
    "ShotgunShellsMold", 0.025
}

local tools = {
    "Reloadingpress", 0.025,
    "GunsmithPliers", 0.025
}

local ammoComponents = {
    "Bullets9mm_casingbox", 0.025,
    "Bullets45_casingbox", 0.025,
    "Bullets44_casingbox", 0.025,
    "Bullets38_casingbox", 0.025,
    "308Bullets_casingbox", 0.025,
    "223Bullets_casingbox", 0.025,
    "556Bullets_casingbox", 0.025,
    "ShotgunShells_casingbox", 0.025,
    "Bullets9mm_tipbox", 0.025,
    "Bullets45_tipbox", 0.025,
    "Bullets44_tipbox", 0.025,
    "Bullets38_tipbox", 0.025,
    "308Bullets_tipbox", 0.025,
    "223Bullets_tipbox", 0.025,
    "556Bullets_tipbox", 0.025,
    "ShotgunShells_tipbox", 0.025,
    "SP_Primers_box", 0.025,
    "LP_Primers_box", 0.025,
    "R_Primers_box", 0.025,
    "SG_Primers_box", 0.025,
    "GunpowderJar", 0.025
}

local chemicals = {
    "Saltpeter", 1,
    "Sulfur", 1
}

for i = 1, #magazines, 2 do
    ---Post office
    table.insert(ProceduralDistributions["list"]["PostOfficeMagazines"].items, magazines[i]);
    table.insert(ProceduralDistributions["list"]["PostOfficeMagazines"].items, magazines[i+1]);

    ---Magazine crate (found at storage lots, warehouses, etc)
    table.insert(ProceduralDistributions["list"]["CrateMagazines"].items, magazines[i]);
    table.insert(ProceduralDistributions["list"]["CrateMagazines"].items, magazines[i+1]);

    ---LibraryBooks
    table.insert(ProceduralDistributions["list"]["LibraryBooks"].items, magazines[i]);
    table.insert(ProceduralDistributions["list"]["LibraryBooks"].items, magazines[i+1]);

    ---Bookstore
    table.insert(ProceduralDistributions["list"]["BookstoreBooks"].items, magazines[i]);
    table.insert(ProceduralDistributions["list"]["BookstoreBooks"].items, magazines[i+1]);
    
    ---PostOfficeMagazines
    table.insert(ProceduralDistributions["list"]["PostOfficeMagazines"].items, magazines[i]);
    table.insert(ProceduralDistributions["list"]["PostOfficeMagazines"].items, magazines[i+1]);

    ---post drop boxes
    table.insert(SuburbsDistributions["all"]["postbox"].items, magazines[i]);
    table.insert(SuburbsDistributions["all"]["postbox"].items, magazines[i+1]);   

    ---post drop boxes
    table.insert(SuburbsDistributions["all"]["sidetable"].items, magazines[i]);
    table.insert(SuburbsDistributions["all"]["sidetable"].items, magazines[i+1]);   

    ---garbage bins
    table.insert(SuburbsDistributions["all"]["bin"].items, magazines[i]);
    table.insert(SuburbsDistributions["all"]["bin"].items, magazines[i+1]);

    -- ["GloveBox"]
    table.insert(VehicleDistributions["GloveBox"].items, magazines[i]);
    table.insert(VehicleDistributions["GloveBox"].items, magazines[i+1]/3);

    -- ["PlankStashMagazine"]
    table.insert(ProceduralDistributions["list"]["PlankStashMagazine"].items, magazines[i]);
    table.insert(ProceduralDistributions["list"]["PlankStashMagazine"].items, magazines[i+1]*20);
end

for i = 1, #molds, 2 do
    table.insert(ProceduralDistributions["list"]["GunStoreCounter"].items, molds[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreCounter"].items, molds[i+1]);

    table.insert(ProceduralDistributions["list"]["GunStoreDisplayCase"].items, molds[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreDisplayCase"].items, molds[i+1]);

    table.insert(ProceduralDistributions["list"]["GunStoreShelf"].items, molds[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreShelf"].items, molds[i+1]);

    table.insert(ProceduralDistributions["list"]["GarageFirearms"].items, molds[i]);
    table.insert(ProceduralDistributions["list"]["GarageFirearms"].items, molds[i+1]);
 
end

for i = 1, #tools, 2 do
    table.insert(ProceduralDistributions["list"]["GunStoreCounter"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreCounter"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["GunStoreDisplayCase"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreDisplayCase"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["GunStoreShelf"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreShelf"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["ArmyStorageGuns"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["ArmyStorageGuns"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["PawnShopGunsSpecial"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["PawnShopGunsSpecial"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["GarageFirearms"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GarageFirearms"].items, tools[i+1]);
 
end

for i = 1, #ammoComponents, 2 do
    table.insert(ProceduralDistributions["list"]["GunStoreCounter"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreCounter"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["GunStoreDisplayCase"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreDisplayCase"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["GunStoreShelf"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GunStoreShelf"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["ArmyStorageGuns"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["ArmyStorageGuns"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["PawnShopGunsSpecial"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["PawnShopGunsSpecial"].items, tools[i+1]);

    table.insert(ProceduralDistributions["list"]["GarageFirearms"].items, tools[i]);
    table.insert(ProceduralDistributions["list"]["GarageFirearms"].items, tools[i+1]);
 
end

for i = 1, #chemicals, 2 do
    table.insert(ProceduralDistributions["list"]["CrateFertilizer"].items, chemicals[i]);
    table.insert(ProceduralDistributions["list"]["CrateFertilizer"].items, chemicals[i+1]);
end

