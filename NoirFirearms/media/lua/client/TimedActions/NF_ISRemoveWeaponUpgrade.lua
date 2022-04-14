local oldPerform = ISRemoveWeaponUpgrade.perform
function ISRemoveWeaponUpgrade:perform()
    if SilencerDef[self.part:getType()] then
      ISRemoveWeaponUpgrade:setSound(self.weapon)
    end
    oldPerform(self)
end

function ISRemoveWeaponUpgrade:setSound(weapon)

  local data = weapon:getModData();
  if not data.baseSwingSound then
    data.baseSwingSound = weapon:getSwingSound();
  end
  if not data.baseSoundRadius then
    data.baseSoundRadius = weapon:getSoundRadius();
  end
  weapon:setSwingSound(data.baseSwingSound);
  weapon:setSoundRadius(data.baseSoundRadius);
  
end