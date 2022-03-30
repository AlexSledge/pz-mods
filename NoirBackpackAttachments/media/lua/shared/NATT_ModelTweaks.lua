local function Tweaker(model,property,value)
	local modelScript = ScriptManager.instance:getModelScript(model)
	if modelScript  then 
		local name = modelScript:getName();
		modelScript:Load(name, "{".. property .. " = " .. value .. ",}");
	end
end

local sleepingbags = {
	sleepingbag = 0.65,
	sleepingbagG = 0.65,
	sleepingbagR = 0.65,
	sleepingbagR = 0.65,
	sleepingbagO = 0.65,
	sleepingbagBK = 0.65,
	sleepingbagLB = 0.65,
	sleepingbagP = 0.65,	
}

if isModActived(NATTmods.PwSleepingbags) then
	for k,v in pairs(sleepingbags) do 
		Tweaker(k,"scale",v)
	end
end
