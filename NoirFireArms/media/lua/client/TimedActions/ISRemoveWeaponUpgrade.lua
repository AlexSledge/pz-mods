require "TimedActions/ISBaseTimedAction"

ISRemoveWeaponUpgrade = ISBaseTimedAction:derive("ISRemoveWeaponUpgrade");

local function predicateNotBroken(item)
    return not item:isBroken()
end

function ISRemoveWeaponUpgrade:isValid()
    if not self.character:getInventory():containsTagEval("Screwdriver", predicateNotBroken) then return false end
    if not self.character:getInventory():contains(self.weapon) then return false end
    return self.weapon:getWeaponPart(self.part:getPartType()) == self.part
end

function ISRemoveWeaponUpgrade:update()
    self.character:setMetabolicTarget(Metabolics.LightDomestic);
end

function ISRemoveWeaponUpgrade:start()
end

function ISRemoveWeaponUpgrade:stop()
    ISBaseTimedAction.stop(self);
end

function ISRemoveWeaponUpgrade:perform()
    self.weapon:detachWeaponPart(self.part)
    self.character:getInventory():AddItem(self.part);
    self.character:resetEquippedHandsModels();

    if SilencerDef[self.part:getType()] then
        ISRemoveWeaponUpgrade:setSound(self.weapon)
    end
    -- needed to remove from queue / start next.
    ISBaseTimedAction.perform(self);
end

function ISRemoveWeaponUpgrade:new(character, weapon, part, time)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.character = character;
    o.weapon = weapon;
    o.part = part;
    o.stopOnWalk = true;
    o.stopOnRun = true;
    o.maxTime = time;
    return o;
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