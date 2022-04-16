BountyBoardCategoryUI = ISPanelJoypad:derive("BountyBoardCategoryUI");
BountyBoardCategoryUI.instance = nil;
BountyBoardCategoryUI.SMALL_FONT_HGT = getTextManager():getFontFromEnum(UIFont.Small):getLineHeight()
BountyBoardCategoryUI.MEDIUM_FONT_HGT = getTextManager():getFontFromEnum(UIFont.Medium):getLineHeight()

function BountyBoardCategoryUI:initialise()
    ISPanelJoypad.initialise(self);
    self:create();
end

function BountyBoardCategoryUI:prerender()
    self.bounties.backgroundColor.a = 0.8
    self.bounties.doDrawItem = BountyBoardCategoryUI.doDrawItem
end

function BountyBoardCategoryUI:doDrawItem(y, item, alt)
    local baseItemDY = 0
    if item.item.name then
        baseItemDY = self.SMALL_FONT_HGT
        item.height = self.itemheight + baseItemDY
    end

    if y + self:getYScroll() >= self.height then return y + item.height end
    if y + item.height + self:getYScroll() <= 0 then return y + item.height end

    local a = 0.9;
    if not item.item.available then
        a = 0.3;
    end
    self:drawRectBorder(0, (y), self:getWidth(), item.height - 1, a, self.borderColor.r, self.borderColor.g, self.borderColor.b);

    if self.selected == item.index then
        self:drawRect(0, (y), self:getWidth(), item.height - 1, 0.3, 0.7, 0.35, 0.15);
    end

    self:drawText(item.item.name, 6, y + 2, 1, 1, 1, a, UIFont.Medium);
    if item.item.requestedItem then
        self:drawText("Need: "..item.item.requestedItem, 6, y + 2 + self.MEDIUM_FONT_HGT, 1, 1, 1, a, UIFont.Small);
        
    end
    if item.item.reward then
        self:drawText("Reward: "..item.item.reward, 6, y + 15 + self.MEDIUM_FONT_HGT, 1, 1, 1, a, UIFont.Small);
    end
    return y + item.height;
end

function BountyBoardCategoryUI:create()
    local fontHgtSmall = self.SMALL_FONT_HGT
    local entryHgt = fontHgtSmall + 2 * 2

    self.bounties = ISScrollingListBox:new(1, entryHgt + 35, self.width / 3, self.height - (entryHgt + 25));
    self.bounties:initialise();
    self.bounties:instantiate();
    self.bounties:setAnchorRight(false)
    self.bounties:setAnchorBottom(true)
    self.bounties.itemheight = 2 + self.MEDIUM_FONT_HGT + 32 + 4;
    self.bounties.selected = 0;
    self.bounties.joypadParent = self;
    self.bounties.drawBorder = false;
    self.bounties.doDrawItem = BountyBoardCategoryUI.doDrawItem;
    self:addChild(self.bounties);

    self.bounties.SMALL_FONT_HGT = self.SMALL_FONT_HGT
    self.bounties.MEDIUM_FONT_HGT = self.MEDIUM_FONT_HGT

    self.filterLabel = ISLabel:new(4, 2, entryHgt, getText("IGUI_CraftUI_Name_Filter"),1,1,1,1,UIFont.Small, true);
    self:addChild(self.filterLabel);

    local width = ((self.width/3) - getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_CraftUI_Name_Filter"))) - 98;
    self.filterEntry = ISTextEntryBox:new("", getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_CraftUI_Name_Filter")) + 9, 2, width, fontHgtSmall);
    self.filterEntry:initialise();
    self.filterEntry:instantiate();
    self.filterEntry:setText("");
    self.filterEntry:setClearButton(true);
    self:addChild(self.filterEntry);
    self.lastText = self.filterEntry:getInternalText();
    
    self.filterAll = ISTickBox:new(self.filterEntry.x + self.filterEntry.width + 5, 2, 20, entryHgt, "", self, self.onFilterAll)
    self.filterAll:initialise()
    self.filterAll:addOption(getText("IGUI_FilterAll"));
    self.filterAll:setWidthToFit()
    self:addChild(self.filterAll)
end

function BountyBoardCategoryUI:new (x, y, width, height)
    local o = {};
    o = ISPanelJoypad:new(x, y, width, height);
    setmetatable(o, self);
    self.__index = self;
    o:noBackground();
    BountyBoardCategoryUI.instance = o;
    return o;
end
