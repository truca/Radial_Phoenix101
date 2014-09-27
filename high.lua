function drawHigh()
	high = love.graphics.newImage("highScreen.png")
	love.graphics.draw(high, 0, 0)
end

function updateHigh(gamestate)
	if love.keyboard.isDown("return") 	then gamestate = "menu" end
	if love.keyboard.isDown("esc") 		then 
		love.event.quit()
	end
	return gamestate
end