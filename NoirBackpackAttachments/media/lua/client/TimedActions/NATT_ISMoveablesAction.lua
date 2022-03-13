require "TimedActions/ISBaseTimedAction"

local originalStart= ISMoveablesAction.start;
function ISMoveablesAction:start()
	if(string.find(self.origSpriteName,"sleepingbag")) then 
        getCell():setDrag(nil, 0);
        self:setActionAnim("Loot")
        self.character:SetVariable("LootPosition", "Low")
        self:setOverrideHandModels(nil, nil)
    end
	originalStart(self)
end
