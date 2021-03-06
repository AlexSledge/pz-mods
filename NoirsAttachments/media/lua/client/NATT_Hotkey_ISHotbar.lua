function ISHotbar:getSlotForKey(key)
	if key == getCore():getKey("Hotbar 1") then return 1; end
	if key == getCore():getKey("Hotbar 2") then return 2; end
	if key == getCore():getKey("Hotbar 3") then return 3; end
	if key == getCore():getKey("Hotbar 4") then return 4; end
	if key == getCore():getKey("Hotbar 5") then return 5; end
	if key == getCore():getKey("Hotbar 6") then return 6; end
	if key == getCore():getKey("Hotbar 7") then return 7; end
	if key == getCore():getKey("Hotbar 8") then return 8; end
	if key == getCore():getKey("Hotbar 9") then return 9; end
	if key == getCore():getKey("Hotbar 10") then return 10; end
	if key == getCore():getKey("Hotbar 11") then return 11; end
	if key == getCore():getKey("Hotbar 12") then return 12; end
	if key == getCore():getKey("Hotbar 13") then return 13; end	
	if key == getCore():getKey("Hotbar 14") then return 14; end	
	if key == getCore():getKey("Hotbar 15") then return 15; end	

	return -1
end

local bind = {};
bind.value = "[NATTKeys]";
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 6";
bind.key = Keyboard.KEY_6;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 7";
bind.key = Keyboard.KEY_7;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 8";
bind.key = Keyboard.KEY_8;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 9";
bind.key = Keyboard.KEY_9;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 10";
bind.key = Keyboard.KEY_0;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 11";
bind.key = 0;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 12";
bind.key = 0;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 13";
bind.key = 0;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 14";
bind.key = 0;
table.insert(keyBinding, bind);

bind = {};
bind.value = "Hotbar 15";
bind.key = 0;
table.insert(keyBinding, bind);

function ISHotbar:activateSlot(slotIndex)
	local item = self.attachedItems[slotIndex]
	if not item then return end
	if item:getAttachedSlot() ~= slotIndex then
		return
	end

	if item:getCategory() == "Clothing" then
		if item:isEquipped() then
			ISTimedActionQueue.add(ISUnequipAction:new(self.chr, item, 50))
		else
			ISTimedActionQueue.add(ISWearClothing:new(self.chr, item, 50))
		end
		return
	end

	if item:canBeActivated() then
		item:setActivated(not item:isActivated())
		getPlayer():playSound("LightSwitch")
		return
	end

	local scriptItem = item:getScriptItem()
	if instanceof(item, "HandWeapon") or scriptItem:getType() == Type.Radio then
		self:equipItem(item)
	end
	
end

