local QBCore = exports['qb-core']:GetCoreObject() -- We've ALWAYS got to grab our core object

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() -- When a player is loaded, it will grab all of the players information
	PlayerData = QBCore.Functions.GetPlayerData()
	firstname = PlayerData.charinfo.firstname
	lastname = PlayerData.charinfo.lastname
	phone = PlayerData.charinfo.phone
	job = PlayerData.job.name
	rank = PlayerData.job.grade.name
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) -- When a player swaps jobs, it will grab the players new job
    PlayerData.job = JobInfo -- Updating the player data with their new job information
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function() -- This is ran when the player leaves the server
    PlayerData = {}-- Clearing out any stored memory
end)