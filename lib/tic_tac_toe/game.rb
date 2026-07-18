# Game class: responsible for game logic and flow
class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player
    @player2 = Player
    set_players
    @board = Board.new
    player_turn(@player1, @board)
  end

  def set_players
    puts 'Welcome!'
    puts 'Player1, please enter your marker:'
    @player1 = Player.new(validate_player_marker)
    puts "Player1: #{@player1.marker}"
    puts 'Player2, please enter your marker:'
    @player2 = Player.new(validate_player_marker)
    puts "Player2: #{@player2.marker}"
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
    while true
      board.display_grid
      print "For #{player.marker} marker, choose a point:"
      point = gets.chomp.to_i
      if point.between?(0, 9) # rubocop:disable Style/Next
        board.set_gridpoint(player.marker, point)
        board.display_grid
        break
      end
    end
  end
end
