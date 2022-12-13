function onCreate()
	makeLuaSprite('Static1', 'Static1', 0, 0);
	setLuaSpriteScrollFactor('Static1', 0, 0);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('Static1.scale.x', 1 / defaultCamZoom);
	setProperty('Static1.scale.y', 1 / defaultCamZoom);
	setProperty('Static1.alpha', 0.0001);
	addLuaSprite('Static1', true);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Glitch" then
		setProperty('Static1.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'Static1', 0, 0.5, 'linear');
	end
end