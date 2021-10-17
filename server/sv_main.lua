QBCore = exports['qb-core']:GetCoreObject() -- Grabs our core object

RegisterNetEvent('qb-template:server:grabPlayerData', function(source) -- An example event that can be used to grab player data
    local src = source -- Defines source as src
    local Player = QBCore.Functions.GetPlayer(src) -- Grabs the information of the player
    -- To understand more about PlayerData, check here: https://qbcore-framework.github.io/qb-docs/docs/player
    if Player then -- Checks if the information exists/not nil
        if Player.PlayerData.job.name == 'police' and Player.PlayerData.job.onduty then -- checks if the player has the job "police" & is on duty 
            print("Player " .. source .. " is a police officer and is on duty!") -- If they meet the criteria, this is printed to the server
        end
    end
end)