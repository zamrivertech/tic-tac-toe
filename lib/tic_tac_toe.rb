require_relative 'tic_tac_toe/player'
require_relative 'tic_tac_toe/game'

Game.new.introduction

puts Game.new.set_player(1, 'Hellboy', 'X')
puts Game.new.set_player(2, 'Tony', 'O')

puts Game.new.get_player(1)
puts Game.new.get_player(2)
