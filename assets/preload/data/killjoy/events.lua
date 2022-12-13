local inSteps = {[0] = 1111, [1] = 2129}
local outSteps = {[0] = 1145, [1] = 1265}
local inStep = 1253;
local otherStep = 2143
function onStepHit()
    for i = 0, 2 do
        if curStep == inSteps[i] then
            triggerEvent("BlackScreen", "true", "");
            cameraFlash("camGame", "0xFFFF0000", 1, true);
        end
        if curStep == outSteps[i] then
            triggerEvent("BlackScreen", "false", "");
            cameraFlash("camGame", "0xFFFF0000", 1, true);
        end
    end
    if curStep == inStep then
        triggerEvent("BlackScreen", "true", "");
    end
    if curStep == otherStep then
        triggerEvent("BlackScreen", "true", "true");
    end
end

function onCreate()
	makeLuaSprite('BlackFlash', 'BlackFlash', 0, 0);
	setGraphicSize("BlackFlash", 1280, 720);
	setObjectCamera("BlackFlash", "hud");
	addLuaSprite('BlackFlash', false);
	setProperty('BlackFlash.visible', false);
end

function onEvent(name, value1, value2)
	if name == 'BlackScreen' then
		if value1 == 'true' then
			if value2 == "true" then
				setObjectCamera("BlackFlash", "other");
			else
				setObjectCamera("BlackFlash", "hud");
			end
			setProperty('BlackFlash.visible', true);
		end
		if value1 == 'false' then
			setProperty('BlackFlash.visible', false);
		end
	end
end