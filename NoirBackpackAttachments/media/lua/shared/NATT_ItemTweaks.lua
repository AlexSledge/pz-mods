local function Tweaker(item,property,value)
	local item = ScriptManager.instance:getItem(item)
	if item then 
		item:DoParam(property.." = "..value)
	end
end

local attachments = {
    WaterBottleFull= "Bottle",
    WaterBottleEmpty= "Bottle",
    WaterPopBottle= "Bottle",
    PopBottleEmpty= "Bottle",
    PopBottle= "Bottle",
	Pop= "Bottle",
	Pop2= "Bottle",
	Pop3= "Bottle",
	PopEmpty= "Bottle",
	Pop2Empty= "Bottle",
	Pop3Empty= "Bottle",
	WhiskeyFull= "Bottle",
	WhiskeyEmpty= "Bottle",
	WhiskeyWaterFull= "Bottle",

	["farming.RemouladeFull"]= "Bottle",
	["farming.RemouladeEmpty"]= "Bottle",
	["farming.RemouladeWaterFull"]= "Bottle",

    ["farming.MayonnaiseFull"]= "Bottle",
	["farming.MayonnaiseEmpty"]= "Bottle",
	["farming.MayonnaiseWaterFull"]= "Bottle",

	BeerBottle= "Bottle",
	BeerFull= "Bottle",
	BeerEmpty= "Bottle",
	BeerWaterFull= "Bottle",

	Wine= "Bottle",
	WineEmpty= "Bottle",
	Wine2= "Bottle",
	WineEmpty2= "Bottle",
	WineWaterFull= "Bottle",
	BeerEmpty= "Bottle",
	BeerWaterFull= "Bottle",

	HandTorch= "Flashlight",

	Doll= "TrinketDoll",
	Spiffo= "TrinketPlushie",
	BorisBadger= "TrinketPAWSPlushie",
	JacquesBeaver= "TrinketPAWSPlushie",
	FreddyFox= "TrinketPAWSPlushie",
	PancakeHedgehog= "TrinketPAWSPlushie",
	MoleyMole= "TrinketPAWSPlushie",
	FluffyfootBunny= "TrinketPAWSPlushie",
	FurbertSquirrel= "TrinketPAWSPlushie",

	DogChew= "TrinketDogChew",
	CatToy= "TrinketCatToy",
	Rubberducky= "TrinketRubberDucky",
	Rubberducky2= "TrinketRubberDucky",
	ToyBear= "TrinketToyBear",
	ToyCar= "TrinketToyCar",
	Yoyo= "TrinketYoyo",
	Cube= "TrinketCube",
	Hat_GasMask= "TrinketMask",
	Hat_HockeyMask= "TrinketMask",
	WeldingMask= "TrinketMask",

	Pills = "PillBottle",
	PillsAntiDep = "PillBottle",
	PillsBeta = "PillBottle",
	PillsSleepingTablets = "PillBottle",
	PillsVitamins = "PillBottle",

	SleepingbagRolled= "Bedroll",
	SleepingbagGRolled= "Bedroll",
	SleepingbagRRolled= "Bedroll",
	SleepingbagORolled= "Bedroll",
	SleepingbagBKRolled= "Bedroll",
	SleepingbagLBRolled= "Bedroll",
	SleepingbagPRolled= "Bedroll",

	Sleepingbag= "Bedroll",
	SleepingbagG= "Bedroll",
	SleepingbagR= "Bedroll",
	SleepingbagO= "Bedroll",
	SleepingbagBK= "Bedroll",
	SleepingbagLB= "Bedroll",
	SleepingbagP= "Bedroll",

}

