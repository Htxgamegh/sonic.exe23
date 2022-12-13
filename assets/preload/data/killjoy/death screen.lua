function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'deth2'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'none'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'reeheeheeheehee'); --put in mods/music/

	makeLuaSprite("wutduhhell", "bruh", 0, 0);
	setScrollFactor("wutduhhell", 0, 0);
	setProperty("wutduhhell.alpha", 0);
end

function onUpdatePost(elapsed)
	if getProperty("health") == 0 then
		setProperty("camGame.zoom", 1);
		setPropertyFromClass("FlxG", "camera.zoom", 1);
	end
end

function onGameOver()
	setProperty("camGame.zoom", 1);
	setPropertyFromClass("FlxG", "camera.zoom", 1);
	return Function_Continue;
end

function onGameOverStart()
	setPropertyFromClass('GameOverSubstate', 'instance.boyfriend.alpha', 0);
	addLuaSprite("wutduhhell", true);
	cameraFlash("camGame", "0xFFFF0000", 1, true);
	runTimer("cock", 2.5);
end

function onTimerCompleted(tag)
	if tag == "cock" then
		doTweenAlpha("doodoofart", "wutduhhell", 1, 2.5, "linear");
		playSound("BroIsSpeakingEnchantmentTable", 1, "woooo");
	end
end

function onGameOverConfirm(exit)
	if exit then
		stopSound("woooo");
		playSound("endGameOver", 0.7);
		setProperty("wutduhhell.visible", false);
		cameraFlash("camGame", "0xFFFF0000", 1, true);
	end
end