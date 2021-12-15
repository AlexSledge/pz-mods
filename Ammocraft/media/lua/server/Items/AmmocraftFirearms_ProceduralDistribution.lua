require "Items/ProceduralDistributions"
require "Items/ItemPicker"

local i, j, d

-- Distributions for ProceduralDistributions.lua
local myDistTableBoxes = {
  "LockerArmyBedroom", 2,
  "CrateMetalwork", 1,
}

local myDistTableMolds = {
  "CrateTools", 0.1,
  "LockerArmyBedroom", 2,
  "CrateMetalwork", 1,
  "GarageMetalwork", 0.1,
}

local myDistTableLit = {
  "LockerArmyBedroom", 5,
  "BookstoreBooks", 10,
  "BreakRoomCounter", 3,
  "BreakRoomShelves", 3,
  "CampingStoreBooks", 3,
  "CrateMagazines", 3,
  "LibraryBooks", 10,
  "LibraryCounter", 1,
  "LivingRoomShelf", 1,
  "PostOfficeMagazines", 1,
}

for i = 1, #myDistTableBoxes, 2 do
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets22_casingbox")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets4440_casingbox")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.762x39Bullets_casingbox")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/3)
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.762x51Bullets_casingbox")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/4)
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets22_tipbox")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets4440_tipbox")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.762x51Bullets_tipbox")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/4)
end

for i = 1, #myDistTableMolds, 2 do
  table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.22LRBulletsMold")
  table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1])
  table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.4440BulletsMold")
  table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]/5)
  table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.762BulletsMold")
  table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]/10)
end

for i = 1, #myDistTableLit, 2 do
  table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutMonthly7")
  table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1])
end
