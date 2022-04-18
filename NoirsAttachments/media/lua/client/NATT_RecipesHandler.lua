local modsRecipes = {
	[NATTmods.SnakeAlice] = {"Upgrade SnakeAlice","Add Frame SnakeAlice","Remove Frame SnakeAlice","Add Pouch SnakeAlice",
							 "Remove Pouch SnakeAlice"}
}

local function loadRecipes(recipes, learn)
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

local function checkMods()
	for k,_ in pairs(modsRecipes) do
		local active = isModActivated(k)
		loadRecipes(modsRecipes[k],active)
	end
end

Events.OnGameStart.Add(checkMods)