require "BuildingObjects/ISBuildingObject"
SleepingBagCursor = ISBuildingObject:derive("SleepingBagCursor");
SleepingBagCursor.mode = {};
SleepingBagCursor.normalColor = { r=0.5, g=0.5, b=0.5 };
SleepingBagCursor.validColor = { r=0.5, g=1, b=0.5 };
SleepingBagCursor.invalidColor = { r=1, g=0, b=0 };
function SleepingBagCursor.exitCursorKey( _key )
    if getCell() and getCell():getDrag(0) and getCell():getDrag(0).Type and getCell():getDrag(0).Type == "SleepingBagCursor" then
        local disable = false;
        if not _key then
            disable = true;
        else
            if getCore():getKey("Run") == _key then
                disable = true;
            elseif getCore():getKey("Interact") == _key then
                disable = true;
            end
        end

        if disable then
            getCell():setDrag(nil, 0);
        end
    end
end

function SleepingBagCursor:exitCursor()
    getCell():setDrag(nil, self.player);
end

Events.OnKeyPressed.Add(SleepingBagCursor.exitCursorKey);
Events.OnKeyKeepPressed.Add(SleepingBagCursor.exitCursorKey);
Events.OnRightMouseDown.Add(SleepingBagCursor.exitCursorKey);

function SleepingBagCursor.clearCacheForAllPlayers()
    for i = 0,3 do
        if getCell() and getCell():getDrag(i) and getCell():getDrag(i).Type and getCell():getDrag(i).Type == "SleepingBagCursor" then
            getCell():getDrag(i):clearCache();
        end
    end
end

function SleepingBagCursor:clearCache()
    self.objectIndex = -1;
    self.objectListCache = nil;
    self.cacheObject = nil;
end

function SleepingBagCursor:getMoveableMode()
    return SleepingBagCursor.mode[self.player];
end

function SleepingBagCursor:tryInitialItem( _item )
    self.tryInitialInvItem = _item;
end

function SleepingBagCursor:setMoveableMode( _mode )
    if _mode then
        SleepingBagCursor.mode[self.player] = _mode; 
    end
end

function SleepingBagCursor:create(_x, _y, _z, _north, _sprite)
    if self.canCreate and self.currentMoveProps and self.origSpriteName then
        if self.currentMoveProps then
            if ISMoveableDefinitions.cheat or self.currentMoveProps:walkToAndEquip( self.character, self.currentSquare, SleepingBagCursor.mode[self.player] ) then
                ISTimedActionQueue.add(ISMoveablesAction:new(self.character, self.currentSquare, self.currentMoveProps, SleepingBagCursor.mode[self.player], self.origSpriteName, self ));
            end
        end
    end
    self.cursorFacing = nil;
    self.joypadFacing = nil;
    self.objectListCache = nil;
    getCell():setDrag(nil, 0);
end

function SleepingBagCursor:render( _x, _y, _z, _square )
    self.renderX, self.renderY, self.renderZ = _x, _y, _z;
    local color = self.colorMod or {r=1,g=0,b=0};

    if self.currentMoveProps and self.currentMoveProps.isMultiSprite and self.currentMoveProps.sprite:getSpriteGrid()~=nil then
        if self.origMoveProps then
            local origGrid = self.origMoveProps.sprite:getSpriteGrid();
            local xo = origGrid:getSpriteGridPosX(self.origMoveProps.sprite);
            local yo = origGrid:getSpriteGridPosY(self.origMoveProps.sprite);

            local spriteGrid = self.currentMoveProps.sprite:getSpriteGrid();
            local w = spriteGrid:getWidth();
            local h = spriteGrid:getHeight();
            local wx, wy = _x-xo,_y-yo;
            for x=0, w-1 do
                for y=0,h-1 do
                    local square = getCell():getGridSquare(wx+x, wy+y, _z);
                    if square and square:getFloor() and square:getFloor():getSprite() then
                        square:getFloor():getSprite():RenderGhostTileColor(wx+x, wy+y, _z, 0.75, 1, 0.75, 0.25);
                    end

                    local objSprite = spriteGrid:getSprite(x, y);
                    if objSprite then
                        local yoffset =self.yOffset;
                        objSprite:RenderGhostTileColor(wx+x, wy+y, _z, 0, yoffset * Core.getTileScale(), color.r, color.g, color.b, 0.8);
                    end
                end
            end
        end
    end
end

