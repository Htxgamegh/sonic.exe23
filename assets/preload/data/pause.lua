canControl = false;
intransition = true;
curSelected = '';
function onCreate()
	makeLuaSprite('black', 'BlackFlash', -100, -100);
	scaleObject('black', 1.2, 1.2);
	setScrollFactor('black', 0, 0);
	setObjectCamera('black', 'other');
	setProperty('black.alpha', 0); --0.6
	addLuaSprite('black', false)

    makeLuaSprite("topb", "", 0, -1000)
	makeGraphic('topb',1280, 75,'000000')
    setObjectCamera("topb", "other")
    setProperty("topb.antialiasing", false)
	addLuaSprite('topb')

    makeLuaSprite("bottomb", "", 0, 1630)
	makeGraphic('bottomb',1280, 200,'000000')
    setObjectCamera("bottomb", "other")
    setProperty("bottomb.antialiasing", false)
	addLuaSprite('bottomb')

    makeAnimatedLuaSprite("bottom", "S1F Pause/Pause", 0, 1630)
    addAnimationByPrefix("bottom", "bottom", "bottom", 24, true)
    setObjectCamera("bottom", "other")
    scaleObject("bottom", 1280, 3.5)
    setProperty("bottom.antialiasing", false)
	addLuaSprite('bottom')

    makeAnimatedLuaSprite("top", "S1F Pause/Pause", 0, -1065)
    addAnimationByPrefix("top", "top", "top", 24, true)
    setObjectCamera("top", "other")
    scaleObject("top", 1280, 3.5)
    setProperty("top.antialiasing", false)
	addLuaSprite('top')

    makeAnimatedLuaSprite("Empty", "S1F Pause/Pause", 73, -1024)
    addAnimationByPrefix("Empty", "Empty", "Empty", 24, true)
    setObjectCamera("Empty", "other")
    scaleObject("Empty", 110, 3.5)
    setProperty("Empty.antialiasing", false)
	addLuaSprite('Empty')

    makeLuaSprite("fill", "", 73, -1026)
	makeGraphic('fill',2, 16,'ffffff')
    setObjectCamera("fill", "other")
    scaleObject("fill", 165, 2.3)
    setProperty("fill.antialiasing", false)
	addLuaSprite('fill')

    makeAnimatedLuaSprite("Mid", "S1F Pause/Pause", 85, -1024)
    addAnimationByPrefix("Mid", "Mid", "Mid", 24, true)
    setObjectCamera("Mid", "other")
    scaleObject("Mid", 100, 3)
    setProperty("Mid.antialiasing", false)
	addLuaSprite('Mid')

    makeAnimatedLuaSprite("Open", "S1F Pause/Pause", 73, -1024)
    addAnimationByPrefix("Open", "Open", "Open", 24, true)
    setObjectCamera("Open", "other")
    scaleObject("Open", 3, 3)
    setProperty("Open.antialiasing", false)
	addLuaSprite('Open')

    makeAnimatedLuaSprite("Closed", "S1F Pause/Pause", 382, -1024)
    addAnimationByPrefix("Closed", "Closed", "Closed", 24, true)
    setObjectCamera("Closed", "other")
    scaleObject("Closed", 3, 3)
    setProperty("Closed.antialiasing", false)
	addLuaSprite('Closed')

    makeAnimatedLuaSprite("chain", "S1F Pause/Pause", 1012, -1018)
    addAnimationByPrefix("chain", "chain", "chain", 24, true)
    setObjectCamera("chain", "other")
    scaleObject("chain", 3, 3)
    setProperty("chain.antialiasing", false)
	addLuaSprite('chain')

    makeAnimatedLuaSprite("num", "S1F Pause/Pause", 1168, -1045)
    addAnimationByPrefix("num", "0", "0", 24, true)
	addAnimationByPrefix("num", "1", "1", 24, true)
	addAnimationByPrefix("num", "2", "2", 24, true)
	addAnimationByPrefix("num", "3", "3", 24, true)
	addAnimationByPrefix("num", "4", "4", 24, true)
	addAnimationByPrefix("num", "5", "5", 24, true)
	addAnimationByPrefix("num", "6", "6", 24, true)
	addAnimationByPrefix("num", "7", "7", 24, true)
	addAnimationByPrefix("num", "8", "8", 24, true)
	addAnimationByPrefix("num", "9", "9", 24, true)
    setObjectCamera("num", "other")
    scaleObject("num", 3, 3)
    setProperty("num.antialiasing", false)
	addLuaSprite('num')
	--23 difference
    makeAnimatedLuaSprite("num1", "S1F Pause/Pause", 1145, -1045)
    addAnimationByPrefix("num1", "0", "0", 24, true)
	addAnimationByPrefix("num1", "1", "1", 24, true)
	addAnimationByPrefix("num1", "2", "2", 24, true)
	addAnimationByPrefix("num1", "3", "3", 24, true)
	addAnimationByPrefix("num1", "4", "4", 24, true)
	addAnimationByPrefix("num1", "5", "5", 24, true)
	addAnimationByPrefix("num1", "6", "6", 24, true)
	addAnimationByPrefix("num1", "7", "7", 24, true)
	addAnimationByPrefix("num1", "8", "8", 24, true)
	addAnimationByPrefix("num1", "9", "9", 24, true)
    setObjectCamera("num1", "other")
    scaleObject("num1", 3, 3)
    setProperty("num1.antialiasing", false)
	addLuaSprite('num1')
	setProperty('num1.alpha', 0)

    makeAnimatedLuaSprite("num2", "S1F Pause/Pause", 1122, -1045)
    addAnimationByPrefix("num2", "0", "0", 24, true)
	addAnimationByPrefix("num2", "1", "1", 24, true)
	addAnimationByPrefix("num2", "2", "2", 24, true)
	addAnimationByPrefix("num2", "3", "3", 24, true)
	addAnimationByPrefix("num2", "4", "4", 24, true)
	addAnimationByPrefix("num2", "5", "5", 24, true)
	addAnimationByPrefix("num2", "6", "6", 24, true)
	addAnimationByPrefix("num2", "7", "7", 24, true)
	addAnimationByPrefix("num2", "8", "8", 24, true)
	addAnimationByPrefix("num2", "9", "9", 24, true)
    setObjectCamera("num2", "other")
    scaleObject("num2", 3, 3)
    setProperty("num2.antialiasing", false)
	addLuaSprite('num2')
	setProperty('num2.alpha', 0)

    makeAnimatedLuaSprite("num3", "S1F Pause/Pause", 1099, -1045)
    addAnimationByPrefix("num3", "0", "0", 24, true)
	addAnimationByPrefix("num3", "1", "1", 24, true)
	addAnimationByPrefix("num3", "2", "2", 24, true)
	addAnimationByPrefix("num3", "3", "3", 24, true)
	addAnimationByPrefix("num3", "4", "4", 24, true)
	addAnimationByPrefix("num3", "5", "5", 24, true)
	addAnimationByPrefix("num3", "6", "6", 24, true)
	addAnimationByPrefix("num3", "7", "7", 24, true)
	addAnimationByPrefix("num3", "8", "8", 24, true)
	addAnimationByPrefix("num3", "9", "9", 24, true)
    setObjectCamera("num3", "other")
    scaleObject("num3", 3, 3)
    setProperty("num3.antialiasing", false)
	addLuaSprite('num3')
	setProperty('num3.alpha', 0)

    makeAnimatedLuaSprite("paused", "S1F Pause/Pause", 110, 1559)
    addAnimationByPrefix("paused", "PAUSED", "PAUSED", 24, true)
    setObjectCamera("paused", "other")
    scaleObject("paused", 3, 3)
    setProperty("paused.antialiasing", false)
	addLuaSprite('paused')

    makeAnimatedLuaSprite("orb", "S1F Pause/Pause", 1881, 240)
    addAnimationByPrefix("orb", "orb", "orb", 24, true)
    setObjectCamera("orb", "other")
    scaleObject("orb", 3, 3)
    setProperty("orb.antialiasing", false)
	addLuaSprite('orb')

    makeAnimatedLuaSprite("resume", "S1F Pause/Pause", 902, 390)
    addAnimationByPrefix("resume", "Resume", "Resume0", 24, true)
	addAnimationByPrefix("resume", "ResumeSelected", "ResumeSelected", 24, true)
    setObjectCamera("resume", "other")
    scaleObject("resume", 3, 3)
    setProperty("resume.antialiasing", false)
	addLuaSprite('resume')
	setProperty('resume.alpha', 0)
	-- X has a 47 difference and Y has a 120 difference
    makeAnimatedLuaSprite("restart", "S1F Pause/Pause", 855, 510)
    addAnimationByPrefix("restart", "Restart", "Restart0", 24, true)
	addAnimationByPrefix("restart", "RestartSelected", "RestartSelected", 24, true)
    setObjectCamera("restart", "other")
    scaleObject("restart", 3, 3)
    setProperty("restart.antialiasing", false)
	addLuaSprite('restart')
	setProperty('restart.alpha', 0)

    makeAnimatedLuaSprite("exit", "S1F Pause/Pause", 1027, 630)
    addAnimationByPrefix("exit", "Exit", "Exit0", 24, true)
	addAnimationByPrefix("exit", "ExitSelected", "ExitSelected", 24, true)
    setObjectCamera("exit", "other")
    scaleObject("exit", 3, 3)
    setProperty("exit.antialiasing", false)
	addLuaSprite('exit')
	setProperty('exit.alpha', 0)

    makeAnimatedLuaSprite("pointer", "S1F Pause/Pause", 1197, 390)
    addAnimationByPrefix("pointer", "Pointer", "Pointer", 24, true)
    setObjectCamera("pointer", "other")
    scaleObject("pointer", 3, 3)
    setProperty("pointer.antialiasing", false)
	addLuaSprite('pointer')
	setProperty('pointer.alpha', 0)

		setProperty('orb.alpha', 0)
		setProperty('topb.alpha', 0)
		setProperty('top.alpha', 0)
		setProperty('chain.alpha', 0)
		setProperty('Empty.alpha', 0)
		setProperty('fill.alpha', 0)
		setProperty('Mid.alpha', 0)
		setProperty('Closed.alpha', 0)
		setProperty('Open.alpha', 0)
		setProperty('bottomb.alpha', 0)
		setProperty('bottom.alpha', 0)
		setProperty('paused.alpha', 0)
