RegisterCommand('tp', function(source, args)
    local ped = PlayerPedId()
    args[1] = string.gsub(tostring(args[1]), ',', '')
    args[2] = string.gsub(tostring(args[2]), ',', '')
    args[3] = string.gsub(tostring(args[3]), ',', '')

    SetPedCoordsKeepVehicle(ped, tonumber(args[1]), tonumber(args[2]), tonumber(args[3]))
    SetEntityHeading(ped, (tonumber(args[4]) or GetEntityHeading(ped)))
end, false)
