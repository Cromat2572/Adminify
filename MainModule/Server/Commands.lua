--DO NOT DELETE. THIS SCRIPT EXECUTES THE COMMANDS

local Commands = {}

Commands.kick = function(admin,target,reason)
	if target then
		print(admin.Name.." fired the ban Command ")
		print(target.." got banned by "..admin.Name.."for"..reason)
		target = game.Players:FindFirstChild(target)
		if target then
			target:Kick("You were kicked by "..admin.Name)
		end
	end
end

Commands.tp = function(admin,player,target)
	if player and target then
		print(admin.Name.."fired the TP Command")
		print(player.."is teleporting to"..target)
		player = game.Players:FindFirstChild(player)
		target = game.Players:FindFirstChild(target)
		
		if player and target then
			player.Character.HumanoidRootPart.CFrame = target.Character.Humanoid.CFrame
		end	
	end	
end

return Commands
