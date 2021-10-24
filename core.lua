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


-- Create World Variable for db
ShadowLands_Fishing = db

-- addon info
local version = GetAddOnMetadata(addonName, "Version");

-- Register this addon with AdiBags
local setFilter = AdiBags:RegisterFilter(addonName, 100, "ABEvent-1.0")
setFilter.uiName = db.name
setFilter.uiDesc = db.desc .. "     Version: " .. version


local function tooltipInit()
	local tip, leftside = CreateFrame("GameTooltip"), {}
	for i = 1, 6 do
		local left, right = tip:CreateFontString(), tip:CreateFontString()
		left:SetFontObject(GameFontNormal)
		right:SetFontObject(GameFontNormal)
		tip:AddFontStrings(left, right)
		leftside[i] = left
	end
	tip.leftside = leftside
	return tip
end

local relicFilter = AdiBags:RegisterFilter(db.Filter.Fish.uiName, 98, "ABEvent-1.0")
relicFilter.uiName = db.Filter.Fish.uiName
relicFilter.uiDesc = db.Filter.Fish.uiDesc

function relicFilter:OnInitialize()
	self.items = db.Fish
end

function relicFilter:Update()
	SendMessage("AdiBags_FiltersChanged")
end

function relicFilter:OnEnable()
	AdiBags:UpdateFilters()
end

function relicFilter:OnDisable()
	AdiBags:UpdateFilters()
end

function relicFilter:Filter(slotData)
	if self.items[tonumber(slotData.itemId)] then
		return db.Filter.Fish.name
	end

	tooltip = tooltip or tooltipInit()
	tooltip:SetOwner(UIParent, "ANCHOR_NONE")
	tooltip:ClearLines()

	if slotData.bag == BANK_CONTAINER then
		tooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(slotData.slot, nil))
	else
		tooltip:SetBagItem(slotData.bag, slotData.slot)
	end

	tooltip:Hide()
end
