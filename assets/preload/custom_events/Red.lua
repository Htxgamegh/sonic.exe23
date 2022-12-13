function onCreate()
	makeLuaSprite('RedVG', 'RedVG', 0, 0);
	setLuaSpriteScrollFactor('RedVG', 0, 0);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('RedVG.scale.x', 1 / defaultCamZoom);
	setProperty('RedVG.scale.y', 1 / defaultCamZoom);
	setProperty('RedVG.alpha', 0.0001);
	addLuaSprite('RedVG', true);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Red" then
		setProperty('RedVG.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'RedVG', 0, 0.5, 'linear');
	end
end