function SleepingBagCursor:isValid( _square )
    self.currentMoveProps   = nil;
    self.origMoveProps      = nil;
    self.canCreate          = nil;
    self.objectSprite       = nil;
    self.origSpriteName     = nil;
    self.colorMod           = {r=1,g=0,b=0};
    self.yOffset            = 0;

    if _square ~= self.currentSquare then
        self.objectListCache = nil;
    end
    self.currentSquare  = _square;

    if self.currentSquare == nil then
        self.cursorFacing = nil;
        self.joypadFacing = nil;
        return false;
    end

    if getPlayerRadialMenu(self.player) and getPlayerRadialMenu(self.player):isReallyVisible() then
        self.cursorFacing = nil
        self.joypadFacing = nil
        return false
    end

    if self.character:getCharacterActions():isEmpty() then
        self.character:faceLocation(_square:getX(), _square:getY())
    end

    self.canSeeCurrentSquare = _square and _square:isCouldSee(self.player);

    if SleepingBagCursor.mode[self.player] == "place" then
        local objects = self.objectListCache or self:getInventoryObjectList();
        self.objectListCache = objects;

        if #objects > 0 then
            if self.objectIndex > #objects or self.objectIndex < 1 then self.objectIndex = 1 end
            if self.objectIndex >= 1 and self.objectIndex <= #objects then
                local item = objects[self.objectIndex].object;
                local moveProps = objects[self.objectIndex].moveProps;
                self.origMoveProps = moveProps;
                local origName = moveProps.spriteName;

                if moveProps and moveProps:hasFaces() then
                    local faceIndex;
                    faceIndex = self.cursorFacing or moveProps:snapFaceToSquare( _square );
                    if faceIndex and moveProps:getIndexedFaces()[faceIndex] then
                        local tryMoveProps = ISMoveableSpriteProps.new( moveProps:getIndexedFaces()[faceIndex] );
                        if tryMoveProps and tryMoveProps.isMoveable and tryMoveProps.sprite then
                            moveProps = tryMoveProps;
                        end
                    end
                end

                if moveProps and moveProps.sprite then
                    self.currentMoveProps       = moveProps;
                    self.canCreate              = moveProps:canPlaceMoveable( self.character, _square, item );
                    self.colorMod               = self.canCreate and SleepingBagCursor.normalColor or SleepingBagCursor.invalidColor;
                    self.cacheInvObjectSprite   = item:getWorldSprite();
                    self.objectSprite           = moveProps.sprite;
                    self.origSpriteName         = origName;
                    self.yOffset                = moveProps:getYOffsetCursor(); 
                    return true;
                end

            end
        end
    end    
    self.cursorFacing = nil;
    self.joypadFacing = nil;
    return false;
end

function SleepingBagCursor:rotateMouse(x, y)
    if self.currentSquare then

        local difx = x - self.currentSquare:getX();
        local dify = y - self.currentSquare:getY();
   
        if difx < 0 and math.abs(difx) > math.abs(dify) then
            self.cursorFacing = 2;
        end

        if difx > 0 and math.abs(difx) > math.abs(dify) then
            self.cursorFacing = 4;
        end

        if dify < 0 and math.abs(difx) < math.abs(dify) then
            self.cursorFacing = 1; 
        end

        if dify > 0 and math.abs(difx) < math.abs(dify) then
            self.cursorFacing = 3; 
        end
    end
end

function SleepingBagCursor:getRotateableObject()
    local square = self.currentSquare;
    if not square then return false end
    for i = square:getObjects():size(),1,-1 do
        local obj = square:getObjects():get(i-1);
        local moveProps = ISMoveableSpriteProps.new(obj:getSprite());
        if moveProps and moveProps:canManuallyRotate() then
            return { object = obj, moveProps = moveProps };
        end
    end
    return false;
end

function SleepingBagCursor:getInventoryObjectList()
    local objects           = {};
    local spriteBuffer	= {};
    local items 			= self.character:getInventory():getItems();
    local items_size 		= items:size();
    for i=0,items_size-1, 1 do
        local item = items:get(i);
        if instanceof(item, "Moveable") then
            if self.character:getPrimaryHandItem() ~= item and self.character:getSecondaryHandItem() ~= item then
                local moveProps = ISMoveableSpriteProps.new( item:getWorldSprite() );
                if moveProps.isMoveable then
                    local ignoreMulti = false
                    if moveProps.isMultiSprite then
                        local anchorSprite = moveProps.sprite:getSpriteGrid():getAnchorSprite()
                        if spriteBuffer[anchorSprite] then
                            ignoreMulti = true
                        else
                            spriteBuffer[anchorSprite] = true
                            if moveProps.sprite ~= anchorSprite then
                                moveProps = ISMoveableSpriteProps.new(anchorSprite)
                            end
                        end
                    end
                    if not ignoreMulti then
                        table.insert(objects, { object = item, moveProps = moveProps });
                        if self.cacheInvObjectSprite and self.cacheInvObjectSprite == item:getWorldSprite() then
                            self.objectIndex = #objects;
                        end
                    end
                end
            end
        end
    end

    if self.tryInitialInvItem then
        if instanceof(self.tryInitialInvItem, "Moveable") then
            local moveProps = ISMoveableSpriteProps.new(self.tryInitialInvItem:getWorldSprite());
            local sprite = moveProps.sprite;
            if moveProps.isMultiSprite then
                local spriteGrid = moveProps.sprite:getSpriteGrid();
                sprite = spriteGrid:getAnchorSprite();
            end
            local spriteName = sprite:getName();
            for index,table in ipairs(objects) do
                if table.moveProps.sprite == sprite then
                    self.objectIndex = index;
                    self.cacheInvObjectSprite = spriteName;
                    break;
                end
            end
        end
        self.tryInitialInvItem = nil;
    end

    return objects;
end

function SleepingBagCursor:new(_character)
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    o:init();
    o.SleepingBagCursor = true;
    o.moveableMode = "pickup";
    o.character = _character;
    o.player = _character:getPlayerNum();
    o.skipBuildAction = true;
    o.isYButtonResetCursor = true;
    o.noNeedHammer = false;
    o.skipWalk = true;
    o.renderFloorHelper = true;
    o.objectIndex = 1;
    o.subObjectIndex = 1;
    o.cacheInvObjectSprite = "";
    o.cacheInvObjectIndex = 1;
    o.renderX = -1;
    o.renderY = -1;
    o.renderZ = -1;
    o.yOffset = 0;
    return o;
end
