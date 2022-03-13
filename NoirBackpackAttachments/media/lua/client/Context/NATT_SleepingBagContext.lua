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

local function findSleepingBag(square)
    if not square then return nil end
    local objects = square:getObjects()
    for i=0,objects:size()-1 do
		local o = objects:get(i)
        if not o:getSprite() then return false end
	    local spriteName = spriteNameOf(o)
		if not spriteName then return false end
        if(string.find(spriteName,"sleepingbag")) then 
            return spriteName
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

local function pickUpSleepingBag(worldobjects, playerObj,clickedSquare,sprite)
    local mo = ISMoveableCursor:new(playerObj);
    getCell():setDrag(nil, mo.player);
    mo:setMoveableMode("pickup");
    mo.cursorFacing = true
    local props = ISMoveableSpriteProps.new(sprite)
    props.isMoveable = true
    if luautils.walkAdj(playerObj, clickedSquare) then
        ISTimedActionQueue.add(ISMoveablesAction:new(playerObj, clickedSquare, props, "pickup", sprite, mo));
    end
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
    mo.cursorFacing = true;
end

local function OnFillWorldObjectContextMenu(player, context, worldobjects, test)
    if test then return; end;
    local playerObj = getSpecificPlayer(player);

    local placedSleepingBag = nil
    for i,v in ipairs(worldobjects) do
        placedSleepingBag = findSleepingBag(v:getSquare())
    end
    if placedSleepingBag then 
       context:addOption(getText("IGUI_PickUp_Sleepingbag"), worldobjects, pickUpSleepingBag, playerObj,clickedSquare,placedSleepingBag);
    end

    local item =  getSleepingbagInInventory(playerObj)
    if item then
        context:addOption(getText("IGUI_Set_Sleepingbag"), worldobjects, setSleepingBag, playerObj, item);
    end
end

Events.OnFillWorldObjectContextMenu.Add(OnFillWorldObjectContextMenu);