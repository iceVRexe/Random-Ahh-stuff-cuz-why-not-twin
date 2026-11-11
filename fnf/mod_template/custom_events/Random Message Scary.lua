local tag = 'randomMessage'

function onEvent(name, value1, value2)
    if name ~= 'Random Message Scary' then return end
    removeLuaText(tag, true)
    local x = math.random(
        math.floor(screenWidth * 0.25),
        math.floor(screenWidth * 0.75)
    )
    local y = math.random(
        math.floor(screenHeight * 0.25),
        math.floor(screenHeight * 0.75)
)
    makeLuaText(tag, value1, 0, x, y)
    addLuaText(tag)
    setTextSize(tag, value2)
    setTextFont(tag, 'ScaryFont.ttf')
    playSound('event_glitch', 1)
end