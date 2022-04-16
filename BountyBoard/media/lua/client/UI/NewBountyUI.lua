require "ISUI/ISCollapsableWindow"

NewBountyUI = ISCollapsableWindow:derive("NewBountyUI");
NewBountyUI.instance = nil;
NewBountyUI.smallFontHeight = getTextManager():getFontHeight(UIFont.Small)
NewBountyUI.SMALL_FONT_HGT = getTextManager():getFontFromEnum(UIFont.Small):getLineHeight()
NewBountyUI.bottomInfoHeight = NewBountyUI.smallFontHeight * 2

function NewBountyUI:showNewBountyUI(_object, _x, _y)
    if NewBountyUI.instance==nil then
        NewBountyUI.instance = NewBountyUI:new (0, 0, 400, 300, getPlayer());
        NewBountyUI.instance:initialise();
        NewBountyUI.instance:instantiate();
    end
    NewBountyUI.instance.pinButton:setVisible(false)
    NewBountyUI.instance.collapseButton:setVisible(false)
    NewBountyUI.instance:addToUIManager();
    NewBountyUI.instance:setVisible(true);
    return NewBountyUI.instance;
end

function NewBountyUI:onActivateView(viewName)
    print("onActivateView")
end


function NewBountyUI:createChildren()
    ISCollapsableWindow.createChildren(self);
    local th = self:titleBarHeight();
    local rh = self.resizable and self:resizeWidgetHeight() or 0
    local fontHgtSmall = self.SMALL_FONT_HGT
    local entryHgt = fontHgtSmall + 2 * 2
    local bountyTitleX = 30
    local bountyTitleY = 40
    self.bountyTitleLabel = ISLabel:new(bountyTitleX, bountyTitleY, entryHgt, "Title:",1,1,1,1,UIFont.Small, true);
    self:addChild(self.bountyTitleLabel);

    local width = 200
    self.bountyTitleEntry = ISTextEntryBox:new("", bountyTitleX+70, bountyTitleY, width, fontHgtSmall);
    self.bountyTitleEntry:initialise();
    self.bountyTitleEntry:instantiate();
    self.bountyTitleEntry:setText("");
    self.bountyTitleEntry:setClearButton(true);
    self:addChild(self.bountyTitleEntry);
    self.lastText = self.bountyTitleEntry:getInternalText();

    self.bountyDescriptionLabel = ISLabel:new(bountyTitleX, bountyTitleY+30, entryHgt, "Description:",1,1,1,1,UIFont.Small, true);
    self:addChild(self.bountyDescriptionLabel);

    self.bountyDescriptionEntry = ISTextEntryBox:new("", bountyTitleX+70, bountyTitleY+30, width, 100);
    self.bountyDescriptionEntry:initialise();
    self.bountyDescriptionEntry:instantiate();
    self.bountyDescriptionEntry:setMultipleLine(true);
    self.bountyDescriptionEntry.javaObject:setMaxLines(7);
    self.bountyDescriptionEntry.javaObject:setMaxTextLength(250);
    self.bountyDescriptionEntry:setText("");
    self.bountyDescriptionEntry:setClearButton(false);
    self:addChild(self.bountyDescriptionEntry);

    self.bountyRewardLabel = ISLabel:new(bountyTitleX, bountyTitleY+140, entryHgt, "Reward:",1,1,1,1,UIFont.Small, true);
    self:addChild(self.bountyRewardLabel);

    self.bountyRewardCombo = ISComboBox:new(bountyTitleX+70, bountyTitleY+140, width, 20)
	self.bountyRewardCombo.font = UIFont.Small
	self.bountyRewardCombo:initialise()
	self.bountyRewardCombo:instantiate()
	self:addChild(self.bountyRewardCombo)
	
	self.bountyRewardCombo:addOption("Muldraugh",{})
	self.bountyRewardCombo:addOption("Westpoint",{})

end

function NewBountyUI:new(x, y, width, height, player)
    local o = {}
    if x == 0 and y == 0 then
        x = (getCore():getScreenWidth() / 2) - (width / 2);
        y = (getCore():getScreenHeight() / 2) - (height / 2);
    end
    o = ISCollapsableWindow:new(x, y, width, height);
    setmetatable(o, self)
    self.__index = self
    o.minimumWidth = 400
    o.minimumHeight = 300
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
    o.title = "New Bounty";
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