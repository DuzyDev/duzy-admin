ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterServerCallback("lama_admin:getRankFromPlayer", function(source, cb)
    local player = ESX.GetPlayerFromId(source)
    if player ~= nil then
        local playerGroup = player.getGroup()

        if playerGroup ~= nil then 
            cb(playerGroup)
        else
            cb("user")
        end
    else
        cb("user")
    end
end)

-- CLOTHES
RegisterCommand(Config.DutyCommand, function(source, args)
	TriggerClientEvent("lama_admin:toggleDuty", source)
end, false) 

-- CALL ADMIN
RegisterServerEvent('lama_admin:callAdmin')
AddEventHandler("lama_admin:callAdmin", function(message, senderPosition) 
    local xPlayer = ESX.GetPlayerFromId(source) 
    
    for k, playerID in pairs(GetPlayers()) do
        local xTarget = ESX.GetPlayerFromId(playerID)
        local targetGroup = xTarget.getGroup()

        for i, allowedRanks in pairs(Config.staffGroups) do
            if targetGroup == allowedRanks then
                TriggerClientEvent("lama_admin:showNotify", xTarget.source, xPlayer.name, xPlayer.source, message, senderPosition)
            end
        end

    end
end) 

