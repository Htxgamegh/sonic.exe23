function onCreate()
	-- background shit
	makeLuaSprite('exetiorbgback', 'Exetior/exetiorbgback', -300, -300);
	setLuaSpriteScrollFactor('exetiorbgback', 0.9, 0.9);
	scaleObject('exetiorbgback', 1.0, 1.0);

	makeLuaSprite('exetiorbgfront-1', 'Exetior/exetiorbgfront-1', -300, 200);
	setLuaSpriteScrollFactor('exetiorbgfront-1', 0.9, 0.9);
	scaleObject('exetiorbgfront-1', 1.0, 1.0);

	addLuaSprite('exetiorbgback', false);
	addLuaSprite('exetiorbgfront-1', false);
	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end