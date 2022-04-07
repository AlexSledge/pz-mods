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
	[NATTmods.SnakeAlice] = {"Upgrade SnakeAlice","Add Frame SnakeAlice","Remove Frame SnakeAlice","Add Pouch SnakeAlice","Remove Pouch SnakeAlice"},
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

function keepColorAndItems(items,result)
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

local snakeBackpacksSlots = {
	AlicePack = "sAlicePack_I",
	UpgradedAlicePack1 = "UpgradedAlicePack1_I",
	UpgradedAlicePack2 = "UpgradedAlicePack2_I",
	UpgradedAlicePack2b = "UpgradedAlicePack2b_I",
	UpgradedAlicePack3 = "UpgradedAlicePack3_I",
	UpgradedAlicePack3b = "UpgradedAlicePack3b_I",
	sAlicePack_I= "sAlicePack_II",
	UpgradedAlicePack1_I= "UpgradedAlicePack1_II",
	UpgradedAlicePack2_I= "UpgradedAlicePack2_II",
	UpgradedAlicePack2b_I= "UpgradedAlicePack2b_II",
	UpgradedAlicePack3_I= "UpgradedAlicePack3_II",
	UpgradedAlicePack3b_I= "UpgradedAlicePack3b_II",
}

function addSlotsSnakebackpack(items,result,player)
	local item = items:get(0)
	local newType = snakeBackpacksSlots[item:getType()]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepColorAndItems(items,newBackpack)
	player:getInventory():AddItem(newBackpack);
end

local snakeBackpacksFrame = {
	sAlicePack_I= "UpgradedAlicePack1_I",
	UpgradedAlicePack3_I= "UpgradedAlicePack2_I",
	UpgradedAlicePack3b_I= "UpgradedAlicePack2b_I",
	UpgradedAlicePack1_I= "sAlicePack_I",
	UpgradedAlicePack2_I= "UpgradedAlicePack3_I",
	UpgradedAlicePack2b_I= "UpgradedAlicePack3b_I",
	sAlicePack_II= "UpgradedAlicePack1_II",
	UpgradedAlicePack3_II= "UpgradedAlicePack2_II",
	UpgradedAlicePack3b_II= "UpgradedAlicePack2b_II",
	UpgradedAlicePack1_II= "sAlicePack_II",
	UpgradedAlicePack2_II= "UpgradedAlicePack3_II",
	UpgradedAlicePack2b_II= "UpgradedAlicePack3b_II",
}

function snakeAddFrameBackpack(items,result,player)
	local item = items:get(0)
	local newType = snakeBackpacksFrame[item:getType()]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepColorAndItems(items,newBackpack)	
	player:getInventory():AddItem(newBackpack);
end

function snakeRemoveFrameBackpack(items,result,player)
	local item = items:get(0)
	local newType = snakeBackpacksFrame[item:getType()]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepColorAndItems(items,newBackpack)	
	player:getInventory():AddItem(newBackpack);
	player:getInventory():AddItem("AliceBP.SupportBackpack");
end

local snakeBackpacksPouch = {
	UpgradedAlicePack1_I = {MilitiaPouch1 = "UpgradedAlicePack2_I", MilitiaPouch2 = "UpgradedAlicePack2b_I"},
	sAlicePack_I = {MilitiaPouch1 = "UpgradedAlicePack3_I", MilitiaPouch2 = "UpgradedAlicePack3b_I"},
	UpgradedAlicePack3_I = {backpack = "sAlicePack_I" , pouch = "AliceBP.MilitiaPouch1"},
	UpgradedAlicePack3b_I = {backpack = "sAlicePack_I" , pouch = "AliceBP.MilitiaPouch2"},
	UpgradedAlicePack2_I = {backpack = "UpgradedAlicePack1_I" , pouch = "AliceBP.MilitiaPouch1"},
	UpgradedAlicePack2b_I = {backpack = "UpgradedAlicePack1_I" , pouch = "AliceBP.MilitiaPouch2"},
	UpgradedAlicePack1_II = {MilitiaPouch1 = "UpgradedAlicePack2_II", MilitiaPouch2 = "UpgradedAlicePack2b_II"},
	sAlicePack_II = {MilitiaPouch1 = "UpgradedAlicePack3_II", MilitiaPouch2 = "UpgradedAlicePack3b_II"},
	UpgradedAlicePack3_II = {backpack = "sAlicePack_II" , pouch = "AliceBP.MilitiaPouch1"},
	UpgradedAlicePack3b_II = {backpack = "sAlicePack_II" , pouch = "AliceBP.MilitiaPouch2"},
	UpgradedAlicePack2_II = {backpack = "UpgradedAlicePack1_II" , pouch = "AliceBP.MilitiaPouch1"},
	UpgradedAlicePack2b_II = {backpack = "UpgradedAlicePack1_II" , pouch = "AliceBP.MilitiaPouch2"},
}

local function transferItemsToInventory(container,player)
	local items = container:getItemContainer():getItems()
	if not items then return end
	local playerInv = player:getInventory()
	for i=1,items:size() do
		playerInv:addItem(items:get(i-1))
	end
end

function snakeAddPouchBackpack(items,result,player)
	local backpackType = items:get(0):getType()
	local pouch = items:get(1)
	local pouchType = pouch:getType()
	local newType = snakeBackpacksPouch[backpackType][pouchType]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepColorAndItems(items,newBackpack)
	transferItemsToInventory(pouch,player)
	player:getInventory():AddItem(newBackpack)
end

function snakeRemovePounchBackpack(items,result,player)
	local backpackType = items:get(0):getType()
	local newType = snakeBackpacksPouch[backpackType]["backpack"]
	local pouch = snakeBackpacksPouch[backpackType]["pouch"]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepColorAndItems(items,newBackpack)	
	player:getInventory():AddItem(newBackpack)
	player:getInventory():AddItem(pouch)
end

Events.OnGameStart.Add(checkMods)