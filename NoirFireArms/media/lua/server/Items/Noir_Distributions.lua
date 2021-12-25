require 'Items/ProceduralDistributions'

local safeHouseWeapons = {
    "GarageFirearms",
    "FirearmWeapons"
}

local armyPawnWeapons = {
    "ArmyStorageGuns",
    "PawnShopGunsSpecial"
}

local gunStoresWeapons ={ 
    "GunStoreCounter",
    "GunStoreDisplayCase",
    "GunStoreShelf"
}

for i =1 , #safeHouseWeapons do
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.Glock17");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, "Base.Glock17Mag");
    table.insert(ProceduralDistributions.list[safeHouseWeapons[i]].items, 2);
end

for i =1 , #armyPawnWeapons do
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.FnFal");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 10);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.FnFalMag");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 10);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.Glock17");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 5);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.Glock17Mag");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 5);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.Mp5");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 10);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.Mp5Mag");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 5);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.223Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 3);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.308Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 3);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.9mmSilencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 3);
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, "Base.45Silencer");
    table.insert(ProceduralDistributions.list[armyPawnWeapons[i]].items, 3);
end

for i =1 , #gunStoresWeapons do
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, "Base.Glock17");
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, 3);
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, "Base.Glock17Mag");
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, "Base.45Silencer");
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, 2);
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, "Base.9mmSilencer");
    table.insert(ProceduralDistributions.list[gunStoresWeapons[i]].items, 2);
end


table.insert(ProceduralDistributions.list["PoliceStorageAmmunition"].items, "Base.Base.762x51Box");
table.insert(ProceduralDistributions.list["PoliceStorageAmmunition"].items, 10);
table.insert(ProceduralDistributions.list["PoliceStorageAmmunition"].items, "Base.Base.762x51Box");
table.insert(ProceduralDistributions.list["PoliceStorageAmmunition"].items, 20);
