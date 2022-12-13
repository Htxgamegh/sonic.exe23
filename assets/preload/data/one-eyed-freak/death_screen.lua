function onCreate()
	-- setPropertyFromClass('GameOverSubstate', 'characterName', 'none'); 
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Head'); 
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Pervision');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Smeh');

	makeAnimatedLuaSprite("gameoverlmao", "characters/parasite", -150, 0);
	addAnimationByPrefix("gameoverlmao", "dies", "bf", 24, false);
	addAnimationByPrefix("gameoverlmao", "death", "blue 000", 24, false);
	addAnimationByPrefix("gameoverlmao", "loop", "bf", 24, true);
	objectPlayAnimation("gameoverlmao", "death", true);
	setScrollFactor("gameoverlmao", 0, 0);
end

function onUpdatePost(elapsed)
	if getProperty("health") == 0 then
		setProperty("camGame.zoom", 0.65);
		setPropertyFromClass("FlxG", "camera.zoom", 0.65);
	end
end

function onGameOver()
	setProperty("camGame.zoom", 0.65);
	setPropertyFromClass("FlxG", "camera.zoom", 0.65);
	return Function_Continue;
end

function onGameOverStart()
	setProperty("camGame.zoom", 0.65);
	setPropertyFromClass("FlxG", "camera.zoom", 0.65);
	addLuaSprite("gameoverlmao", true);
	objectPlayAnimation("gameoverlmao", "dies", true);
	setPropertyFromClass('GameOverSubstate', 'instance.boyfriend.alpha', 0);
	cameraFlash("camGame", "0xFFFF0000", 1, true);
	runTimer("loopStart", 2.5);
end

function onTimerCompleted(tag)
	if tag == "loopStart" then
		objectPlayAnimation("gameoverlmao", "loop", true);
	end
end

function onGameOverConfirm(exit)
	if exit then
		objectPlayAnimation("gameoverlmao", "death", true);
		setProperty("gameoverlmao.x", -475);
		setProperty("gameoverlmao.y", -175);
	end
end