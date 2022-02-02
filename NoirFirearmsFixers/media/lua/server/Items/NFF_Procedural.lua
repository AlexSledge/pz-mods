require "Items/ProceduralDistributions"
require "Items/ItemPicker"

local i, j, d

local firearms = {
  "GunStoreAmmunition", 1,
  "GunStoreCounter", 1,
  "GunStoreDisplayCase", 1,
  "HuntingLockers", 1,
  "ArmyStorageGuns", 1,
  "GunStoreAmmunition", 1,
  "GunStoreCounter", 1,
  "GunStoreDisplayCase", 1,
  "HuntingLockers", 1,
  "PoliceStorageGuns", 1,
  "LockerArmyBedroom", 1,
  "ArmyStorageGuns", 1,
  "GunStoreDisplayCase", 1,
  "FirearmWeapons", 1,
  "LockerArmyBedroom", 1,
  "ArmyStorageGuns", 1,
  "PoliceStorageGuns", 1,
  "BarCounterWeapon", 1,
  "GarageFirearms", 1,
  "PoliceStorageGuns", 1,
  "LockerArmyBedroom", 1,
  "ArmyStorageGuns", 1,
  "PoliceStorageGuns", 1,
  "GunStoreShelf", 1,
  "ArmyStorageGuns", 1,
  "LockerArmyBedroom", 1,
  "GunStoreShelf", 1,
  "PoliceStorageGuns", 1,
  "PrisonGuardLockers", 1,
  "LockerArmyBedroom", 1,
  "ArmySurplusBackpacks", 1,
  "ArmyHangarOutfit", 1,
  "CampingStoreGear", 1,
  "ArmyStorageGuns", 1,
  "BarCounterWeapon", 1,
  "GunStoreDisplayCase", 1,
  "PawnShopGunsSpecial", 1,
}

local tools = {
  "StoreShelfMechanics", 1,
  "ToolStoreMetalwork", 1,
  "ToolStoreCarpentry", 1,
  "ToolStoreMisc", 1,
  "JanitorChemicals", 1,
  "CrateTools", 1,
  "CrateMechanics", 1,
  "GarageTools", 1,
}


for i = 1, #firearms, 2 do
  table.insert(ProceduralDistributions.list[firearms[i]].items, "Base.GunToolKit")
  table.insert(ProceduralDistributions.list[firearms[i]].items, firearms[i+1])
  table.insert(ProceduralDistributions.list[firearms[i]].items, "Base.Solvent")
  table.insert(ProceduralDistributions.list[firearms[i]].items, firearms[i+1])
end

for i = 1, #tools, 2 do
  table.insert(ProceduralDistributions.list[tools[i]].items, "Base.Solvent")
  table.insert(ProceduralDistributions.list[tools[i]].items, tools[i+1])
end

