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
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 0.025);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.9mmSilencer");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 0.025);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.45Silencer");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 0.025);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "GunLight");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 0.025);
end

for i =1 , #armyPawnWeapons do

    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.223Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 1);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.308Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 1);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.9mmSilencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 1);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.45Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 1);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.12gaSilencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 1);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "GunLight");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 1);
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
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, "GunLight");
    table.insert(ProceduralDistributions.list[policeGunStoresWeapons[i]].items, 0.05);
end


table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, "Base.9mmSilencer");
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, 0.05);
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, "Base.45Silencer");
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, 0.05);
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, "GunLight");
table.insert(SuburbsDistributions["GunCache1"]["GunBox"].items, 0.05);

table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, "Base.9mmSilencer");
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, 0.05);
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, "Base.45Silencer");
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, 0.05);
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, "GunLight");
table.insert(SuburbsDistributions["GunCache2"]["GunBox"].items, 0.05);

table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, "Base.9mmSilencer");
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, 0.05);
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, "Base.45Silencer");
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, 0.05);
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, "GunLight");
table.insert(SuburbsDistributions["GunCache2"]["Bag_DuffelBagTINT"].items, 0.05);

table.insert(SuburbsDistributions["ShotgunCache1"]["ShotgunBox"].items, "Base.12gaSilencer");
table.insert(SuburbsDistributions["ShotgunCache1"]["ShotgunBox"].items, 0.05);
table.insert(SuburbsDistributions["ShotgunCache1"]["ShotgunBox"].items, "GunLight");
table.insert(SuburbsDistributions["ShotgunCache1"]["ShotgunBox"].items, 0.05);

table.insert(SuburbsDistributions["ShotgunCache2"]["ShotgunBox"].items, "Base.12gaSilencer");
table.insert(SuburbsDistributions["ShotgunCache2"]["ShotgunBox"].items, 0.05);
table.insert(SuburbsDistributions["ShotgunCache2"]["ShotgunBox"].items, "GunLight");
table.insert(SuburbsDistributions["ShotgunCache2"]["ShotgunBox"].items, 0.05);

table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, "Base.45Silencer");
table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, 1);
table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, "Base.9mmSilencer");
table.insert(ProceduralDistributions["list"]["PlankStashGun"].items, 1);

