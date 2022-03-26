local oldPerform = ISUpgradeWeapon.perform;
function ISUpgradeWeapon:perform()

    if SilencerDef[self.part:getType()] then
        ISUpgradeWeapon:setSound(self.weapon,self.part)
    end
    oldPerform(self)
end

function ISUpgradeWeapon:setSound(weapon,part)

  local silencer = SilencerDef[part:getType()][weapon:getType()]
  if not silencer then
    return
  end

  local data = weapon:getModData()
  if not data.baseSwingSound then
    data.baseSwingSound = weapon:getSwingSound();
  end
  if not data.baseSoundRadius then
    data.baseSoundRadius = weapon:getSoundRadius();
  end
  weapon:setSwingSound(silencer.sound);
  weapon:setSoundRadius(data.baseSoundRadius * silencer.soundRadius);

end