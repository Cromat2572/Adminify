local Commands = require(script.Commands) -- DO NOT CHANGE THIS OR COMMANDS WILL NOT WORK

local Admins = {"10601898210"}--Use commas(,) to sperate them and put them in double quotation marks(""). ie.{"UserID1", "UserID2", "UserID3"} and so on

local Prefix = "/" --The prefix used to run the admin command. You can change it to whatever you want. Dont use a letter or word

game.Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(message)
		if table.find(Admins,player.UserId) then
		local split = message:split(" ")
		local fireCommand = split[1]:split(Prefix)
		
		if Commands[fireCommand[2]] then
			local arguements = split
			table.remove(arguements,1)
			Commands[fireCommand[2]](player.table.unpack(arguements))
		end
	end
end)
