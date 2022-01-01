require "TimedActions/ISBaseTimedAction"

ISUpgradeWeapon = ISBaseTimedAction:derive("ISUpgradeWeapon");

local function predicateNotBroken(item)
    return not item:isBroken()
end

function ISUpgradeWeapon:isValid()
    if not self.character:getInventory():containsTagEval("Screwdriver", predicateNotBroken) then return false end
    if self.weapon:getWeaponPart(self.part:getPartType()) then return false end
    return self.character:getInventory():contains(self.part);
end

function ISUpgradeWeapon:update()
    self.weapon:setJobDelta(self:getJobDelta());
    self.part:setJobDelta(self:getJobDelta());

    self.character:setMetabolicTarget(Metabolics.LightDomestic);
end

function ISUpgradeWeapon:start()
    self.weapon:setJobType(getText("ContextMenu_Add_Weapon_Upgrade"));
    self.weapon:setJobDelta(0.0);
    self.part:setJobType(getText("ContextMenu_Add_Weapon_Upgrade"));
    self.part:setJobDelta(0.0);
end

function ISUpgradeWeapon:stop()
    ISBaseTimedAction.stop(self);
    self.weapon:setJobDelta(0.0);
    self.part:setJobDelta(0.0);
end

function ISUpgradeWeapon:perform()
    self.weapon:setJobDelta(0.0);
    self.part:setJobDelta(0.0);
    self.weapon:attachWeaponPart(self.part)
    if SilencerDef[self.part:getType()] then
        ISUpgradeWeapon:setSound(self.weapon,self.part)
    end
    self.character:getInventory():Remove(self.part);
    self.character:setSecondaryHandItem(nil);
    -- needed to remove from queue / start next.
    ISBaseTimedAction.perform(self);
end

function ISUpgradeWeapon:new(character, weapon, part, time)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.character = character;
    o.weapon = weapon;
    o.part = part;
    o.stopOnWalk = true;
    o.stopOnRun = true;
    o.maxTime = time;
    if character:isTimedActionInstant() then
        o.maxTime = 1;
    end
    return o;
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