require "ISBaseObject"

function spawnCasing(playerObj, weapon)
	if not playerObj or playerObj:isDead() then return end;
	if not weapon then return end;
	if not weapon:isRanged() then return end;

	local gun = weapon:getType();
	local gunAmmo, replaced = string.gsub(weapon:getAmmoType(), "Base.", "")
	if weapon and weapon:isRanged() then
		playerObj:getCurrentSquare():AddWorldInventoryItem("Base." .. gunAmmo .. "_casing_spent", 0.0, 0.0, 0.0);
		-- print("--> " .. "Base." .. gunAmmo .. "_casing_spent")
	end
end

Events.OnPlayerAttackFinished.Add(spawnCasing);
