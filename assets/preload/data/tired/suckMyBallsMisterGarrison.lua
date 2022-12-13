function onCreate()
    setProperty("skipCountdown", true);
    setProperty("gf.visible", false);
end

local timeshit = 0;
function onUpdate()
 doTweenY('opponentFloatshit', 'dad', (math.sin(timeshit*5)*40), 0.001, 'linear')
 timeshit = timeshit+0.01
 end

function onStepHit()
doTweenY('dad', 'dadGroup', 300, 0, 'linear');
    if curStep == 201 then
        cameraFlash("camGame", "0xFFFFFFFF", 1, true);
    end
end