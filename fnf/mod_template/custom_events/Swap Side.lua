local originalOpponentX = {}
local originalPlayerX = {}

function onCreatePost()
    for i = 0, 3 do
        originalOpponentX[i] = getPropertyFromGroup('strumLineNotes', i, 'x')
        originalPlayerX[i] = getPropertyFromGroup('strumLineNotes', i + 4, 'x')
    end
end
function onEvent(name, value1, value2)
    if name ~= 'Swap Side' then return end
    local duration = tonumber(value2)
    if duration == nil or duration <= 0 then
    duration = 0.5
    end
    for i = 0, 3 do
    local opponentTarget = originalOpponentX[i]
    local playerTarget = originalPlayerX[i]
    if value1 == 'on' then
    opponentTarget = originalPlayerX[i]
    playerTarget = originalOpponentX[i]
    end
    noteTweenX('swapOpp'..i, i, opponentTarget, duration, 'quadInOut')
    noteTweenX('swapPlayer'..i, i + 4, playerTarget, duration, 'quadInOut')
    end
end