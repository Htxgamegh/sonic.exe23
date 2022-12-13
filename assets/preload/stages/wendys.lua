function onCreate()
	-- background shit
	makeLuaSprite('background', 'wendys/background', -700, -250);
	setLuaSpriteScrollFactor('background', 0.9, 0.9);
	scaleObject('background', 2, 2);

	addLuaSprite('background', false);


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end