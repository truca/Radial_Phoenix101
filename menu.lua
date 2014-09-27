function drawMenu()
	menu = love.graphics.newImage("menuScreen.jpg")
	love.graphics.draw(menu, 0, 0)
end

function updateMenu(gamestate)
	if love.keyboard.isDown("return") 	then gamestate = "game" end
	if love.keyboard.isDown("tab") 		then gamestate = "high" end
	return gamestate
end