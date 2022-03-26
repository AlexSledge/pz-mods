ISReloadWeaponAction.NFattackHook = function(character, chargeDelta, weapon)
	ISTimedActionQueue.clear(character)
	if character:isAttackStarted() then return; end
	if instanceof(character, "IsoPlayer") and not character:isAuthorizeMeleeAction() then
		return;
	end
	if weapon:isRanged() and not character:isDoShove() then
		if ISReloadWeaponAction.canShoot(weapon) then
			ISReloadWeaponAction:checkSilencer(character,weapon);
			character:DoAttack(0);
		else
			character:DoAttack(0);
			character:setRangedWeaponEmpty(true);
		end
	else
		ISTimedActionQueue.clear(character)
		if(chargeDelta == nil) then
			character:DoAttack(0);
		else
			character:DoAttack(chargeDelta);
		end
	end
end

function ISReloadWeaponAction:checkSilencer(character,weapon)
  local part = weapon:getCanon()
  if part == nil then
	ISReloadWeaponAction:vanillaEffects(character,weapon,true)
    return
  end
  local silencer = SilencerDef[part:getType()]
  if silencer == nil then
	ISReloadWeaponAction:vanillaEffects(character,weapon,true)
    return
  end
  silencer = silencer[weapon:getType()]
  if silencer == nil then
	ISReloadWeaponAction:vanillaEffects(character,weapon,true)
    return
  end

  if(weapon:getSwingSound() ~= silencer.sound) then
	ISReloadWeaponAction:loadSilencer(weapon,silencer)
  end
  ISReloadWeaponAction:vanillaEffects(character,weapon,false)
end

function ISReloadWeaponAction:loadSilencer(weapon,silencer)
	weapon:setSwingSound(silencer.sound);
    weapon:setSoundRadius(weapon:getSoundRadius() * silencer.soundRadius);
end

function ISReloadWeaponAction:vanillaEffects(character,weapon,muzzleFlash)
	character:playSound(weapon:getSwingSound());
	local radius = weapon:getSoundRadius();
	character:addWorldSoundUnlessInvisible(radius, weapon:getSoundVolume(), false);
	if(muzzleFlash) then
	character:startMuzzleFlash()
	end
end

Events.OnGameBoot.Add(function()
	Hook.Attack.Remove(ISReloadWeaponAction.attackHook);
	Hook.Attack.Add(ISReloadWeaponAction.NFattackHook);
end)

