require "ISUI/ISCollapsableWindow"

BountyBoardUI = ISCollapsableWindow:derive("BountyBoardUI");
BountyBoardUI.instance = nil;
BountyBoardUI.largeFontHeight = getTextManager():getFontHeight(UIFont.Large)
BountyBoardUI.mediumFontHeight = getTextManager():getFontHeight(UIFont.Medium)
BountyBoardUI.smallFontHeight = getTextManager():getFontHeight(UIFont.Small)
BountyBoardUI.bottomInfoHeight = BountyBoardUI.smallFontHeight * 2

local function showBountyBoard(_object, _x, _y)
    local sprite = _object[1]:getSprite()
    if BountyBoardUI.instance==nil then
        BountyBoardUI.instance = BountyBoardUI:new (0, 0, 800, 600, getPlayer());
        BountyBoardUI.instance:initialise();
        BountyBoardUI.instance:instantiate();
    end
    BountyBoardUI.instance:addToUIManager();
    BountyBoardUI.instance:setVisible(true);
    return BountyBoardUI.instance;
end

function BountyBoardUI:onActivateView(viewName)
    print("onActivateView")
end

local tempCategories = {}

local categoryDefs = {
    Available = "Available",
    Taken = "Taken",
    Complete = "Complete",
}

local bountyStatus = {
    Available = 1,
    Taken = 2,
    Complete = 3
}

local bounty = {
    name = "Kill Kira",
    requestedItem = "Kira's ears",
    description = "Kira life needs to end now, you have 2 days to bring me his/her ears to prove it, good luck",
    reward = "10,000 credits",
    status = 1,
}

local availableBounties = {}
local takenBounties = {}
local completedBounties = {}

function BountyBoardUI:createCategories()
    for k,v in pairs(categoryDefs) do 
        local cat = BountyBoardCategoryUI:new(0, 0, self.width, self.panel.height - self.panel.tabHeight);
        cat:initialise();
        cat:setAnchorRight(true)
        cat:setAnchorBottom(true)
        local catName = v
        self.panel:addView(catName, cat);
        cat.parent = self;
        cat.bounties:addItem(bounty.name,bounty);
        table.insert(tempCategories,cat)
    end
end

function BountyBoardUI:createChildren()
    ISCollapsableWindow.createChildren(self);
    local th = self:titleBarHeight();
    local rh = self.resizable and self:resizeWidgetHeight() or 0
    self.panel = ISTabPanel:new(0, th, self.width, self.height-th-rh-BountyBoardUI.bottomInfoHeight);
    self.panel:initialise();
    self.panel:setAnchorRight(true)
    self.panel:setAnchorBottom(true)
    self.panel.borderColor = { r = 0, g = 0, b = 0, a = 0};
    self.panel.onActivateView = self.onActivateView;
    self.panel.target = self;
    self.panel:setEqualTabWidth(false)
    self:addChild(self.panel);
    self:createCategories()


    self.newButton = ISButton:new(0, self.height-BountyBoardUI.bottomInfoHeight-20-15, 50,25,"New Bounty",self, BountyBoardUI.newBounty);
    self.newButton:initialise()
    self:addChild(self.newButton);

    self.acceptButton = ISButton:new(0, self.height-BountyBoardUI.bottomInfoHeight-20-15, 50,25,"Accept",self, BountyBoardUI.acceptBounty);
    self.acceptButton:initialise()
    self:addChild(self.acceptButton);

    self.noteRichText = ISRichTextLayout:new(self.width)
	self.noteRichText:setMargins(40, 0, 0, 0)
	self.noteRichText.textDirty = true
end


function BountyBoardUI:newBounty()
    print("NewBounty")
    NewBountyUI:showNewBountyUI()
end

function BountyBoardUI:acceptBounty()
    print("Accepted")
    for i=#tempCategories,1,-1 do
        self.panel:removeView(tempCategories[i]);
    end
    tempCategories = {}
    for k,v in pairs(categoryDefs) do 
        local cat = BountyBoardCategoryUI:new(0, 0, self.width, self.panel.height - self.panel.tabHeight, self);
        cat:initialise();
        cat:setAnchorRight(true)
        cat:setAnchorBottom(true)
        local catName = v
        self.panel:addView(catName, cat);
        cat.parent = self;
        cat.bounties:addItem(bounty.name,bounty);
        table.insert(tempCategories,cat)
    end
end

function BountyBoardUI:getSelectedBounty()
    local selectedRow = self.panel.activeView.view.bounties
    if not selectedRow or selectedRow.selected == 0 then return nil end
    return selectedRow.items[selectedRow.selected].item
end

function BountyBoardUI:render()
    ISCollapsableWindow.render(self);
    local bounty = self:getSelectedBounty()
    self.acceptButton:setVisible(false);
    if not bounty then return end;
    local x = self:getWidth()/3 + 80;
    local y = 110;
    self:drawText(bounty.name , x + 32 + 15, y, 1,1,1,1, UIFont.Large);
    self:drawText("Need: "..bounty.requestedItem , x + 32 + 15, y+25, 1,1,1,1, UIFont.Medium);
    self:drawText("Reward: "..bounty.reward , x + 32 + 15, y+40, 1,1,1,1, UIFont.Medium);

    local noteX = self:getWidth() / 3 + 10
    local noteWidth = self.width - 10 - noteX
    if noteWidth ~= self.noteRichText.width then
        self.noteRichText:setWidth(noteWidth)
        self.noteRichText.textDirty = true
    end
    self.noteRichText:setText(bounty.description)
    local noteY = self:getHeight()- 400
    self.noteRichText:render(noteX-10, noteY, self)
    self.acceptButton:setX(x + 150);
    self.acceptButton:setY(noteY+self.noteRichText.height+30);
    self.acceptButton:setVisible(true);

    self.newButton:setX(100);
    self.newButton:setY(60);
    self.newButton:setVisible(true);
end

local function OnFillWorldObjectContextMenu(player, context, worldobjects, test)
    context:addOption("Bounty Board", worldobjects, showBountyBoard, clickedSquare, nil);
end

Events.OnFillWorldObjectContextMenu.Add(OnFillWorldObjectContextMenu);

function BountyBoardUI:new(x, y, width, height, player)
    local o = {}
    if x == 0 and y == 0 then
        x = (getCore():getScreenWidth() / 2) - (width / 2);
        y = (getCore():getScreenHeight() / 2) - (height / 2);
    end
    o = ISCollapsableWindow:new(x, y, width, height);
    setmetatable(o, self)
    self.__index = self
    o.minimumWidth = 800
    o.minimumHeight = 600
    o.x = x;
    o.y = y;
    o.player = player;
    o.playerNum = player:getPlayerNum();
    o.borderColor = {r=0.4, g=0.4, b=0.4, a=1};
    o.backgroundColor = {r=0, g=0, b=0, a=0.8};
    o.width = width;
    o.height = height;
    o.anchorLeft = true;
    o.anchorRight = false;
    o.anchorTop = true;
    o.anchorBottom = false;
    o.pin = true;
    o.isCollapsed = false;
    o.collapseCounter = 0;
    o.title = "Bounty Board";
    o.resizable = false;
    o.drawFrame = true;
    o.currentTile = nil;
    o.richtext = nil;
    o.overrideBPrompt = true;
    o.subFocus = nil;
    o.hotKeyPanels = {};
    o.isJoypadWindow = false;
    return o
end