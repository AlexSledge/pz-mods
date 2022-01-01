availableFireModes = {}

local function ToggleFireMode(key)

    if getSpecificPlayer(0) == nil then return end
    -- LALT = 56
    if(key == 56) then
        availableFireModes = {}
        local player	= getSpecificPlayer(0)
		local weapon	= player:getPrimaryHandItem()

        if weapon and instanceof(weapon,"HandWeapon") and weapon:isAimedFirearm() then

			local currentMode= weapon:getFireMode()
            local currentModeIndex = nil
			if weapon:getFireModePossibilities() then
				for i=0, weapon:getFireModePossibilities():size() - 1 do
					local firemode = weapon:getFireModePossibilities():get(i);
                    if(currentMode==firemode) then currentModeIndex = i+1; end
                    table.insert(availableFireModes,firemode);
				end
               local nextFireMode = nextFireMode(availableFireModes,currentModeIndex)
               weapon:setFireMode(nextFireMode)
               player:Say(fireModeSay(nextFireMode))
               player:playSound("LightSwitch")
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