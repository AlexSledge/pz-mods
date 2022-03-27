local modsRecipes = {
	[NATTmods.Pitstop] = {"Upgrade KleanBackpack"} ,
	[NATTmods.ClothesBox] = {"Upgrade HR","Upgrade RUKSAK1","Upgrade RUKSAK2","Upgrade ANAT"} ,
	[NATTmods.UndeadSuvivor] = {"Upgrade NomadBackpack","Upgrade PrepperVestPacked"} ,
	[NATTmods.ScrapArmor] = {"Upgrade Rucksack"} , 
	[NATTmods.SLEO] = {"Upgrade PoliceUtilityBag"},
	[NATTmods.SMUI] = {"Upgrade CFP90PatrolPack","Upgrade MilitaryMedicalBag"},
	[NATTmods.MoreTraits] = {"Upgrade PackerBag","Upgrade SmallHikingbag"},
	[NATTmods.SWATPack] = {"Upgrade BigSwatBag","Upgrade PoliceBag"},
	[NATTmods.DeluxeHikingBag] = {"Upgrade DeluxeHikingBag"},
	[NATTmods.BritaArmor] = {"Upgrade ARVNRucksack","Upgrade BagBush","Upgrade BagCatPack","Upgrade BagRobbiePack",
							 "Upgrade BagHunting","Upgrade BagM2A1Pack","Upgrade BagRadioPack","Upgrade BagSavotta",
							 "Upgrade BagSCBA","Upgrade BagSniperPack","Upgrade BagSSO","Upgrade BagST53Set",
						     "Upgrade BagTacticalAlice","Upgrade BagZIP"},
}

local function loadRecipes(recipes, learn)
	local player = getPlayer()
	for _,recipe in ipairs(recipes) do
		if learn then
			if not player:isRecipeKnown(recipe) then
				player:getKnownRecipes():add(recipe);
			end
		else
			player:getKnownRecipes():remove(recipe);
		end	
	end
end

local function checkMods()
	for k,_ in pairs(modsRecipes) do
		local active = isModActived(k)
		loadRecipes(modsRecipes[k],active)
	end
end

function keepColorAndItems(items,result,player)
	local backpack = items:get(0)
	local backpackVisual = backpack:getVisual()
	local resultVisual = result:getVisual()
	resultVisual:setTextureChoice(backpackVisual:getTextureChoice());
	result:getItemContainer():setItems(backpack:getItemContainer():getItems());
	result:synchWithVisual();
end

function checkIsEquipped(item,result)
	return not (item:IsInventoryContainer() and item:isEquipped())
end

Events.OnGameStart.Add(checkMods)