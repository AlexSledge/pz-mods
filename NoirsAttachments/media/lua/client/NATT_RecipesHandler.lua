local modsRecipes = {
	[NATTmods.SnakeAlice] = {"Add Frame SnakeAlice","Remove Frame SnakeAlice","Add Pouch SnakeAlice",
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

local function removeSnakeAliceRecipes()
	local snakeRecipes = {
		["Agregar soporte a mochila Alice"] = true,
		["Agregar bolsa de almacenaje a mochila Alice"] = true,
		["Quitar bolsa de almacenaje a mochila Alice"] = true,
		["Quitar soporte a mochila Alice"] = true,
	}
	local allRecipes = getAllRecipes()
	for i=0,allRecipes:size()-1 do
		local recipe = allRecipes:get(i)
		if snakeRecipes[recipe:getOriginalname()] then
			recipe:setNeedToBeLearn(true)
		end
	end
end

local function checkMods()
	for k,_ in pairs(modsRecipes) do
		local active = isModActivated(k)
		loadRecipes(modsRecipes[k],active)
	end
	if isModActivated(NATTmods.SnakeAlice) then
		removeSnakeAliceRecipes()
	end
end

Events.OnGameStart.Add(checkMods)