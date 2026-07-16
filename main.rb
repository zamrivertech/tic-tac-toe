require_relative 'lib/tic_tac_toe'

player1 = Player.new('red', 'Mike')

p player1.color
p player1.name

p player1.color = 'green'

p "#{player1.name}'s color is now #{player1.color}"

player2 = Player.new('blue', 'John')

p player2.color
p player2.name

p player2.color = 'green'

p "#{player2.name}'s color is now #{player2.color}"

p player1.color
p player1.name

p player1.color = 'green'

p "#{player1.name}'s color is now #{player1.color}"
