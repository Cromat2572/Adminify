local Commands = require(script.Commands) -- DO NOT CHANGE THIS OR COMMANDS WILL NOT WORK

local Admins = {"Cromat2572", "rovelsteve"}

local Prefix = "/" --The prefix used to run the admin command. You can change it to whatever you want. Dont use a letter or word

game.Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(message)
		if table.find(Admins,player.Name) then
		local split = message:split(" ")
		local fireCommand = split[1]:split(Prefix)
		
		if Commands[fireCommand[2]] then
			local arguements = split
			table.remove(arguements,1)
			Commands[fireCommand[2]](player.table.unpack(arguements))
		end
	end
end)
