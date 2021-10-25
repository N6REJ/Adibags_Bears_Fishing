-- AdiBags_Shadowlands_Crafting - Fish db
-- Created by N6REJ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://github.com/N6REJ/AdiBags_Shadowlands_Crafting
--
local addonName, addonTable, addon = ...

-- Create addon table
local db = { }

db.name = "Shadowlands Fishing"
db.desc = "Fish and Bait found while fishing in shadowlands"

-- Filter info
db.Filters = {
	["Fish"] = {
		uiName = "Shadowlands Fish",
		uiDesc = "Fish found while fishing in Shadowlands",
		title = "Fish",
	},
	["Bait"] = {
		uiName = "Shadowlands Bait",
		uiDesc = "Bait found while fishing in Shadowlands",
		title = "Bait",
	},
}

db.Fish = {
	-- ID,	--Item name
	[173032] = true,	-- Lost Sole
	[173033] = true,	-- Iridescent Amberjack
	[173034] = true,	-- Silvergill Pike
	[173035] = true,	-- Pocked Bonefish
	[173036] = true,	-- Spinefin Piranha
	[173037] = true,	-- Elysian Thade
	[174327] = true,	-- Malformed Gnasher
}

db.Bait = {
	 -- ID,	--Item name
	[173038] = true,	-- Lose Sole bait
	[173039] = true,	-- Iridescent amberjack bait
	[173040] = true,	-- Silvergill pike bait
	[173041] = true,	-- Pocked Bonefish bait
	[173042] = true,	-- Spinefin piranha bait
	[173043] = true,	-- Elysian thade bait
}
-- now that db is populated lets pass it on.
addonTable.db = db
