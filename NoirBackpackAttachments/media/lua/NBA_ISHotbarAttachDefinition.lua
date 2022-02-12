require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end


local SchoolbagBottleRight = {
	type = "SchoolbagBottleRight",
	name = "Watter Bottle",
	animset = "back",
	attachments = {
		Bottle = "Schoolbag Bottle",
	},
}
table.insert(ISHotbarAttachDefinition, Schoolbag);