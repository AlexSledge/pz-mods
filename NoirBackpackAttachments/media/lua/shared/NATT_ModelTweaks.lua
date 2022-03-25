local function Tweaker(model,property,value)
	local modelScript = ScriptManager.instance:getModelScript(model)
	if modelScript  then 
		local name = modelScript:getName();
		modelScript:Load(name, "{".. property .. " = " .. value .. ",}");
	end
end

local sleepingbags = {
	sleepingbag = 0.6,
	sleepingbagG = 0.6,
	sleepingbagR = 0.6,
	sleepingbagO = 0.6,
	sleepingbagBK = 0.6,
	sleepingbagLP = 0.6,
	sleepingbagB = 0.6,	
}

if getActivatedMods():contains(NATTmods.Sleepingbag) then
	for k,v in pairs(sleepingbags) do 
		Tweaker(k,"scale",v)
	end
end
