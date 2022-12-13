local doDrain = false;
function onStepHit()
    if curStep == 1140 then
        doDrain = true;
    end
end

-- BRO PLEASE FOR THE LOVE OF GODDDDD PLEASE INDENT YOUR CODE :sob: - PurpleInsomnia
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 and doDrain then
        setProperty('health', health- 0.02);
    end
end

function onSongStart()
    function onUpdate(elapsed)
        setTextFont('botplayTxt', 'comic.ttf');
        setTextColor('botplayTxt', '0xE06666');
        setTextString('botplayTxt', "you suck lmao, sark said kys!");
    end
    
end
-- NOTE! Shoutout to frantastic24 for most of this code lol
function onSongStart()
    noteTweenX('oppo0', 0, -1000, 1.5, 'quartInOut')
    noteTweenX('oppo1', 1, -1000, 1.5, 'quartInOut')
    noteTweenX('oppo2', 2, -1000, 1.5, 'quartInOut')
    noteTweenX('oppo3', 3, -1000, 1.5, 'quartInOut')
    noteTweenX('play0', 4, 415, 1, 'quartInOut')
    noteTweenX('play1', 5, 525, 1, 'quartInOut')
    noteTweenX('play2', 6, 635, 1, 'quartInOut')
    noteTweenX('play3', 7, 745, 1, 'quartInOut')
end