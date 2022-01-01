local availableFireModes = {}

local gunLights = {TacticalLight="",ShotgunTacticalLight=""}

local function ToggleFireMode(key)

    local player    = getSpecificPlayer(0)
    if player == nil then return end
    -- LALT = 56
    if(key == 56) then
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
               player:Say(fireModeSay(nextFireMode))
               player:playSound("LightSwitch")
            end

        end
    end
end

local function ToggleWeaponLight(key)

    local player    = getSpecificPlayer(0)
    if player == nil then return end
    if key == getCore():getKey("Equip/Turn On/Off Light Source")  then
        player = getSpecificPlayer(0);
        local item = player:getPrimaryHandItem();
        if item and instanceof(item,"HandWeapon") and player:isAiming() then
            local sling = item:getSling()
            if sling then 
                if gunLights[sling:getType()] ~= nil then
                    if not item:isActivated() then
                        item:setTorchCone(true);
                        item:setLightStrength(1);
                        item:setLightDistance(8);
                        item:setActivated(true);
                    else
                        item:setTorchCone(false);
                        item:setLightStrength(0);
                        item:setLightDistance(0);
                        item:setActivated(false);
                    end
                    player:playSound("LightSwitch")
                end
            end
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

function fireModeSay(fireMode)
    if fireMode == "Auto" then return "-----" end
    if fireMode == "Single" then return "-" end
end

Events.OnKeyPressed.Add(ToggleFireMode)
Events.OnKeyPressed.Add(ToggleWeaponLight)