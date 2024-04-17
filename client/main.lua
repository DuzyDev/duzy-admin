local duty = false
ESX = exports["es_extended"]:getSharedObject()

-- CLOTHES
function setUniform(playerPed)
    local playerPed = PlayerPedId()
    
    TriggerEvent('skinchanger:getSkin', function(skin)
		ESX.TriggerServerCallback("lama_admin:getRankFromPlayer", function(group)
			if skin.sex == 0 then
				if group == "admin" then
					TriggerEvent("skinchanger:loadClothes", skin, Config.Ranks.admin.male)
                end    
            else
				if group == "admin" then
					TriggerEvent("skinchanger:loadClothes", skin, Config.Ranks.admin.female)
                end
			end
        end)
    end)
end

RegisterNetEvent("lama_admin:toggleDuty")
AddEventHandler("lama_admin:toggleDuty", function(source)
    local playerPed = PlayerPedId()
    if duty then
        duty = false
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
            TriggerEvent('skinchanger:loadSkin', skin)
        end)
		if Config.GodMode then SetEntityInvincible(playerPed, false) end 
    else
        duty = true
        setUniform()
		if Config.GodMode then SetEntityInvincible(playerPed, true) end
    end 
end) 

-- CALL ADMIN
RegisterCommand(Config.CallHelpCommand, function(source, args, rawCommand)
    local message = ""
    for i=1, #args, 1 do 
        message = message .. ' ' ..args[i]
    end
    if message == "" or message == " " then 
        message = _U('noMessage')
    end

    local senderPosition = GetEntityCoords(PlayerPedId())
    TriggerServerEvent("lama_admin:callAdmin", message, senderPosition)
end)

RegisterNetEvent("lama_admin:showNotify")
AddEventHandler("lama_admin:showNotify", function(name, id, message, pos)
    local _source = source
    
    if Config.NotifySystem  == 'chat' then
        if Config.UseSound == true then TriggerServerEvent('InteractSound_SV:PlayOnSource', Config.SoundName, Config.SoundVolume) end
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {_U('title'), _U('notifyMessage', name, id, message)}  
          })
          
    elseif Config.NotifySystem == 'esx' then
        if Config.UseSound == true then TriggerServerEvent('InteractSound_SV:PlayOnSource', Config.SoundName, Config.SoundVolume) end
        ESX.ShowNotification(_U('notifyMessage', name, id, message))

    elseif Config.NotifySystem == 'pNotify' or Config.NotifySystem == 'pnotify' then
        if Config.UseSound == true then TriggerServerEvent('InteractSound_SV:PlayOnSource', Config.SoundName, Config.SoundVolume) end
        TriggerEvent("pNotify:SendNotification", {
            text = _U('notifyMessage', name, id, message),
            type = "warning",
            timeout = math.random(1000, 10000), 
            layout = "centerLeft",
            queue = "left"
        })

    elseif Config.NotifySystem == 'okokChatV2' then 
        if Config.UseSound == true then TriggerServerEvent('InteractSound_SV:PlayOnSource', Config.SoundName, Config.SoundVolume) end
        exports['okokChatV2']:Message('linear-gradient(90deg, rgb(0 32 51) 0%, rgb(0 132 210 / 90%) 100%)', '#00d0ff', 'fas fa-bell', '', _U('title'), _U('notifyMessage', name, id, message), _source)
    else
        print("[LAMA_ADMIN] - This Notify System is not supported, change in config!")
    end
	
Citizen.CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)
        
        --if disable <= 2 then
            sleep = 0 -- Looping every frame

            ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to respond to the request or press ~INPUT_DETONATE~, to deny that request.', false, true)
            if IsControlJustReleased(2, 38) then
                if Config.AcceptMethod == 'waypoint' or Config.AcceptMethod == 'Waypoint' then
                    SetNewWaypoint(pos.x, pos.y)
					break
                else
                    SetEntityCoords(ped, pos.x, pos.y, pos.z + 0.5)
					break
                end
				
            elseif IsControlJustReleased(2, 47) then
                break
            end
       -- end

        Citizen.Wait(sleep)
    end
end)
	
end)


--- IDS

local disPlayerNames = 25
local disPlayerNames2 = 4.5
playerDistances = {}

RegisterCommand("ids", function()
 estadom = not estadom
 if estadom == false then
    --exports['mythic_notify']:SendAlert('inform', 'IDs Desativados', 2000, { ['background-color'] = '#09C6AD', ['color'] = '#ffffff' })
    exports['okokNotify']:Alert("", "IDs Desativados", 5000, 'success')
 else
    --exports['mythic_notify']:SendAlert('inform', 'IDs Ativados', 2000, { ['background-color'] = '#09C6AD', ['color'] = '#ffffff' })
    exports['okokNotify']:Alert("", "IDs Ativados", 5000, 'success')
 end
 
end, false)

RegisterNetEvent("ids:desativarfoto")
AddEventHandler("ids:desativarfoto", function()

    if checkm == true then
        checkm = false
        local backupstatus = estadom

        estadom = false

        Citizen.Wait(5000)

        estadom = backupstatus
        checkm = true
    end
end)


Citizen.CreateThread(function()
    Wait(25)
    while true do
		if estadom == true then
			for _, player in ipairs(GetActivePlayers()) do
				if NetworkIsPlayerActive(player) and  group ~= "user" and IsAdminMod == true then
					if playerDistances[player] ~= nil then
					if GetPlayerPed(player) ~= GetPlayerPed(-1) then
						if (playerDistances[player] < disPlayerNames) then
							x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(player), true))
							if NetworkIsPlayerTalking(player) then
								DrawText3D(x2, y2, z2+1, GetPlayerServerId(player).. ' | ' ..GetPlayerName(player), 247,124,24)
							else
								DrawText3D(x2, y2, z2+1, GetPlayerServerId(player).. ' | ' ..GetPlayerName(player), 255,255,255)
							end
						end  
					end
					end
				elseif NetworkIsPlayerActive(player) then
					if GetPlayerPed(player) ~= GetPlayerPed(-1) then
						if playerDistances[player] ~= nil then
						if (playerDistances[player] < disPlayerNames2) and HasEntityClearLosToEntity(PlayerPedId(), GetPlayerPed(player), 17) then
							x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(player), true))
							if NetworkIsPlayerTalking(player) then
								DrawText3D2(x2, y2, z2+1, GetPlayerServerId(player), 56,176,222)
							else
								DrawText3D2(x2, y2, z2+1, GetPlayerServerId(player), 255,255,255)
							end
						end
						end  
					end					
				end
			end
		elseif checkm == false then
		HideHudAndRadarThisFrame()
		
		end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        for _, player in ipairs(GetActivePlayers()) do
            if GetPlayerPed(player) ~= GetPlayerPed(-1) then
                x1, y1, z1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(player), true))
                distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  true))
				playerDistances[player] = distance
            end
        end
        Citizen.Wait(1000)
    end
end)