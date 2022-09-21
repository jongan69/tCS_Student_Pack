local playerDeaths = 0
local itemId = 1314828719 -- ID of Product to Sell

game:GetService('Players').PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		character:WaitForChild("Humanoid").Died:Connect(function()
			playerDeaths += 1
			print(player.Name .. " has died! This is death number: " .. playerDeaths)
			game:GetService("MarketplaceService"):PromptPurchase(player, itemId)			
		end)
	end)
end)
