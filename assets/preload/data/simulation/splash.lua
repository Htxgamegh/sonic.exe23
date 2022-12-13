function onCreate()
    makeLuaSprite("SIMsplash", "Exetior/splash", 0, 0);
    setObjectCamera("SIMsplash", "other");
    setProperty("SIMsplash.alpha", 0);
    addLuaSprite("SIMsplash", false);
    setProperty("camGame.visible", false);
    setProperty("camHUD.visible", false);
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and not seenCutscene then --Block the first countdown
		doTweenAlpha("splashIn", "SIMsplash", 1, 1, "linear");
		allowCountdown = true;
		return Function_Stop;
	end
    if seenCutscene then
        setProperty("camGame.visible", true);
        setProperty("camHUD.visible", true);
    end
	return Function_Continue;
end

function onTweenCompleted(tag)
    if tag == "splashIn" then
        runTimer("splashDelay", 3);
    end
    if tag == "splashOut" then
        setProperty("camGame.visible", true);
        setProperty("camHUD.visible", true);
        runTimer("huh", 0.25);
    end
end

function onTimerCompleted(tag)
    if tag == "splashDelay" then
        doTweenAlpha("splashOut", "SIMsplash", 0, 3, "linear");
    end
    if tag == "huh" then
        startCountdown();
    end
end