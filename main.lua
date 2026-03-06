--[[
	h1iy Explorer (h1iy Hub V59)
	Rebranded and Maintained by h1iy (badscarz)
	
	h1iy Hub is a debugging suite designed to help the user debug games 
	and find potential vulnerabilities.
	
	GitHub: https://github.com/badscarz/h1iyhub
]]

-- Main vars
local Main, Explorer, Properties, ScriptViewer, DefaultSettings, Notebook, Serializer, Lib
local API, RMD

-- Branding Configuration
local Brand = {
    Name = "h1iy Explorer",
    Version = "V59",
    Author = "h1iy",
    Repo = "badscarz/h1iyhub"
}

-- Default Settings
DefaultSettings = (function()
	local rgb = Color3.fromRGB
	return {
		Explorer = {
			_Recurse = true,
			Sorting = true,
			TeleportToOffset = Vector3.new(0,0,0),
			ClickToRename = true,
			AutoUpdateSearch = true,
			AutoUpdateMode = 0,
			PartSelectionBox = true,
			GuiSelectionBox = true,
			CopyPathUseGetChildren = true
		},
		Properties = {
			_Recurse = true,
			MaxConflictCheck = 50,
			ShowDeprecated = false,
			ShowHidden = false,
			ClearOnFocus = false,
			LoadstringInput = true,
			NumberRounding = 3,
			ShowAttributes = false,
			MaxAttributes = 50,
			ScaleType = 1
		},
		Theme = {
			_Recurse = true,
			Main1 = rgb(52,52,52),
			Main2 = rgb(45,45,45),
			Outline1 = rgb(33,33,33),
			Outline2 = rgb(55,55,55),
			Outline3 = rgb(30,30,30),
			TextBox = rgb(38,38,38),
			Menu = rgb(32,32,32),
			ListSelection = rgb(11,90,175),
			Button = rgb(60,60,60),
			ButtonHover = rgb(68,68,68),
			ButtonPress = rgb(40,40,40),
			Highlight = rgb(75,75,75),
			Text = rgb(255,255,255),
			PlaceholderText = rgb(100,100,100),
			Important = rgb(255,0,0)
		}
	}
end)()

-- Logic and Environment Setup
local Settings = {}
local Apps = {}
local env = {}
local service = setmetatable({},{__index = function(self,name)
	local serv = game:GetService(name)
	self[name] = serv
	return serv
end})
local plr = service.Players.LocalPlayer or service.Players.PlayerAdded:wait()

Main = (function()
	local Main = {}
	
	Main.ModuleList = {"Explorer","Properties","ScriptViewer"}
	Main.Elevated = true -- Set to true for executor use
	Main.Version = Brand.Version
	Main.GitRepoName = Brand.Repo
	
	Main.Error = function(str)
		local output = "[h1iy ERROR]: " .. tostring(str)
		if rconsoleprint then
			rconsoleprint(output .. "\n")
		else
			warn(output)
		end
	end

	Main.LoadModule = function(name)
		local control
		if EmbeddedModules then
			control = EmbeddedModules[name]()
		else
			-- GitHub Fetching Logic
			local url = "https://raw.githubusercontent.com/" .. Main.GitRepoName .. "/main/modules/" .. name .. ".lua"
			local s, content = pcall(game.HttpGet, game, url)
			if s and content then
				control = loadstring(content)()
			else
				Main.Error("Failed to fetch module: " .. name)
			end
		end
		
		if control then
			Main.AppControls[name] = control
			control.InitDeps(Main.GetInitDeps())
			Apps[name] = control.Main()
		end
	end

	-- ... [Internal Logic remains compatible with rebranded UI calls] ...
	return Main
end)()

-- Initialize
print("[h1iy] Loading " .. Brand.Name .. "...")
Main.LoadModules()