end

function onUpdatePost(elapsed)
	updateCombo();
end

function updateCombo()
-- debugPrint(getProperty('combo'))
	if getProperty('combo') <= 9 then
	objectPlayAnimation('num', string.sub(getProperty('combo'), 1, 1), true)
	setProperty('num1.alpha', 0)
	setProperty('num2.alpha', 0)
	setProperty('num3.alpha', 0)
	end

	if getProperty('combo') <= 99 and getProperty('combo') >= 10 then
	objectPlayAnimation('num', string.sub(getProperty('combo'), 2, 2), true)
	objectPlayAnimation('num1', string.sub(getProperty('combo'),1, 1), true)
	setProperty('num1.alpha', 1)
	setProperty('num2.alpha', 0)
	setProperty('num3.alpha', 0)
	end

	if getProperty('combo') <= 999 and getProperty('combo') >= 100 then
	objectPlayAnimation('num', string.sub(getProperty('combo'), 3, 3), true)
	objectPlayAnimation('num1', string.sub(getProperty('combo'),2, 2), true)
	objectPlayAnimation('num2', string.sub(getProperty('combo'),1, 1), true)
	setProperty('num1.alpha', 1)
	setProperty('num2.alpha', 1)
	setProperty('num3.alpha', 0)
	end

	if getProperty('combo') <= 9999 and getProperty('combo') >= 1000 then
	objectPlayAnimation('num', string.sub(getProperty('combo'),4, 4), true)
	objectPlayAnimation('num1', string.sub(getProperty('combo'),3, 3), true)
	objectPlayAnimation('num2', string.sub(getProperty('combo'),2, 2), true)
	objectPlayAnimation('num3', string.sub(getProperty('combo'),1, 1), true)
	setProperty('num1.alpha', 1)
	setProperty('num2.alpha', 1)
	setProperty('num3.alpha', 1)
	end
