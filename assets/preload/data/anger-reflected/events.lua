function onCreate()
	makeLuaSprite('BlackFlash', 'BlackFlash', 0, 0);
	setGraphicSize("BlackFlash", 1280, 720);
	setObjectCamera("BlackFlash", "hud");
	addLuaSprite('BlackFlash', true);
end

function onSongStart()
    doTweenAlpha("huh", "BlackFlash", 0, 12.8, "linear");
end