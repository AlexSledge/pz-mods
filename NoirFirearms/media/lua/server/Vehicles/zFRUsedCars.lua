require 'Vehicles/VehicleDistributions'

if getActivatedMods():contains("FRUsedCars") then 
    table.insert(VehicleDistributions["MilitaryGearTrunk"].items, "Base.AA12");
    table.insert(VehicleDistributions["MilitaryGearTrunk"].items, 2);
    table.insert(VehicleDistributions["MilitaryGearTrunk"].items, "Base.AA12Clip");
    table.insert(VehicleDistributions["MilitaryGearTrunk"].items, 2);
end    