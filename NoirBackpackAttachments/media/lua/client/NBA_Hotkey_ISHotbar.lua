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
bind.value = "[Additional NBA Hotkeys]";
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


bind = {};
bind.value = "Hotbar 16";
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