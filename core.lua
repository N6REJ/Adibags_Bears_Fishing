-- AdiBags_Shadowlands_Crafting
-- Created by N6REJ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://github.com/N6REJ/AdiBags_Shadowlands_Crafting


local addonName, addonTable, addon = ...

-- Get reference to AdiBags addon
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

-- Debug tools
LoadAddOn("ViragDevTool")
ViragDevTool:ViragDevTool_AddData(addonTable)


local db = addonTable.db
local MatchIDs
local Tooltip
local Result = { }
local Group
local Categories = db["Categories"]


-- Create World Variable for db
ShadowLands_Fishing = db

-- addon info
local version = GetAddOnMetadata(addonName, "Version");

-- Register this addon with AdiBags
local setFilter = AdiBags:RegisterFilter(addonName, 100, "ABEvent-1.0")
setFilter.uiName = db.name
setFilter.uiDesc = db.desc .. "     Version: " .. version


-- ??
local function AddToSet(Set, List)
    for _, v in ipairs(List) do
        Set[v] = true
    end
end

local function MatchIDs_Init(self)
        wipe(Result)
            -- Get the list of all items in db
            if self.db.profile["move" .. Group] then
                AddToSet(Result, db[Group])
            end
        return Result
end


local function Tooltip_Init()
    local tip, leftside = CreateFrame("GameTooltip"), { }
    for i = 1, 6 do
        local Left, Right = tip:CreateFontString(), tip:CreateFontString()
        Left:SetFontObject(GameFontNormal)
        Right:SetFontObject(GameFontNormal)
        tip:AddFontStrings(Left, Right)
        leftside[i] = Left
    end
    tip.leftside = leftside
    return tip
end

function setFilter:OnInitialize()
    self.db = AdiBags.db:RegisterNamespace(addonName, db.profile)
end

function setFilter:Update()
    MatchIDs = nil
    self:SendMessage("AdiBags_FiltersChanged")
end

function setFilter:OnEnable()
    AdiBags:UpdateFilters()
end

function setFilter:OnDisable()
    AdiBags:UpdateFilters()
end

function setFilter:Filter(slotData)

        -- Sort Items
        MatchIDs = MatchIDs or MatchIDs_Init(self)
        if MatchIDs[slotData.itemId] then

            -- This sets the name of the Group of items
            return addonName

        end

        -- Continue ?
        Tooltip = Tooltip or Tooltip_Init()
        Tooltip:SetOwner(UIParent, "ANCHOR_NONE")
        Tooltip:ClearLines()

        if slotData.bag == BANK_CONTAINER then
            Tooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(slotData.slot, nil))
        else
            Tooltip:SetBagItem(slotData.bag, slotData.slot)
        end

        Tooltip:Hide()
end

