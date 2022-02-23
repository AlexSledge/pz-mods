require "ISUI/ISPanelJoypad"

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
bind.value = "[Additional NATT Hotkeys]";
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
		error "item:getAttachedSlot() ~= slotIndex"
	end
	if item:canBeActivated() then
		item:setActivated(not item:isActivated())
		getPlayer():playSound("LightSwitch")
		return
	end
	if not instanceof(item, "HandWeapon") then
		return
	end
	self:equipItem(item)
end

--Remove duplicate CanBeAttached tooltips
--Noir
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
		-- didn't found anything to it, gonna add the possibilities as a tooltip
		if not found then
			subOption.notAvailable = true;
			local tooltip = ISWorldObjectContextMenu.addToolTip();
			local text = getText("Tooltip_CanBeAttached") .. " <LINE> <INDENT:20> ";
			local lastValue = "";
			local typeText = "";
			for i,v in pairs(ISHotbarAttachDefinition) do
				if v.attachments then
					for type,atch in pairs(v.attachments) do
						if type == item:getAttachmentType() then
							typeText = getText("IGUI_HotbarAttachment_" .. v.type)
							if not (lastValue == typeText)  then 
								text = text .. typeText .. " <LINE> "
							end
							lastValue = typeText;
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

--Long weapons/firearms on bag weapon slot and keeps back slot
--Noir 
function ISHotbar:attachItem (item, slot, slotIndex, slotDef, doAnim)
	if doAnim then
		if self.replacements and self.replacements[item:getAttachmentType()] and isBack(slot) then
			slot = self.replacements[item:getAttachmentType()];
		end
		self:setAttachAnim(item, slotDef);
		ISInventoryPaneContextMenu.transferIfNeeded(self.chr, item)
		-- first remove the current equipped one if needed
		if self.attachedItems[slotIndex] then
			ISTimedActionQueue.add(ISDetachItemHotbar:new(self.chr, self.attachedItems[slotIndex]));
		end
		ISTimedActionQueue.add(ISAttachItemHotbar:new(self.chr, item, slot, slotIndex, slotDef));
	else
		-- add new item
		-- if the item need to be attached elsewhere than its original emplacement because of a bag for example
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
end
function isBack(slot)
	return string.find(slot," Back");
end