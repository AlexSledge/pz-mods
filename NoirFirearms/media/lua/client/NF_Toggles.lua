local availableFireModes = {}

local gunLights = {GunLight=""}

local function ToggleFireMode(key)

    local player    = getSpecificPlayer(0)
    if player == nil then return end
    if(key == 56) then     -- Left ALT = 56
        availableFireModes = {}
        player	= getSpecificPlayer(0)
		local item	= player:getPrimaryHandItem()

        if item and instanceof(item,"HandWeapon") and player:isAiming() then
			local currentMode= item:getFireMode()
            local currentModeIndex = nil
			if item:getFireModePossibilities() then
				for i=0, item:getFireModePossibilities():size() - 1 do
					local firemode = item:getFireModePossibilities():get(i);
                    if(currentMode==firemode) then currentModeIndex = i+1; end
                    table.insert(availableFireModes,firemode);
				end
               local nextFireMode = nextFireMode(availableFireModes,currentModeIndex)
               item:setFireMode(nextFireMode)
               player:Say(showfireMode(nextFireMode))
               player:playSound("LightSwitch")
            else 
                player:Say(showfireMode(currentMode))
            end

        end
    end
end

local function ToggleWeaponLight(key)
    local player    = getSpecificPlayer(0)
    if player == nil then return end
    if key == getCore():getKey("Equip/Turn On/Off Light Source")  then
        local item = player:getPrimaryHandItem();
        if item and instanceof(item,"HandWeapon") and player:isAiming() then
            local stock = item:getStock()
            if not stock then return end
            if gunLights[stock:getType()] ~= nil then
                if not item:isActivated() then
                    item:setActivated(true);
                else
                    item:setActivated(false);
                end
                player:playSound("LightSwitch")
            end
        end
    end
end

local function WeaponLightBeam()

    local player = getSpecificPlayer(0)
    if player == nil then return end
    local item = player:getPrimaryHandItem();
    if item and instanceof(item,"HandWeapon") then
        local stock = item:getStock()
        if not stock then
            item:setActivated(false)
            return
        end
        if player:isAiming() then
            if item:isActivated() then
                item:setTorchCone(true);
                item:setLightStrength(1);
                item:setLightDistance(8);
            else
                item:setTorchCone(false);
                item:setLightStrength(0);
                item:setLightDistance(0);
            end
        else
            item:setTorchCone(false);
            item:setLightStrength(0);
            item:setLightDistance(0);
        end
    end
end


function nextFireMode(availableFireModes,currentModeIndex)
    local nextFireMode = currentModeIndex+1
    if not availableFireModes[nextFireMode] then
        nextFireMode = 1
    end
    return availableFireModes[nextFireMode]
end

function showfireMode(fireMode)
    if fireMode == "Auto" then return "-----" end
    if fireMode == "Single" or not firemode then return "-" end
end

Events.OnKeyPressed.Add(ToggleFireMode)
Events.OnKeyPressed.Add(ToggleWeaponLight)
Events.OnPlayerUpdate.Add(WeaponLightBeam)