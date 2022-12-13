function onCreate()
	-- background shit
	makeLuaSprite('pixelbglol', 'Exetior/pixelbglol', -300, -300);
	setLuaSpriteScrollFactor('pixelbglol', 0.9, 0.9);
	scaleObject('pixelbglol', 1.0, 1.0);

	addLuaSprite('pixelbglol', false);
	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end