function ISHotbar.doMenuFromInventory(playerNum, item, context)
	local self = getPlayerHotbar(playerNum);
	if self == nil then return end
	if self:isInHotbar(item) and item:getAttachmentType() and item:getAttachedSlot() ~= -1 then
		local slot = self.availableSlot[item:getAttachedSlot()]
		local slotName = getTextOrNull("IGUI_HotbarAttachment_" .. slot.slotType) or slot.name;
		context:addOptionOnTop(getText("ContextMenu_RemoveFromHotbar", self.attachedItems[item:getAttachedSlot()]:getDisplayName(), slotName), self, ISHotbar.removeItem, self.attachedItems[item:getAttachedSlot()], true);
	end
	if item:getAttachmentType() and not self:isInHotbar(item) and not item:isBroken() and self.replacements[item:getAttachmentType()] ~= "null" then
		local subOption = context:addOptionOnTop(getText("ContextMenu_Attach"), nil);
		local subMenuAttach = context:getNew(context);
		context:addSubMenu(subOption, subMenuAttach);
		
		local found = false;
		for slotIndex, slot in pairs(self.availableSlot) do
			local slotDef = slot.def;
			for i, v in pairs(slotDef.attachments) do
				if item:getAttachmentType() == i then
					local doIt = true;
					local name = getTextOrNull("IGUI_HotbarAttachment_" .. slot.slotType) or slot.name;
					if self.replacements and self.replacements[item:getAttachmentType()] then
						slot = self.replacements[item:getAttachmentType()];
						if slot == "null" then
							doIt = false;
						end
					end
					if doIt then
						local option = subMenuAttach:addOption(name, self, ISHotbar.attachItem, item, v, slotIndex, slotDef, true);
						if self.attachedItems[slotIndex] then
							local tooltip = ISWorldObjectContextMenu.addToolTip();
							tooltip.description = tooltip.description .. getText("Tooltip_ReplaceWornItems") .. " <LINE> <INDENT:20> "
							tooltip.description = tooltip.description .. self.attachedItems[slotIndex]:getDisplayName()
							option.toolTip = tooltip
						end 
						found = true;
					end
				end
			end
		end
		if not found then
			subOption.notAvailable = true;
			local tooltip = ISWorldObjectContextMenu.addToolTip();
			local text = getText("Tooltip_CanBeAttached") .. " <LINE> <INDENT:20> ";
			local typeText = "";
			for i,v in pairs(ISHotbarAttachDefinition) do
				if v.attachments then
					for type,atch in pairs(v.attachments) do
						if type == item:getAttachmentType() then
							typeText = getText("IGUI_HotbarAttachment_" .. v.type)
							if not (string.find(text,typeText.." <LINE> "))  then 
								text = text .. typeText .. " <LINE> "
							end
						end
					end
				end
			end
			subOption.subOption = nil;
			tooltip.description = text;
			subOption.toolTip = tooltip;
		end
	end
end

local sleepingbags = {
    Sleepingbag = "SleepingbagRolled",
    SleepingbagG = "SleepingbagGRolled",
    SleepingbagR = "SleepingbagRRolled",
    SleepingbagO = "SleepingbagORolled",
    SleepingbagBK = "SleepingbagBKRolled",
    SleepingbagLB = "SleepingbagLBRolled",
    SleepingbagP = "SleepingbagPRolled",
}

local function setSleepingBag(item,chr)
	local itemType = item:getType()
	local newType = sleepingbags[itemType]
	if not newType then return item end
	local container = item:getContainer()
	if container:getType() == "floor" then 
		item:getWorldItem():getSquare():transmitRemoveItemFromSquare(item:getWorldItem());
		item:getWorldItem():getSquare():removeWorldObject(item:getWorldItem());
		item:setWorldItem(nil);
	elseif container then
		container:Remove(item)
	else
		chr:getInventory():Remove(itemType);
	end
	local sleepingbag = InventoryItemFactory.CreateItem(newType)
	chr:getInventory():AddItem(sleepingbag);
	return sleepingbag;
end

function ISHotbar:attachItem (item, slot, slotIndex, slotDef, doAnim)
	item = setSleepingBag(item,self.chr)
	if doAnim then
		if self.replacements and self.replacements[item:getAttachmentType()] and isBack(slot) then
			slot = self.replacements[item:getAttachmentType()];
		end
		self:setAttachAnim(item, slotDef);
		ISInventoryPaneContextMenu.transferIfNeeded(self.chr, item)
		if self.attachedItems[slotIndex] then
			ISTimedActionQueue.add(ISDetachItemHotbar:new(self.chr, self.attachedItems[slotIndex]));
		end
		ISTimedActionQueue.add(ISAttachItemHotbar:new(self.chr, item, slot, slotIndex, slotDef));
	else
		if self.replacements and self.replacements[item:getAttachmentType()] and isBack(slot) then
			slot = self.replacements[item:getAttachmentType()];
			if slot == "null" then
				self:removeItem(item, false);
				return;
			end
		end
		self.chr:setAttachedItem(slot, item);
		item:setAttachedSlot(slotIndex);
		item:setAttachedSlotType(slotDef.type);
		item:setAttachedToModel(slot);
		
		self:reloadIcons();
	end
	NATT.applyBackpackWR(self.chr,item)
