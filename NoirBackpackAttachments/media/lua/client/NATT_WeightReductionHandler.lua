NATTwh = {}

local attachmentsProvidedCache = {}
local function getAttachmentsProvided(item)
	local itemType = item:getType()
	if attachmentsProvidedCache[itemType] then
		return attachmentsProvidedCache[itemType]
	else
		attachmentsProvidedCache[itemType] = {}
	end
	local attachmentsProvided = item:getAttachmentsProvided()
	for i=0, attachmentsProvided:size()-1 do
		attachmentsProvidedCache[itemType][attachmentsProvided:get(i)] = true
	end
end

NATTwh.applyBackpackWR = function(chr,item)
	local slotType = item:getAttachedSlotType()
	if not slotType then return end
	local backpack = chr:getClothingItem_Back() 
	if backpack and instanceof(backpack, "InventoryContainer") then 
		getAttachmentsProvided(backpack)
		local backpackType = backpack:getType()
		if not attachmentsProvidedCache[backpackType][slotType] then return end
		local defaultWeightReduction = 0.7
		local backpackWeighReduction = backpack:getWeightReduction()
		local newWeight = (item:getWeight() * (100-backpackWeighReduction)/100) / defaultWeightReduction
		local modData = item:getModData()
		modData.oWeight = item:getWeight()
		item:setActualWeight(newWeight)
	end
end

NATTwh.restoreWeight = function (item)
	if not item then return end;
	local modData = item:getModData()
	if modData.oWeight then
		item:setActualWeight(modData.oWeight)
	end
end

local lastEquippedItem
NATTwh.equipPrimary = function (chr, item)
    if item and item:getAttachedSlotType() then
        lastEquippedItem = item
        NATTwh.restoreWeight(item)
        return
    end
    if lastEquippedItem and lastEquippedItem:getAttachedSlotType() then
        NATTwh.applyBackpackWR(chr,lastEquippedItem)
   		return
 	end
end

NATTwh.OnClothingUpdated = function(player)
	local hotbar = getPlayerHotbar(player:getPlayerNum());
	if not hotbar then return end;
	local attachedItems = hotbar.attachedItems
	for _,item in pairs(attachedItems) do
		if player:isEquipped(item) then
			NATTwh.restoreWeight(item)
		end
	end
end

function ISInventoryTransferAction:waitToStart()
    NATTwh.restoreWeight(self.item)
    return false
end

local oldISInventoryTransferActionStop = ISInventoryTransferAction.stop
function ISInventoryTransferAction:stop()
	oldISInventoryTransferActionStop(self)
	NATTwh.restoreWeight(self.item)
	NATTwh.applyBackpackWR(self.character,self.item)
end

function ISDetachItemHotbar:waitToStart()
    NATTwh.restoreWeight(self.item)
    return false
end

function ISAttachItemHotbar:waitToStart()
	self.item:setAttachedSlotType(self.slotDef.type)
    NATTwh.applyBackpackWR(self.character,self.item)
    return false
end

local oldISAttachItemHotbarStop = ISAttachItemHotbar.stop
function ISAttachItemHotbar:stop()
	oldISAttachItemHotbarStop(self)
	NATTwh.restoreWeight(self.item)
end

local oldISInventoryPaneDraggedItemsReset = ISInventoryPaneDraggedItems.reset
function ISInventoryPaneDraggedItems:reset()
    if self.items then
        for _,item in ipairs(self.items) do
            if item:getAttachedSlotType() then
                local chr = getSpecificPlayer(self.playerNum)
                NATTwh.applyBackpackWR(chr,item)
			else
				NATTwh.restoreWeight(item)
			end
        end
    end
    oldISInventoryPaneDraggedItemsReset(self)
end

Events.OnClothingUpdated.Add(NATTwh.OnClothingUpdated)
Events.OnEquipPrimary.Add(NATTwh.equipPrimary)