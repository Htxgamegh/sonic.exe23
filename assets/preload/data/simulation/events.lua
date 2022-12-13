-- making this because for some reason the flash event doesnt work.
function onStepHit()
    if curStep == 960 then
        cameraFlash("camGame", "0xFFFF0000", 0.5, true);
    end
end

function onCreate()
    setProperty('skipCountdown', true)
end