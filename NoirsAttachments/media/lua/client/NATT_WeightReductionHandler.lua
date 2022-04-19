NATT = {}

local attachmentsProvided = {}
local function getAttachmentsProvided(item)
	local itemType = item:getType()
	attachmentsProvided[itemType] = {}
	local backpackAttachmentsProvided = item:getAttachmentsProvided()
	if not backpackAttachmentsProvided then return end
	for i=0, backpackAttachmentsProvided:size()-1 do
		local attachment = backpackAttachmentsProvided:get(i)
		attachmentsProvided[itemType][attachment] = true
	end
end

local function excludeItem(item)
	if item:IsClothing() or item:isWaterSource() or item:IsFood() then return true end
	return false
end

NATT.applyBackpackWR = function(chr,item)
	if excludeItem(item) then return end;
	local slotType = item:getAttachedSlotType()
	if not slotType then return end
	local backpack = chr:getClothingItem_Back() 
	if backpack and instanceof(backpack, "InventoryContainer") then 
		getAttachmentsProvided(backpack)
		local backpackType = backpack:getType()
		if not attachmentsProvided[backpackType][slotType] then return end
		local defaultWR = 0.7
		local backpackWR = backpack:getWeightReduction()
		local newWeight = (item:getWeight() * (100-backpackWR)/100) / defaultWR
		local modData = item:getModData()
		modData.oWeight = item:getWeight()
		item:setActualWeight(newWeight)
	end
end

NATT.restoreWeight = function (item)
	if not item then return end;
	if excludeItem(item) then return end;
	local modData = item:getModData()
	if modData.oWeight then
		item:setActualWeight(modData.oWeight)
	end
end

local lastEquippedItem
NATT.equipPrimary = function (chr, item)
    if item and item:getAttachedSlotType() then
        lastEquippedItem = item
        NATT.restoreWeight(item)
        return
    end
    if lastEquippedItem and lastEquippedItem:getAttachedSlotType() then
        NATT.applyBackpackWR(chr,lastEquippedItem)
   		return
 	end
end

NATT.OnClothingUpdated = function(chr)
	local hotbar = getPlayerHotbar(chr:getPlayerNum());
	if not hotbar then return end;
	for _,item in pairs(hotbar.attachedItems) do
		if chr:isEquipped(item) then
			NATT.restoreWeight(item)
		end
	end
end

function ISInventoryTransferAction:waitToStart()
    NATT.restoreWeight(self.item)
    return false
end

local oldISInventoryTransferActionStop = ISInventoryTransferAction.stop
function ISInventoryTransferAction:stop()
	oldISInventoryTransferActionStop(self)
	NATT.restoreWeight(self.item)
	NATT.applyBackpackWR(self.character,self.item)
end

function ISDetachItemHotbar:waitToStart()
    NATT.restoreWeight(self.item)
    return false
end

function ISAttachItemHotbar:waitToStart()
	self.item:setAttachedSlotType(self.slotDef.type)
    NATT.applyBackpackWR(self.character,self.item)
    return false
end

local oldISAttachItemHotbarStop = ISAttachItemHotbar.stop
function ISAttachItemHotbar:stop()
	oldISAttachItemHotbarStop(self)
	NATT.restoreWeight(self.item)
end

local oldISInventoryPaneGetActualItems = ISInventoryPane.getActualItems
function ISInventoryPane.getActualItems(items)
	local itemsTmp = oldISInventoryPaneGetActualItems(items)
	for _,item in ipairs(itemsTmp) do
		NATT.restoreWeight(item)
	end
	return itemsTmp
end

local oldISInventoryPaneDraggedItemsReset = ISInventoryPaneDraggedItems.reset
function ISInventoryPaneDraggedItems:reset()
    if self.items then
        for _,item in ipairs(self.items) do
            if item:getAttachedSlotType() then
                local chr = getSpecificPlayer(self.playerNum)
                NATT.applyBackpackWR(chr,item)
			else
				NATT.restoreWeight(item)
			end
        end
    end
    oldISInventoryPaneDraggedItemsReset(self)
end

Events.OnClothingUpdated.Add(NATT.OnClothingUpdated)
Events.OnEquipPrimary.Add(NATT.equipPrimary)