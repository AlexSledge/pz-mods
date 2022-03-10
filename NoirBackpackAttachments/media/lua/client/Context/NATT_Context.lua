local sleepingbags = {
    "Sleepingbag",
    "SleepingbagG",
    "SleepingbagR",
    "SleepingbagO",
    "SleepingbagBK",
    "SleepingbagLB",
    "SleepingbagP",
    "SleepingbagRolled",
    "SleepingbagGRolled",
    "SleepingbagRRolled",
    "SleepingbagORolled",
    "SleepingbagBKRolled",
    "SleepingbagLBRolled",
    "SleepingbagPRolled",
}

local function spriteNameOf(object)
	if not object then return nil end
	if not object:getSprite() then return nil end
	return object:getSprite():getName() or object:getSpriteName()
end

local function findSleepingBag(square,remove)
    if not square then return nil end
    local objects = square:getObjects()
    for i=0,objects:size()-1 do
		local o = objects:get(i)
        if not o:getSprite() then return false end
	    local spriteName = spriteNameOf(o)
		if not spriteName then return false end
        if(string.find(spriteName,"sleepingbag")) then 
            if remove then
                o:getSquare():transmitRemoveItemFromSquare(o)
            end
        return true
        end
	end
end

local function getSleepingbagInInventory(playerObj)
    for i,v in ipairs(sleepingbags) do
        local item = playerObj:getInventory():FindAndReturn(v);
        if item then return item end
    end
    return nil
end

local function pickUp(worldobjects, playerObj, destinationSquare)
    local mo = ISMoveableCursor:new(playerObj);
    getCell():setDrag(mo, mo.player);
    mo:setMoveableMode("pickup");
end

local function setSleepingBag(worldobjects, playerObj, item)
        local itemType = item:getType()
        local unrolled,_ = string.gsub(itemType,"Rolled","")
        if unrolled then
            playerObj:getInventory():Remove(itemType);
            local sleepingbag = InventoryItemFactory.CreateItem(unrolled)
            playerObj:getInventory():AddItem(sleepingbag);
            item = sleepingbag
        end
        local mo = ISMoveableCursor:new(playerObj);
        getCell():setDrag(mo, mo.player);
        mo:setMoveableMode("place");
        mo:tryInitialItem(item);
end

local function OnPreFillWorldObjectContextMenu(player, context, worldobjects, test)
    if test then return; end;
    local playerObj = getSpecificPlayer(player);
    local item =  getSleepingbagInInventory(playerObj)
    local placedSleepingBag = false
    for i,v in ipairs(worldobjects) do
        placedSleepingBag =  findSleepingBag(v:getSquare(),false)
    end
    if placedSleepingBag then 
        local destinationSquare = clickedSquare
        local pickUp = context:addOption(getText("IGUI_Pickup"), worldobjects, pickUp, playerObj, destinationSquare);
    end
    if item then
        local setSb = context:addOption(getText("IGUI_Set_Sleepingbag"), worldobjects, setSleepingBag, playerObj, item);
    end

end
Events.OnPreFillWorldObjectContextMenu.Add(OnPreFillWorldObjectContextMenu);