end

function onOpenPause()
	if not getProperty("pauseMenu.paused") then
		playSound('S1F Pause/LampPost', 0.75)
		-- playMusic(randsongmen, 1, true)
		-- doTweenX('songBARTween', 'songBARp', -700, 1, 'linear')
		-- doTweenX('songTITLETween', 'songmennamep', 50, 1, 'linear')
		-- doTweenX('songMIXTween', 'mixnamep', 100, 1, 'linear')
		-- doTweenX('songGAMETween', 'gamenamep', 100, 1, 'linear')
		curSelected = 'resume';
		doTweenX('orbX', 'orb', 881, 0.5, 'linear')
		doTweenY('topbY', 'topb', 0, 0.5, 'linear')
		doTweenY('topY', 'top', 65, 0.5, 'linear')
		doTweenY('splashY', 'pauseMenu.splash', 0, 0.5, 'linear')
		doTweenY('chainY', 'chain', 18, 0.5, 'linear')
		doTweenY('EmptyY', 'Empty', 24, 0.5, 'linear')
		doTweenY('fillY', 'fill', 26, 0.5, 'linear')
		doTweenY('MidY', 'Mid', 24, 0.5, 'linear')
		doTweenY('ClosedY', 'Closed', 24, 0.5, 'linear')
		doTweenY('OpenY', 'Open', 24, 0.5, 'linear')
		doTweenY('numY', 'num', 45, 0.5, 'linear')
		doTweenY('num1Y', 'num1', 45, 0.5, 'linear')
		doTweenY('num2Y', 'num2', 45, 0.5, 'linear')
		doTweenY('num3Y', 'num3', 45, 0.5, 'linear')
		doTweenY('bottombY', 'bottomb', 630, 0.5, 'linear')
		doTweenY('bottomY', 'bottom', 630, 0.5, 'linear')
		doTweenY('pausedY', 'paused', 559, 0.5, 'linear')
		setProperty('orb.alpha', 1)
		setProperty('topb.alpha', 1)
		setProperty('top.alpha', 1)
		setProperty('pauseMenu.splash.alpha', 1)
		setProperty('chain.alpha', 1)
		setProperty('Empty.alpha', 1)
		setProperty('fill.alpha', 1)
		setProperty('Mid.alpha', 1)
		setProperty('Closed.alpha', 1)
		setProperty('Open.alpha', 1)
		setProperty('bottomb.alpha', 1)
		setProperty('bottom.alpha', 1)
		setProperty('paused.alpha', 1)
		objectPlayAnimation('resume', 'ResumeSelected', true)
		objectPlayAnimation('exit', 'Exit', true)
		objectPlayAnimation('restart', 'Restart', true)

		runTimer('animationmoment', 0.5, 1);
		runTimer('notransition', 0.5, 1);
		doTweenAlpha('blackalpha', 'black', 0.6, 0.5, 'linear');
		setProperty("pauseMenu.paused", true);
	end
