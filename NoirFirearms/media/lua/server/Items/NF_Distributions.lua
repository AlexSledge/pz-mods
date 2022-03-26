require 'Items/ProceduralDistributions'
require 'Items/SuburbsDistributions'

local safeHouseWeapons = {
    "GarageFirearms",
    "FirearmWeapons"
}

local armyPawnWeapons = {
    "ArmyStorageGuns",
    "PawnShopGunsSpecial"
}

local policeGunStoresWeapons ={
    "GunStoreCounter",
    "GunStoreDisplayCase",
    "GunStoreShelf",
    "PoliceStorageGuns",
}

for i =1 , #safeHouseWeapons do
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.12gaSilencer");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 0.05);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.9mmSilencer");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 0.05);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.45Silencer");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 0.05);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.AA12");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.AA12Clip");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 2);
end

for i =1 , #armyPawnWeapons do

    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.223Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.308Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.9mmSilencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.45Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.12gaSilencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.AA12");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.AA12Clip");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.AA12");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.AA12Clip");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 2);
end

for i =1 , #policeGunStoresWeapons do
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, "Base.45Silencer");
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, 0.05);
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, "Base.9mmSilencer");
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, 0.05);
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, "Base.12gaSilencer");
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, 0.05);
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, "Base.308Silencer");
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, 0.05);
end

table.insert(SuburbsDistributions["PistolCase1"].items, "Base.9mmSilencer");
table.insert(SuburbsDistributions["PistolCase1"].items, 1);

table.insert(SuburbsDistributions["PistolCase2"].items, "Base.45Silencer");
table.insert(SuburbsDistributions["PistolCase2"].items, 1);
table.insert(SuburbsDistributions["RifleCase1"].items, "Base.223Silencer");
table.insert(SuburbsDistributions["RifleCase1"].items, 1);

table.insert(SuburbsDistributions["RifleCase2"].items, "Base.308Silencer");
table.insert(SuburbsDistributions["RifleCase2"].items, 1);

table.insert(SuburbsDistributions["RifleCase3"].items, "Base.308Silencer");
table.insert(SuburbsDistributions["RifleCase3"].items, 1);


table.insert(SuburbsDistributions["ShotgunCase1"].items, "Base.12gaSilencer");
table.insert(SuburbsDistributions["ShotgunCase1"].items, 1);

table.insert(SuburbsDistributions["ShotgunCase2"].items, "Base.12gaSilencer");
table.insert(SuburbsDistributions["ShotgunCase2"].items, 1);


table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, "Base.9mmSilencer");
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, 0.05);
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, "Base.45Silencer");
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, 0.05);

table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, "Base.9mmSilencer");
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, 0.05);
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, "Base.45Silencer");
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, 0.05);

table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, "Base.9mmSilencer");
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, 0.05);
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, "Base.45Silencer");
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, 0.05);

table.insert(SuburbsDistributions["ShotgunCache1"]["ShotgunBox"].items, "Base.12gaSilencer");
table.insert(SuburbsDistributions["ShotgunCache1"]["ShotgunBox"].items, 0.05);

table.insert(SuburbsDistributions["ShotgunCache2"]["ShotgunBox"].items, "Base.12gaSilencer");
table.insert(SuburbsDistributions["ShotgunCache2"]["ShotgunBox"].items, 0.05);

table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, "Base.45Silencer");
table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, 1);
table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, "Base.9mmSilencer");
table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, 1);

table.insert(ProceduralDistributions["list"]["LockerArmyBedroom"]["junk"].items, "Base.AA12");
table.insert(ProceduralDistributions["list"]["LockerArmyBedroom"]["junk"].items, "0.05");
table.insert(ProceduralDistributions["list"]["LockerArmyBedroom"]["junk"].items, "Base.AA12Clip");
table.insert(ProceduralDistributions["list"]["LockerArmyBedroom"].items, "8");
