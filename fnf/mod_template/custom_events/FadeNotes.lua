local originalAlpha = {}

function onCreatePost()
    for i = 0, 7 do
        originalAlpha[i] = getPropertyFromGroup('strumLineNotes', i, 'alpha')
    end
end
function onEvent(name, value1, value2)
    if name ~= 'FadeNotes' then return end
    local duration = tonumber(value2)
    if duration == nil or duration <= 0 then
    duration = 0.5
    end
    for i = 0, 7 do
    local targetAlpha = 1
    if value1 == 'on' then
        targetAlpha = 0
    end
    noteTweenAlpha('fadeNotes' .. i, i, targetAlpha, duration, 'quadInOut')
end
end