--[[
	@author TwinPlayzDev_YT
	@since Jun 23/2021
--]]

--[LOCALS]--

local Icon = require(game:GetService("ReplicatedStorage").MODULES.Icon) -- Getting Icon Module
local Themes = require(game:GetService("ReplicatedStorage").MODULES.Icon.Themes) -- Getting Themes

local StarterGui = game.Players.LocalPlayer.PlayerGui:WaitForChild("Adminify")
local Frame = StarterGui:WaitForChild("ParentFrame")

--[SETTINGS MAIN]--

Icon.new()
:setImage(8443610492) -- Image Icon Here 
	:setLabel("", "deselected") -- Closed Here
	:setLabel("Opened", "selected") -- Open Frame Here
	:setLabel("Hovering", "hovering") -- Hovering Here
	:setTip("Adminify(\)") -- Tip Here
	:bindToggleKey(Enum.KeyCode.BackSlash) -- Bind Toggle Key
	:setTheme(Themes.VibeGradient) -- Setting Theme Here
	:setCornerRadius(1, 0) -- Corner Radius
	:setCaption("Adminify") -- Caption Here
	:bindEvent("selected", function() -- tween in
		Frame:TweenPosition(UDim2.new(0.1,0,0.162,0))
	end)
	:bindEvent("deselected", function() -- tween out
		Frame:TweenPosition(UDim2.new(0.1,0,1,0))
	end)
