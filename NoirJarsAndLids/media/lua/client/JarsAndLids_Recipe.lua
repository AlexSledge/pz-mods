function recipe_Open_Jar(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("EmptyJar");
	inv:AddItem("JarLid");
end
