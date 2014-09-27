function drawLose()
	lose = love.graphics.newImage("loseScreen.png")
	love.graphics.draw(lose, 0, 0)
end

function updateLose(gamestate)
	if love.keyboard.isDown("return") 	then gamestate = "menu" end
	if love.keyboard.isDown("tab") 		then gamestate = "high" end
	return gamestate
end