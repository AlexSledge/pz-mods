local function silence(wielder, weapon)

  if weapon == nil then return end
	if not weapon:IsWeapon() or not weapon:isRanged() then return; end

    local scriptItem = weapon:getScriptItem()
    local soundRadius = scriptItem:getSoundRadius()
    local swingSound = scriptItem:getSwingSound()

    if weapon:getMinAngle() >= 1.0 then
      weapon:setMinAngle(0.99)
    end

    local newSilencedSoundRadius = soundRadius * (0.5)

    local silencedTable=
    {
      Mp5     = {swingSound = "Mp5ShotSilenced", silencedSoundRadius = newSilencedSoundRadius},
      Glock17 = {swingSound = "Glock17ShotSilenced", silencedSoundRadius = newSilencedSoundRadius},
      FnFal   = {swingSound = "FnFalShotSilenced", silencedSoundRadius = newSilencedSoundRadius},
      Handgun03   = {swingSound = "Glock17ShotSilenced", silencedSoundRadius = newSilencedSoundRadius},
      Handgun02   = {swingSound = "ColtShotSilenced", silencedSoundRadius = newSilencedSoundRadius},
      VarmintRifle   = {swingSound = "VarmintRifleShotSilenced", silencedSoundRadius = newSilencedSoundRadius},
      HuntingRifle   = {swingSound = "HuntingRifleShotSilenced", silencedSoundRadius = newSilencedSoundRadius},
      M14   = {swingSound = "M14ShotSilenced", silencedSoundRadius = newSilencedSoundRadius}
    }

    local weaponSprite = weapon:getWeaponSprite()
    local canon = weapon:getCanon()
    
    if canon and string.find(canon:getType(), "Silencer") then
      soundRadius = silencedTable[weaponSprite].silencedSoundRadius;
      swingSound = silencedTable[weaponSprite].swingSound
    end

    weapon:setSoundRadius(soundRadius)
    weapon:setSwingSound(swingSound)

end

Events.OnEquipPrimary.Add(silence);

Events.OnGameStart.Add(function()
	local player = getPlayer()
	silence(player, player:getPrimaryHandItem())
end)
