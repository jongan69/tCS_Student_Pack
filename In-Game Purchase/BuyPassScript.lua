local itemId = 1294730903

script.Parent.ClickDetector.MouseClick:Connect(function(player)
	game:GetService("MarketplaceService"):PromptPurchase(player, itemId)
end)