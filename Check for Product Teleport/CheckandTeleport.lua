MarketplaceService = game:GetService("MarketplaceService")
Buttons = script.Parent.Parent
Active = true

CD = script.Parent.CD
Light = script.Parent.PointLight
Sound = script.Parent.ButtonSound
SpawnId = "1316479816"

CD.MouseClick:connect(function(player)
	print(player.Name)
	if Active then
		Active = false
		Sound:Play()
		script.Parent.BrickColor = BrickColor.new("Institutional white")
		-- First Check if player has game pass
		local check = MarketplaceService:PlayerOwnsAsset(player, SpawnId)
		wait(1.5)
		-- If gamepass, teleport to green brick
		if check then
			print('Player is very swag')
			local character = player.Character
			if not character or not character.Parent then
				character = player.CharacterAdded:Wait()
			end
			character.HumanoidRootPart.CFrame = game.Workspace.START.CFrame
		else
            -- Else prompt developer product purchase
			print('Player is greedy')
			MarketplaceService:PromptProductPurchase(player, SpawnId)
		end
		script.Parent.BrickColor = BrickColor.new("Bright green")
		Active = true
	end
end)