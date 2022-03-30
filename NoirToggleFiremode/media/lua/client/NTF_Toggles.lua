local availableFireModes = {
    ["Auto"] = "-----", 
    ["Single"] = "-", 
}

local gunFireModes = {}

local function getNextFireMode(gunFireModes,currentModeIndex)
    local nextFireMode = currentModeIndex+1
    if not gunFireModes[nextFireMode] then
        nextFireMode = 1
    end
    return gunFireModes[nextFireMode]
end

local function showfireMode(mode)
    local s = availableFireModes[mode];
    if not s then return "-" end
    return s;
end

local function ToggleFireMode(key)
    local player = getSpecificPlayer(0)
    if player == nil then return end
    if not (key == getCore():getKey("Toggle Firemode")) then return end
    
    if not player:isAiming() then return end
    local item	= player:getPrimaryHandItem()
    if not item then return end
    if not item:IsWeapon() or not item:isRanged() then return end
    gunFireModes = {}
    local currentMode= item:getFireMode()
    local currentModeIndex = nil
    if item:getFireModePossibilities() then
        for i=0, item:getFireModePossibilities():size() - 1 do
            local firemode = item:getFireModePossibilities():get(i);
            if(currentMode==firemode) then currentModeIndex = i+1; end
            table.insert(gunFireModes,firemode);
        end
        local nextFireMode = getNextFireMode(gunFireModes,currentModeIndex)
        item:setFireMode(nextFireMode)
        player:Say(showfireMode(nextFireMode))
        player:playSound("LightSwitch")
    else 
        player:Say(showfireMode(currentMode))
    end
end

Events.OnKeyPressed.Add(ToggleFireMode)