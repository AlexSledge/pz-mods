-- If you change mods ids for some reason, you need to change it here as well
-- or some recipes will stop working
-- Example BritaArmor = "yourNewModId"
NATTmods = {
	Pitstop = "Pitstop",
	ClothesBox = "2507488373",
	UndeadSuvivor = "UndeadSuvivor",
	ScrapArmor = "ScrapArmor(new version)",
	SLEO = "SLEO",
	SMUI = "SMUI",
	MoreTraits = "ToadTraits",
	SWATPack = "Swatpack",
	DeluxeHikingBag = "DHB_jarris",
	BritaArmor = "Brita_2",
	FNAF6 = "FnafToys",
	SnakeAlice = "AliceSPack",
	SnakeClothing = "SnakeClothingMod",
	PwSleepingbags = "PwSleepingbags",
	DawnTime = "DawnTime",
}  

local modsBackpacks = {
	[NATTmods.Pitstop] = {KleanBackPack="Alicepack"} ,
	[NATTmods.ClothesBox] = {HR="HR", RUKSAK1="RUKSAK1", RUKSAK2="RUKSAK2", ANAT="ANAT"} ,
	[NATTmods.UndeadSuvivor] = {NomadBackpack="NomadBackpack", PrepperVestPacked="PrepperVestPacked"} ,
	[NATTmods.ScrapArmor] = {Rucksack="Rucksack"} ,
	[NATTmods.SLEO] = {Bag_PoliceUtilityBag="PoliceUtilityBag", Bag_PoliceUtilityBagGreen="PoliceUtilityBag"} ,
	[NATTmods.SMUI] = {Bag_CFP90PatrolPack="CFP90PatrolPack", Bag_MilitaryMedicalBag="MilitaryMedicalBag"},
	[NATTmods.MoreTraits] = {PackerBag="BigHikingbag",Bag_SmallHikingBag="Hikingbag"} ,
	[NATTmods.SWATPack] = {Bag_BigSwatBag="BigHikingbag",Bag_PoliceBag="Alicepack"} ,
	[NATTmods.DeluxeHikingBag] = {DeluxeHikingBag="BigHikingbag"} ,
	[NATTmods.SnakeAlice] = {AlicePack="Alicepack",UpgradedAlicePack1="Alicepack",UpgradedAlicePack2="Alicepack",UpgradedAlicePack2b="Alicepack",
							UpgradedAlicePack3="Alicepack",UpgradedAlicePack3b="Alicepack"} ,
	[NATTmods.SnakeClothing] = {Bag_BigSpiffoBackpack="BigSpiffoBackpack",AlicePackDito="Alicepack"},
	[NATTmods.BritaArmor] = {Bag_Sniper_Pack="BagSniperPack",Bag_ARVN_Rucksack="ARVNRucksack",Bag_ST53_Set="BagST53Set",Bag_SCBA="BagSCBA",
							 Bag_ZIP="BagZIP",Bag_SSO="BagSSO",Bag_Savotta="BagSavotta",Bag_Bush="BagBush",Bag_Hunting="BagHunting",
							 Bag_Radio_Pack="BagRadioPack",Bag_Tactical_Alice="BagTacticalAlice",Bag_Robbie_Pack="BagCatPack",Bag_Cat_Pack="BagCatPack",Bag_M2A1_Pack="BagM2A1Pack"},						 
}

NATTBackpacks = {
	Bag_Schoolbag="Schoolbag",
	Bag_ALICEpack="Alicepack",
	Bag_ALICEpack_Army="Alicepack",
	Bag_SurvivorBag="Alicepack",
	Bag_BigHikingBag="BigHikingbag",
	Bag_NormalHikingBag="Hikingbag",
}

activatedModsCache = nil
function isModActivated(modName)
	if not activatedModsCache then
		activatedModsCache = getActivatedMods()
	end
	return activatedModsCache:contains(modName)
end

local function loadBackpacks(bps)
	for backpack,attachmentPrefix in pairs(bps) do
		NATTBackpacks[backpack]= attachmentPrefix
	end
end

local function checkBackpacks()
	for k,_ in pairs(modsBackpacks) do
		if isModActivated(k) then
			loadBackpacks(modsBackpacks[k])
		end
	end
end

checkBackpacks()