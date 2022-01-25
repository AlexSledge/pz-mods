PrimersDef = {}

PrimersDef["Bullets9mm_casing"] = "SP_Primers"
PrimersDef["Bullets38_casing"] = "SP_Primers"
PrimersDef["Bullets45_casing"] = "LP_Primers"
PrimersDef["Bullets44_casing"] = "LP_Primers"
PrimersDef["308Bullets_casing"] = "R_Primers"
PrimersDef["223Bullets_casing"] = "R_Primers"
PrimersDef["556Bullets_casing"] = "R_Primers"
PrimersDef["ShotgunShells_casing"] = "SG_Primers"


function recipe_Dismantle_Ammo(items, result, player)
	local inv = player:getInventory();
	local type = items:get(0):getType()
	if type == "Bullets9mm" or type == "Bullets38" then
		result:setUsedDelta(0.1) 
	end
	if type == "Bullets44" or type == "Bullets45" then
		result:setUsedDelta(0.2) 
	end
	if type == "308Bullets" or type == "556Bullets" then
		result:setUsedDelta(0.4) 
	end
	if type == "223Bullets" then
		result:setUsedDelta(0.3) 
	end
	if type == "ShotgunShells" then
		result:setUsedDelta(0.5) 
	end

	inv:AddItem("Base." .. type .. "_casing");
	inv:AddItem("Base." .. type .. "_tip");

end

function recipe_Gather_GunPowder(items, result, player)
	local inv = player:getInventory();
	local type = items:get(0):getType()
	if type == "Bullets9mm" or type == "Bullets38" then
		result:setUsedDelta(0.1) 
	end
	if type == "Bullets44" or type == "Bullets45" then
		result:setUsedDelta(0.2) 
	end
	if type == "308Bullets" or type == "556Bullets" then
		result:setUsedDelta(0.4) 
	end
	if type == "223Bullets" then
		result:setUsedDelta(0.3) 
	end
	if type == "ShotgunShells" then
		result:setUsedDelta(0.5) 
	end
end


function recipe_Remove_Primer(items, result, player)
	local inv = player:getInventory();
	local type = items:get(0):getType()
	local replaced = 0
	local casing,replaced = string.gsub(type,"_spent","")
	local primer = PrimersDef[casing]
	if replaced > 0 then
		inv:AddItem(primer.."_Spent")
	else
		inv:AddItem(primer)
	end 
	inv:AddItem("Base." .. casing .. "_spent_noprimer");

end

function recipe_Open_Jar(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("EmptyJar");
	inv:AddItem("JarLid");
end
