local function keepProperties(item,result)
	local backpackVisual = item:getVisual()
	local resultVisual = result:getVisual()
	resultVisual:setTextureChoice(backpackVisual:getTextureChoice());
	result:getItemContainer():setItems(item:getItemContainer():getItems());
	result:synchWithVisual();
	local modData = item:getModData()
	if modData.attachmentsProvided then
		result:getModData().attachmentsProvided = modData.attachmentsProvided
	end
end

local function transferItemsToInventory(container,player)
	local items = container:getItemContainer():getItems()
	if not items then return end
	local playerInv = player:getInventory()
	for i=1,items:size() do
		playerInv:addItem(items:get(i-1))
	end
end

function getAttachmentName(baseWord,item)
	local prefix = string.gsub(item:getFullType(),"Base.","")
	return NATTBackpacks[prefix]..baseWord
end

local function slotHandler(result,items,player,add)
	local resultType = result:getType()
	local baseWord = string.gsub(resultType,"NATT_","")
	local item = items:get(0)
	local attachmentName = getAttachmentName(baseWord,item)
	local modData = item:getModData()
	if not modData.attachmentsProvided then	
		modData.attachmentsProvided= {}
	end
	modData.attachmentsProvided[attachmentName] = add
	player:getInventory():AddItem(item)
end

function checkIsValidAdd(item,result)
	if item:IsInventoryContainer() then 
		if item:isEquipped() then return false end
		local modData = item:getModData()
		local attachmentsProvided = modData.attachmentsProvided
		if not attachmentsProvided then return true end
		local resultType = result:getType()
		local baseWord = string.gsub(resultType,"NATT_","")
		local attachmentName = getAttachmentName(baseWord,item)
		return not attachmentsProvided[attachmentName]
	end
	return true
end

function checkIsValidRemove(item,result)
	if item:IsInventoryContainer() then 
		if item:isEquipped() then return false end
		local modData = item:getModData()
		local attachmentsProvided = modData.attachmentsProvided
		if not attachmentsProvided then return false end
		local resultType = result:getType()
		local baseWord = string.gsub(resultType,"NATT_","")
		local attachmentName = getAttachmentName(baseWord,item)
		return attachmentsProvided[attachmentName]
	end
	return true
end

function AddAttachmentSlot(items,result,player)
	slotHandler(result,items,player,true)
end

function RemoveAttachmentSlot(items,result,player)
	slotHandler(result,items,player,false)
end

function recipeBackpacks(scriptItems) 
	for k,v in pairs(NATTBackpacks) do
		local scriptItem = getScriptManager():FindItem(k)
		scriptItems:add(scriptItem)
	end
end

local snakeBackpacksFrame = {
    AlicePack = "AliceBP.UpgradedAlicePack1",
    UpgradedAlicePack3 = "AliceBP.UpgradedAlicePack2",
    UpgradedAlicePack3b = "AliceBP.UpgradedAlicePack2b",
    UpgradedAlicePack1 = "AliceBP.AlicePack",
    UpgradedAlicePack2 = "AliceBP.UpgradedAlicePack3",
    UpgradedAlicePack2b = "AliceBP.UpgradedAlicePack3b",
}

function snakeAddFrameBackpack(items,result,player)
	local backpack = items:get(0)
	local newType = snakeBackpacksFrame[backpack:getType()]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepProperties(backpack,newBackpack)
	player:getInventory():AddItem(newBackpack);
end

function snakeRemoveFrameBackpack(items,result,player)
	local backpack = items:get(0)
	local newType = snakeBackpacksFrame[backpack:getType()]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepProperties(backpack,newBackpack)	
	player:getInventory():AddItem(newBackpack);
	player:getInventory():AddItem("AliceBP.SupportBackpack");
end

local snakeBackpacksPouch = {
    UpgradedAlicePack1 = {
        MilitiaPouch1 = "AliceBP.UpgradedAlicePack2",
        MilitiaPouch2 = "AliceBP.UpgradedAlicePack2b"
    },
    AlicePack = {
        MilitiaPouch1 = "AliceBP.UpgradedAlicePack3",
        MilitiaPouch2 = "AliceBP.UpgradedAlicePack3b"
    },
    UpgradedAlicePack3 = {
        backpack = "AliceBP.AlicePack",
        pouch = "AliceBP.MilitiaPouch1"
    },
    UpgradedAlicePack3b = {
        backpack = "AliceBP.AlicePack",
        pouch = "AliceBP.MilitiaPouch2"
    },
    UpgradedAlicePack2 = {
        backpack = "UpgradedAlicePack1",
        pouch = "AliceBP.MilitiaPouch1"
    },
    UpgradedAlicePack2b = {
        backpack = "UpgradedAlicePack1",
        pouch = "AliceBP.MilitiaPouch2"
    },
}

function snakeAddPouchBackpack(items,result,player)
	local backpack = items:get(0)
	local backpackType = backpack:getType()
	local pouch = items:get(1)
	local pouchType = pouch:getType()
	local newType = snakeBackpacksPouch[backpackType][pouchType]
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepProperties(backpack,newBackpack)
	transferItemsToInventory(pouch,player)
	player:getInventory():AddItem(newBackpack)
end

function snakeRemovePounchBackpack(items,result,player)
	local backpack = items:get(0)
	local backpackType = backpack:getType()
	local newType = snakeBackpacksPouch[backpackType].backpack
	local pouch = snakeBackpacksPouch[backpackType].pouch
	local newBackpack = InventoryItemFactory.CreateItem(newType)
	keepProperties(backpack,newBackpack)	
	player:getInventory():AddItem(newBackpack)
	player:getInventory():AddItem(pouch)
end
