function onCreate()
	makeLuaSprite('BlackFlash', 'BlackFlash', 0, 0);
	setGraphicSize("BlackFlash", 1280, 720);
	setObjectCamera("BlackFlash", "hud");
	addLuaSprite('BlackFlash', false);
	setProperty('BlackFlash.visible', false);
end

function onEvent(name, value1, value2)
	if name == 'BlackOut' then
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