end

function onUpdate(elapsed)
	scaleObject('fill', 165 * getProperty("songPercent"), 2.3)

	if keyJustPressed("up") and canControl and curSelected == 'resume' and not intransition then
		objectPlayAnimation('exit', 'ExitSelected', true)
		objectPlayAnimation('resume', 'Resume', true)
		objectPlayAnimation('restart', 'Restart', true)
		playSound('S1F Pause/ScoreAdd', 0.75)
		setProperty('pointer.y', getProperty('exit.y'))
		curSelected = 'exit'
		intransition = true
		runTimer('notransition', 0.1, 1)
	end
	if keyJustPressed("down") and canControl and curSelected == 'resume' and not intransition then
		objectPlayAnimation('restart', 'RestartSelected', true)
		objectPlayAnimation('exit', 'Exit', true)
		objectPlayAnimation('resume', 'Resume', true)
		playSound('S1F Pause/ScoreAdd', 0.75)
		setProperty('pointer.y', getProperty('restart.y'))
		curSelected = 'restart'
		intransition = true
		runTimer('notransition', 0.1, 1)
	end
	if keyJustPressed("up") and canControl and curSelected == 'restart' and not intransition then
		objectPlayAnimation('resume', 'ResumeSelected', true)
		objectPlayAnimation('exit', 'Exit', true)
		objectPlayAnimation('restart', 'Restart', true)
		playSound('S1F Pause/ScoreAdd', 0.75)
		setProperty('pointer.y', getProperty('resume.y'))
		curSelected = 'resume'
		intransition = true
		runTimer('notransition', 0.1, 1)
	end
	if keyJustPressed("down") and canControl and curSelected == 'restart' and not intransition then
		objectPlayAnimation('exit', 'ExitSelected', true)
		objectPlayAnimation('resume', 'Resume', true)
		objectPlayAnimation('restart', 'Restart', true)
		playSound('S1F Pause/ScoreAdd', 0.75)
		setProperty('pointer.y', getProperty('exit.y'))
		curSelected = 'exit'
		intransition = true
		runTimer('notransition', 0.1, 1)
	end
	if keyJustPressed("up") and canControl and curSelected == 'exit' and not intransition then
		objectPlayAnimation('restart', 'RestartSelected', true)
		objectPlayAnimation('exit', 'Exit', true)
		objectPlayAnimation('resume', 'Resume', true)
		playSound('S1F Pause/ScoreAdd', 0.75)
		setProperty('pointer.y', getProperty('restart.y'))
		curSelected = 'restart'
		intransition = true
		runTimer('notransition', 0.1, 1)
	end
	if keyJustPressed("down") and canControl and curSelected == 'exit' and not intransition then
		objectPlayAnimation('resume', 'ResumeSelected', true)
		objectPlayAnimation('exit', 'Exit', true)
		objectPlayAnimation('restart', 'Restart', true)
		playSound('S1F Pause/ScoreAdd', 0.75)
		setProperty('pointer.y', getProperty('resume.y'))
		curSelected = 'resume'
		intransition = true
		runTimer('notransition', 0.1, 1)
	end

	if keyJustPressed("accept") and canControl then
		playSound('S1F Pause/LampPost', 0.75)
		if curSelected == 'restart' then
			setProperty('restart.alpha', 0)
		elseif curSelected == 'exit' then
			setProperty('exit.alpha', 0)
		elseif curSelected == 'resume' then
			setProperty('resume.alpha', 0)
		end
		setProperty('pointer.alpha', 0)
		nomoregaming();
		canControl = false;
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'notransition' then
		intransition = false;
	end
	if tag == 'animationmoment' then
		canControl = true;
	end
