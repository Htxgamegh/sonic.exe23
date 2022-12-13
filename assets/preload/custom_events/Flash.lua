function onCreate()
	makeLuaSprite('flash', 'flash', 0, 0);
	setObjectCamera("flash", "hud");
	setProperty("flash.alpha", 0);
	addLuaSprite('flash', true);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Flash" then
		setProperty('flash.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'flash', 0, 0.5, 'linear');
	end
end