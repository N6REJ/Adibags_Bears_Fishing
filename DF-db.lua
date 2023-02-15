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
    },
    ["Tools"] = {
        uiName = "Bears " .. Expansion .. " Tools",
        uiDesc = "Tools used in " .. Expansion,
        title = "Tools",
        items = {
            -- ID    = true,    --Item name
            [199696] = true, -- Iskaaran Ice Axe ( used for ice fishing )
        }
    },
    ["Gear"] = {
        uiName = "Bears " .. Expansion .. " Iskaaran Material",
        uiDesc = "Iskaaran Fishing Gear Material used in " .. Expansion,
        title = "Fishing",
        items = {
            -- ID    = true,    --Item name
            [200082] = true, -- Battered Imbu-made Net
            [199847] = true, -- Braided seavine Harpoon Rope
            [199849] = true, -- Dense Draconium Net Weight
            [199851] = true, -- Double Imbu Knot
            [199848] = true, -- Draconium Net Weights
            [200080] = true, -- Draconium Nugget
            [199634] = true, -- Flying Fish Bone Charm
            [200075] = true, -- Flying Fish Bones
            [200076] = true, -- Harpoon Head
            [199850] = true, -- Imbu Knot
            [200083] = true, -- Irontree Branch
            [199698] = true, -- Irontree Harpoon Handle
            [199695] = true, -- Iskaaran Fishing Net
            [199696] = true, -- Iskaaran Ice Axe
            [199845] = true, -- Jagged Serevite Harpoon Head
            [200085] = true, -- Khaz'gorite Wire
            [200086] = true, -- Khaz'gorite-infused Resin
            [200078] = true, -- Pickaxe Blade
            [199697] = true, -- Polished Basalt Bracelet
            [199641] = true, -- Reinforced Irontree Harpoon Handle
            [200084] = true, -- Salinated Serevite
            [200079] = true, -- Sea-Polished Basalt
            [199846] = true, -- Seavine Harpoon Rope
            [199844] = true, -- Serevite Harpoon Head
            [199925] = true, -- Stone With Hole
            [199924] = true, -- Strong Sea Kelp
            [200081] = true, -- Strong Seavine
            [198070] = true, -- Tattered Seavine
            [200077] = true, -- Wooden Pole
}
}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
