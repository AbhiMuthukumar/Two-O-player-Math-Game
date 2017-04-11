require './game'
require './player'
require './number'

player1 = Player.new("Player1")
player2 = Player.new("Player2")
number_object = Number.new
new_game = Game.new(player1, player2, number_object)
new_game.start