end

function isBack(slot)
	return string.find(slot," Back");
end

local function isSlotAvailable(item,hotbar)
	local slotIndex = item:getAttachedSlot()
	local slotType = item:getAttachedSlotType()
	local slot = hotbar.availableSlot[slotIndex]
	if not slot then return false end
	if not (slot.slotType == slotType) then return false end
	return true
end

local function findReplacementItem(chr,itemType)
	local items = chr:getInventory():getItemsFromType(itemType, true)
	for i=0, items:size() - 1 do
        local item = items:get(i)
		if item:getAttachedSlotType() == nil then
			return item
		end
	end
	return nil
end

local function setReplacementItem(item,hotbar)
	if item:IsWeapon() then return end;
	if not item:canStoreWater() then return end
	if not isSlotAvailable(item,hotbar) then return end
	local chr = hotbar.chr
	local replacementType = nil
	if instanceof(item, "ComboItem") then
		replacementType = string.gsub(item:getReplaceOnUseOn(),"WaterSource%-","")
	else
		replacementType = item:getReplaceOnDeplete()
	end

	if not replacementType then return end
	replacementType = moduleDotType(item:getModule(), replacementType)
	local replacementItem = findReplacementItem(chr,replacementType);
	if not replacementItem then return end
	
	chr:setAttachedItem(item:getAttachedToModel(), replacementItem);
	replacementItem:setAttachedSlot(item:getAttachedSlot());
	replacementItem:setAttachedSlotType(item:getAttachedSlotType());
	replacementItem:setAttachedToModel(item:getAttachedToModel());
end

local checkReplacement = false
function ISHotbar:removeItem(item, doAnim)
	NATT.restoreWeight(item)
	if doAnim then
		self:setAttachAnim(item);
		ISTimedActionQueue.add(ISDetachItemHotbar:new(self.chr, item));
	else
		self.chr:removeAttachedItem(item);
		if checkReplacement then
			setReplacementItem(item,self)
		end
		item:setAttachedSlot(-1);
		item:setAttachedSlotType(nil);
		item:setAttachedToModel(nil);

		self:reloadIcons();
	end
end

local getModSlotsList(item,active){
	local slots = {
		[getAttachmentName("Weapon",item)] = active,
		[getAttachmentName("ShortWeapon",item)] = active,
		[getAttachmentName("Flashlight",item)] = active,
		[getAttachmentName("Right",item)] = active,
		[getAttachmentName("Left",item)] = active,
		[getAttachmentName("Bedroll",item)] = active,
		[getAttachmentName("Trinket",item)] = active,
	}
	return slots
}

local function sortSlots(item,attachments)
	local sorted = getModSlotsList(item,false)
	for k,v in pairs(attachments) do
		sorted[k]=v
	end
	return sorted
end

local function defaultSlots(item)
	local modSlots = getModSlotsList(item,true)
	local attsList = ArrayList.new();
	local attachmentsProvided = item:getAttachmentsProvided()
	if attachmentsProvided then
		for i=0, attachmentsProvided:size() - 1 do
			if not modSlots[attachmentsProvided:get(i)]  then
				attsList:add(attachmentsProvided:get(i))
			end
		end
	end
	return attsList
end

local function loadAttachmentsProvided(chr)
	local item = chr:getClothingItem_Back()
	if not item then return end
	local modData = item:getModData()
	if modData.attachments then
		local defaultSlots = defaultSlots(item)
		item:setAttachmentsProvided(ArrayList.new())
		modData.attachments = sortSlots(item,modData.attachments)
		for k,v in pairs(modData.attachments) do
			if v then 
				item:getAttachmentsProvided():add(k)
			end
		end
		item:getAttachmentsProvided():addAll(defaultSlots)
 	end
end

local originalRefresh = ISHotbar.refresh;
function ISHotbar:refresh()
	checkReplacement = false
	loadAttachmentsProvided(self.chr)
	originalRefresh(self)
	checkReplacement = true
end
