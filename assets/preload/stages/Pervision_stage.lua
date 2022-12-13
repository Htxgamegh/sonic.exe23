function onCreate()
	-- background shit
	makeLuaSprite('background', 'Pervision/background2', 0, 0);
	setLuaSpriteScrollFactor('background', 0.9, 0.9);

	makeLuaSprite("floor", "Pervision/floor", 0, -800);
	setScrollFactor("floor", 1, 1);

	makeLuaSprite('wolf', 'Pervision/wolf', 600, 825);
	setLuaSpriteScrollFactor('wolf', 1, 1);
	scaleObject('wolf', 0.8, 0.8);

	addLuaSprite('background', false);
	addLuaSprite("floor", false);
	addLuaSprite('wolf', false);
	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end