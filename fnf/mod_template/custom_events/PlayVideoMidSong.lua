function onEvent(name, value1, value2)
    if name ~= 'PlayVideoMidSong' then return end
    startVideo(value1)
end