end

function nomoregaming()
	if curSelected == 'resume' then
		setProperty("pauseMenu.paused", false);
		doTweenAlpha('dumb', 'black', 0, 0.25, 'linear');
		setProperty('orb.alpha', 0)
		setProperty('topb.alpha', 0)
		setProperty('top.alpha', 0)
		setProperty('pauseMenu.splash.alpha', 0)
		setProperty('chain.alpha', 0)
		setProperty('Empty.alpha', 0)
		setProperty('fill.alpha', 0)
		setProperty('Mid.alpha', 0)
		setProperty('Closed.alpha', 0)
		setProperty('Open.alpha', 0)
		setProperty('bottomb.alpha', 0)
		setProperty('bottom.alpha', 0)
		setProperty('paused.alpha', 0)
		setProperty("restart.alpha", 0);
		setProperty("exit.alpha", 0);
		setProperty('orb.x', 1881)
		setProperty('topb.y', -1000)
		setProperty('top.y', -1065)
		setProperty('pauseMenu.splash.y', -1000)
		setProperty('chain.y', -1018)
		setProperty('Empty.y', -1024)
		setProperty('fill.y', -1026)
		setProperty('Mid.y', -1024)
		setProperty('Closed.y', -1024)
		setProperty('Open.y', -1024)
		setProperty('bottomb.y', 1630)
		setProperty('bottom.y', 1630)
		setProperty('paused.y', 1559)
		setProperty('num.y', -1045)
		setProperty('num1.y', -1045)
		setProperty('num2.y', -1045)
		setProperty('num3.y', -1045)
		resumeSong(true);
	else
		doTweenAlpha('blackalphaupend', 'black', 1, 1, 'linear');
	end
end

function onTweenCompleted(tag)
 -- if tag == 'songBARTween' then
 -- runTimer('wait', 2);
 -- end
	if tag == 'orbX' then
		setProperty('pointer.alpha', 1)
		setProperty('resume.alpha', 1)
		setProperty('restart.alpha', 1)
		setProperty('exit.alpha', 1)
	end
	if tag == 'exitX' then
		intransition = false
	end

	if tag == 'blackalphaupend' and curSelected == 'restart' then
		restartSong();
	elseif tag == 'blackalphaupend' and curSelected == 'exit' then
		exitSong();
	end

	if tag == 'redXb' then
		setProperty('red.x', -1000)
		setProperty('red.y', -1000)
		setProperty('white.x', -1000)
		setProperty('white.y', -1000)
	end
end