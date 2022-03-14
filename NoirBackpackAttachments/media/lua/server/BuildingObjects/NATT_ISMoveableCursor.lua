require "BuildingObjects/ISBuildingObject"

function ISMoveableCursor:create(_x, _y, _z, _north, _sprite)
    if self.canCreate and self.currentMoveProps and self.origSpriteName then
        if self.currentMoveProps then
            if ISMoveableDefinitions.cheat or self.currentMoveProps:walkToAndEquip( self.character, self.currentSquare, ISMoveableCursor.mode[self.player] ) then
                ISTimedActionQueue.add(ISMoveablesAction:new(self.character, self.currentSquare, self.currentMoveProps, ISMoveableCursor.mode[self.player], self.origSpriteName, self ));
            end
        end
    end
    self.joypadFacing = nil;
    self.objectListCache = nil;
    if self.origSpriteName and string.find(self.origSpriteName,"sleepingbag") then return end
    self.cursorFacing = nil;

end
