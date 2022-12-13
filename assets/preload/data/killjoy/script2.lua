function onCreate()
	makeAnimatedLuaSprite('rain', 'rain', -510, -300);
	setLuaSpriteScrollFactor('rain', 0.3, 0.3);
	scaleObject('rain', 2, 2);

	makeAnimatedLuaSprite('splash', 'splash', -510, -350);

	addLuaSprite('splash', false);
	addAnimationByPrefix('splash', 'loop', 'splash loop', 15, true);
	addLuaSprite('rain', true);
	addAnimationByPrefix('rain', 'loop', 'rain loop', 15, true);
end

function onCreate()
    setProperty('skipCountdown', true)
end
