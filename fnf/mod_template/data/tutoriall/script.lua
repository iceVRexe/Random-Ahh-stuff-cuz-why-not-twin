local videoStarted = false

function onStartCountdown()
    -- Triggers the video before the "3, 2, 1, Go!" countdown begins
    if not videoStarted and isStoryMode then -- 'isStoryMode' ensures it only plays during Week play
        videoStarted = true
        startVideo('warning', false) -- Set to 'true' if you want players to be able to skip it
        return Function_Stop -- Freezes the countdown while the video plays
    end
    return Function_Continue
end
