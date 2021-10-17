local QBCore = exports['qb-core']:GetCoreObject() -- We've ALWAYS got to grab our core object

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() -- When a player is loaded, it will grab all of the players information
	PlayerData = QBCore.Functions.GetPlayerData() -- Grabs the player data (see https://qbcore-framework.github.io/qb-docs/docs/player for more info)
	firstname = PlayerData.charinfo.firstname -- Sets the players firstname as the variable firstname (so instead of doing PlayerData.charinfo.firstname, you can just do firstname)
	lastname = PlayerData.charinfo.lastname -- Same as above
	phone = PlayerData.charinfo.phone -- Same as above
	job = PlayerData.job.name -- Same as above
	rank = PlayerData.job.grade.name -- Same as above
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) -- When a player swaps jobs, it will grab the players new job
    PlayerData.job = JobInfo -- Updating the player data with their new job information
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function() -- This is ran when the player leaves the server
    PlayerData = {}-- Clearing out any stored memory
end)

CreateThread(function()
	if LocalPlayer.state['isLoggedIn'] then -- Checks if player is actually fully logged in
		print(Config.WelcomeText) -- Prints a message using the text set in the Config in F8 if logged in
	end
end)
