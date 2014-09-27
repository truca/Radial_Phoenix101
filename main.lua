gamestate = ""

function love.load() --primera funcion
	require('entities')
	require('menu')
	require('win')
	require('lose')
	ents.Startup()
	love.graphics.setBackgroundColor(255,255,255)
	gamestate = "lose"
end

function love.draw() --se llama con cada iteracion
	if gamestate == "menu" then drawMenu() end
	if gamestate == "game" then drawGame() end
	if gamestate == "win"  then  drawWin() end
	if gamestate == "lose" then drawLose() end
	if gamestate == "high" then drawHighscore() end
end

function love.update(dt) --se llama con cada iteracion
	if gamestate == "game" then gamestate = updateGame(gamestate) end
	if gamestate == "menu" then gamestate = updateMenu(gamestate) end
	if gamestate == "lose" then gamestate = updateLose(gamestate) end
	if gamestate == "high" then gamestate =  updateWin(gamestate) end
	print(gamestate)
end

function love.focus(bool) --true si el juego esta en foco

end

function love.keypressed(key, unicode)

end

function love.keyreleased(key, unicode)

end

function love.mousepressed( x, y, button )

end

function love.mousereleased( x, y, button )

end

function love.quit()

end