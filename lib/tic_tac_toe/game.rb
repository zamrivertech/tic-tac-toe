# Game class: responsible for game logic and flow
class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player
    @player2 = Player
    set_players
    @board = Board.new
    player_turn(start_random_player, @board)
  end

  def set_players
    system 'clear'
    puts 'Welcome!'
    puts 'player1, please enter your marker:'
    @player1 = Player.new(validate_player_marker)
    system 'clear'
    puts 'player2, please enter your marker:'
    @player2 = Player.new(validate_player_marker)
    system 'clear'
  end

  def validate_player_marker
    pass = true
    while pass
      input = gets.chomp
      if %w[X O].include?(input) && input.length == 1
        pass = false
        return input
      else
        puts 'Enter X or O'
      end
    end
  end

  def player_turn(player, board)
    board.display_grid
    puts "#{player.name}'s turn, choose a number to mark:"
    while true
      point = gets.chomp.to_i
      if point.between?(1, 9) && point.is_a?(Integer)
        board.set_gridpoint(player.marker, point)
        board.display_grid
        break
      else
        puts 'Enter a valid number between 1 and 9:'
      end
    end
  end

  def start_random_player
    random = rand(1..2)
    return @player1 if random == 1

    @player2
  end
end
