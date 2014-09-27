function drawWin()
	win = love.graphics.newImage("winScreen.jpg")
	love.graphics.draw(win, 0, 0)
end

function updateWin(gamestate)
	if love.keyboard.isDown("return") 	then gamestate = "menu" end
	if love.keyboard.isDown("tab") 		then gamestate = "high" end
	return gamestate
end