local staticModels = {
    Doll= "Doll",
	Spiffo= "SpiffoPlushie",

	BorisBadger= "PlushieBadger_Ground",
	JacquesBeaver= "PlushieBeaver_Ground",
	FreddyFox= "PlushieFox_Ground",
	PancakeHedgehog= "PlushieHedgehog_Ground",
	MoleyMole= "PlushieMole_Ground",
	FluffyfootBunny= "PlushieRabbit_Ground",
	FurbertSquirrel= "PlushieSquirrel_Ground",

    DogChew= "DogChewToy",
    CatToy= "CatToy",
    Rubberducky= "Rubberducky",
    Rubberducky2= "Rubberducky",
	ToyBear= "ToyBear",
	ToyCar= "ToyCar",
	Yoyo= "Yoyo",
	Hat_GasMask= "GasMask",
	Hat_HockeyMask= "HockeyMask",
	WeldingMask= "WelderMask",

	PopEmpty= "PopCanDietWorld",
	Pop2Empty= "PopCanRedWorld",
	Pop3Empty= "PopCanFizzWorld",

	PopBottleEmpty= "PopBottle",

	SleepingbagRolled= "sleepingbag",
	SleepingbagGRolled= "sleepingbagG",
	SleepingbagRRolled= "sleepingbagR",
	SleepingbagORolled= "sleepingbagO",
	SleepingbagBKRolled= "sleepingbagBK",
	SleepingbagLBRolled= "sleepingbagLB",
	SleepingbagPRolled= "sleepingbagP",
}

for k,v in pairs(attachments) do 
	Tweaker(k,"AttachmentType",v)
end

for k,v in pairs(staticModels) do 
	Tweaker(k,"StaticModel",v)
end

if isModActived(NATTmods.UndeadSuvivor) then
	Tweaker("UndeadSurvivor.NomadBackpack","AttachmentsProvided", "NomadBackpackBedroll");

	Tweaker("UndeadSurvivor.StalkerMask","StaticModel", "StalkerMask_Ground");
	Tweaker("UndeadSurvivor.StalkerMask","AttachmentType", "TrinketMaskGround");
end

if isModActived(NATTmods.SMUI) then
	Tweaker("SMUIClothing.Hat_M17","StaticModel", "M17GasMask");
	Tweaker("SMUIClothing.Hat_M40","StaticModel", "M40GasMask");

	Tweaker("SMUIClothing.Hat_M17","AttachmentType", "TrinketMask");
	Tweaker("SMUIClothing.Hat_M40","AttachmentType", "TrinketMask");
end

if isModActived(NATTmods.BritaArmor) then
	Tweaker("Hat_MCU_GasMask","StaticModel", "MCUGasMask");
	Tweaker("Hat_M45_GasMask","StaticModel", "M45GasMask");
	Tweaker("Hat_FM53","StaticModel", "FM53GasMask");
	Tweaker("Hat_M50","StaticModel", "M50GasMask");
	Tweaker("Hat_MSA_Gas_Mask","StaticModel", "MSAGasMask");
	Tweaker("Hat_MSA_Gas_Mask_AMP","StaticModel", "MSAGasMaskAMP");

	Tweaker("Hat_MCU_GasMask","AttachmentType", "TrinketMask");
	Tweaker("Hat_M45_GasMask","AttachmentType", "TrinketMask");
	Tweaker("Hat_FM53","AttachmentType", "TrinketMask");
	Tweaker("Hat_M50","AttachmentType", "TrinketMask");
	Tweaker("Hat_MSA_Gas_Mask","AttachmentType", "TrinketMask");
	Tweaker("Hat_MSA_Gas_Mask_AMP","AttachmentType", "TrinketMask");
end

if isModActived(NATTmods.SWATPack) then
	Tweaker("Hat_SwatGasMask","StaticModel", "SwatGasMask");
	Tweaker("Hat_SwatGasMask","AttachmentType", "TrinketMask");
end

if isModActived(NATTmods.ScrapArmor) then
	Tweaker("Rucksack","WorldStaticModel", "Rucksack_Ground");
	Tweaker("Rucksack","AttachmentReplacement", "Bag");
	Tweaker("Rucksack","DisplayCategory", "Bag");

	Tweaker("Hat_WelderMask2","StaticModel", "WelderMaskScrap");
	Tweaker("Hat_WelderMask2","AttachmentType", "TrinketMask");

	Tweaker("Hat_Rebreather","StaticModel", "Rebreather");
	Tweaker("Hat_Rebreather","AttachmentType", "TrinketMask");
end

if isModActived(NATTmods.FNAF6) then
	Tweaker("Bag_Schoolbag_II","IconsForTexture", "Backpack_Black;Backpack_Blue;Backpack_Spiffo;Backpack_Fnaf");
	Tweaker("Bag_Schoolbag_I","IconsForTexture", "Backpack_Black;Backpack_Blue;Backpack_Spiffo;Backpack_Fnaf");
end