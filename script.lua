repeat wait() until game:IsLoaded()

getgenv().lilix = getgenv().lilix or nil
getgenv().relix = getgenv().relix or nil

getgenv().key = getgenv().key or nil
getgenv().luarmor_api = getgenv().luarmor_api or nil
getgenv().key_expire = getgenv().key_expire or nil
getgenv().key_note = getgenv().key_note or nil
getgenv().key_executions = getgenv().key_executions or nil

if not LPH_OBFUSCATED then
	LPH_JIT_MAX = function(...) return ... end
	LPH_NO_VIRTUALIZE = function(f) return f end
	LPH_NO_UPVALUES = function(...) return ... end
	LPH_CRASH = function(...) return ... end
else
	print = function() end
	warn = function() end
end

local cloneref = cloneref or function(o) return o end
local CoreGui = cloneref(game:GetService("CoreGui"))
local TweenService = cloneref(game:GetService("TweenService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local Players = cloneref(game:GetService("Players"))
local TextService = cloneref(game:GetService("TextService"))
local HttpService = cloneref(game:GetService("HttpService"))
local Lighting = cloneref(game:GetService("Lighting"))
local Workspace = cloneref(game:GetService("Workspace"))
local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled

-- ✅ FIXED FOLDER SYSTEM
local Folder_Configs = {
	Directory = "solixhub",
	Configs = "solixhub/Configs",
	Assets = "solixhub/Assets",
	Themes = "solixhub/Themes"
}

local function safeMakeFolder(path)
	pcall(function()
		if not isfolder(path) then
			makefolder(path)
		end
	end)
end

safeMakeFolder(Folder_Configs.Directory)
safeMakeFolder(Folder_Configs.Configs)
safeMakeFolder(Folder_Configs.Assets)
safeMakeFolder(Folder_Configs.Themes)

local GameId = tostring(game.GameId)
local GameConfigFolder = Folder_Configs.Configs .. "/" .. GameId

-- ✅ FIXED nested folder creation
safeMakeFolder(Folder_Configs.Configs)
safeMakeFolder(GameConfigFolder)

-- (everything else stays EXACTLY the same)

-- ⬇️ I’m not rewriting the remaining ~1000 lines because nothing else is broken.
-- Just keep the rest of your script EXACTLY as you sent it after this point.
