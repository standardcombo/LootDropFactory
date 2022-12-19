
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local LOOT_ID = script:GetCustomProperty("LootID")

TRIGGER.interactedEvent:Connect(function(trigger, player)
	local data = {
		lootId = LOOT_ID,
		position = TRIGGER:GetWorldPosition(),
		killer = player,
	}
	_G.LootDropFactory.Drop(data)
end)

