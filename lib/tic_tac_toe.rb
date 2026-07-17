require_relative 'tic_tac_toe/player'
require_relative 'tic_tac_toe/game'

puts 'Welcome'

puts 'Player1, please enter your marker:'

player1 = Player.new(gets)

puts "Player1: #{player1.marker}"

puts 'Player2, please enter your marker:'

player2 = Player.new(gets)

puts "Player2: #{player2.marker}"
