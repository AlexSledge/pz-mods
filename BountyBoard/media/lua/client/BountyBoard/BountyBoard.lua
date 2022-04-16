local function setPlayerUUID(player) 
    local modData = player:getModData()
    if modData.playerUUID then 
        print("OnGameStart Player UUID: "..modData.playerUUID)
          return
    end
    modData.playerUUID = "aaaa-bbbb-cccc-dddd";
    print("UUID Assigned")
end

local function OnGameStart()
	local player = getPlayer()
    setPlayerUUID(player)
end

Events.OnGameStart.Add(OnGameStart)

