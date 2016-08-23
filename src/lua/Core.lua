--[[  LootSecretary by Annasia
Core.lua        Contains core elements of the addon

-----------
TODO/Notes
    The whole addon
    https://etherpad.openstack.org/p/PL_council

]]

local LootSecretary = LibStub("AceAddon-3.0"):NewAddon("LootSecretary", "AceConsole-3.0", "AceEvent-3.0")
local libwin = LibStub("LibWindow-1.1")
local mFrame = CreateFrame("Frame")

LootSecretary:Print("Hello, world!")
function LootSecretary:OnInitialize()
	LootSecretary:Print("Welcome to OnInit")
	-- create the table to hold loot listings
end

function LootSecretary:OnEnable()
	LootSecretary:Print("Welcome to OnEnable")
end

function LootSecretary:OnDisable()
	LootSecretary:Print("Welcome to OnDisable")
end

LootSecretary:RegisterChatCommand("lsc", "LSConfig")
function LootSecretary:LSConfig(input)
	LootSecretary:Print("This is the config")
end

function LootSecretary:CHAT_MSG_LOOT(message, sender, ...)
	LootSecretary:Print(sender)
end
LootSecretary:RegisterEvent("CHAT_MSG_LOOT")
