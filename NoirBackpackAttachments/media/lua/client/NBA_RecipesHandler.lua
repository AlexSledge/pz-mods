
local modsRecipes = {
	["Pitstop"] = {"Upgrade KleanBackpack"} ,
	["2507488373"] = {"Upgrade HR","Upgrade RUKSAK1","Upgrade RUKSAK2","Upgrade ANAT"} ,
	["UndeadSuvivor"] = {"Upgrade NomadBackpack"} ,
}

function checkMods()
	for k,_ in pairs(modsRecipes) do
		if getActivatedMods():contains(k) then
			loadRecipes(modsRecipes[k],true)
		else
			loadRecipes(modsRecipes[k],false)
		end
	end
end

function loadRecipes(recipes, learn)
	local player = getPlayer()
	for _,recipe in ipairs(recipes) do
		if learn then
			if not player:isRecipeKnown(recipe) then
				player:getKnownRecipes():add(recipe);
			end
		else
			player:getKnownRecipes():remove(recipe);
		end	
	end
end

Events.OnGameStart.Add(checkMods)

function keepColorAndItems(items,result,player)
	local backpack = items:get(0)
	local backpackVisual = backpack:getVisual()
	local resultVisual = result:getVisual()
	resultVisual:setTextureChoice(backpackVisual:getTextureChoice());
	result:getItemContainer():setItems(backpack:getItemContainer():getItems());
end


function checkIsEquipped(item,result)
	if(item:IsInventoryContainer() and item:isEquipped()) then
		return false
	else
		return true
	end
end

