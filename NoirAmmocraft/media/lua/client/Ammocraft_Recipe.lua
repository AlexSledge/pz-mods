

function recipe_Dismantle_Ammo(items, result, player)
	local inv = player:getInventory();
	local type = items:get(0):getType()
	if type == "Bullets9mm" or type == "Bullets38" then
		result:setUsedDelta(0.1) 
	end
	if type == "Bullets44" or type == "Bullets45" then
		result:setUsedDelta(0.2) 
	end
	if ammo == "308Bullets" or type == "556Bullets" then
		result:setUsedDelta(0.4) 
	end
	if type == "223Bullets" then
		result:setUsedDelta(0.3) 
	end
	if type == "ShotgunShells" then
		result:setUsedDelta(0.5) 
	end

	inv:AddItem("Base." .. ammo .. "_casing");
	inv:AddItem("Base." .. ammo .. "_tip");

end

function recipe_Remove_Primer(items, result, player)
	local inv = player:getInventory();
	local type = items:get(0):getType()
	type = string.gsub(type,"_spent","")
	inv:AddItem("Base." .. type .. "_spent_noprimer");
end

function recipe_Open_Jar(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("EmptyJar");
	inv:AddItem("JarLid");
end
