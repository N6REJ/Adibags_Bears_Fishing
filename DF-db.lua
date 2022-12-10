-- AdiBags Bears Fishing - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for Release
local E = addonTable.expansion
local Expansion = E["Dragonflight"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Alchemy"
db.desc = "Reagents found in " .. Expansion

-- Filter info
db.Filters = {
	["Fish"] = {
		uiName = "Bears " .. Expansion .. " Fish",
		uiDesc = "Fish found while fishing in " .. Expansion,
		title = "Fish",
		items = {
			-- ID,	--Item name
			[200061] = true, -- Prismatic Leaper
			[194967] = true, -- Aileron Seamoth
			[199345] = true, -- Rimefin Tuna
			[200074] = true, -- Frosted Rimefin Tuna
			[194730] = true, -- Scalebelly Mackerel
			[199344] = true, -- Magma Thresher
			[194966] = true, -- Thousandbite Piranha
			[194970] = true, -- Islefin Dorado
			[194969] = true, -- Temporal Dragonhead
			[194968] = true, -- Cerulean Spinefish
			[199346] = true, -- Rotten Rimefin Tuna
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
