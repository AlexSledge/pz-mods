require "ISBaseObject"

function spawnCasing(playerObj, weapon)
	if not playerObj or playerObj:isDead() then return end;
	if not weapon then return end;
	if not weapon:isRanged() then return end;
	local gunAmmo = weapon:getAmmoType()
	playerObj:getCurrentSquare():AddWorldInventoryItem(gunAmmo .. "_casing_spent", 0.0, 0.0, 0.0);
end

Events.OnPlayerAttackFinished.Add(spawnCasing);
