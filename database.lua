-- AdiBags_Shadowlands_Crafting - Fish Database
-- Created by N6REJ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://github.com/N6REJ/AdiBags_Shadowlands_Crafting
--
local addonName, addonTable, addon = ...

Loadaddon("ViragDevTool")
ViragDevTool:ViragDevTool_AddData(addonTable)

-- Create addon table
local database = { }

addonTable.database = database
addon.name = "Shadowlands Fishing"
addon.desc = "Fish and bait found while fishing in shadowlands"

-- Database of items
database["Categories"] = {
		"Fish",
		"Bait",
	}

database["Fish"] = {
		-- ID,	--Item name
		173032,	-- Lost Sole
		173033,	-- Iridescent Amberjack
		173034,	-- Silvergill Pike
		173035,	-- Pocked Bonefish
		173036,	-- Spinefin Piranha
		173037,	-- Elysian Thade
		174327,	-- Malformed Gnasher
	}

database["Bait"] = {
		 -- ID,	--Item name
		173038,	-- Lose Sole bait
		173039,	-- Iridescent amberjack bait
		173040,	-- Silvergill pike bait
		173041,	-- Pocked Bonefish bait
		173042,	-- Spinefin piranha bait
		173043,	-- Elysian thade bait
	}