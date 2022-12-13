function onCreate()
	-- background shit
	

	-- removing everthing bc it's laggy af and eats memory.

	makeLuaSprite("tdom", "Sark/bg", -330, -330);
	scaleObject("tdom", 1.1, 1.1);
	addLuaSprite("tdom", false);
	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end