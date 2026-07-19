# Game class: responsible for game logic and flow
class Game
  attr_reader :player1, :player2

  @@previous_player = nil # rubocop:disable Style/ClassVars

  def initialize
    @player1 = Player
    @player2 = Player
    set_players
    @board = Board.new
    player_grid(@board)
  end

  def set_players
    system 'clear'
    puts 'Welcome to TicTacToe!'
    print 'player1, please enter your marker:'
    @player1 = Player.new(validate_player_marker)
    system 'clear'
    print 'player2, please enter your marker:'
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

  def player_grid(board)
    while @board.grid.include?(nil) # break if winner exists
      player = player_turn
      board.display_grid
      print "#{player.name}'s turn, choose a number to mark:"
      point = gets.chomp.to_i
      if point.between?(1, 9) && point.is_a?(Integer)
        board.set_gridpoint(player.marker, point)
        system 'clear'
      else
        print 'Enter a valid number between 1 and 9:'
      end
    end
  end

  def player_turn
    if @@previous_player == @player1
      @@previous_player = @player2 # rubocop:disable Style/ClassVars
      return @player2
    elsif @@previous_player == @player2
      @@previous_player = @player1 # rubocop:disable Style/ClassVars
      return @player1
    end
    if @@previous_player.nil? # rubocop:disable Style/GuardClause
      print 'Enter starting player (1/2):'
      player = gets.chomp.to_i
      if player == 1
        @@previous_player = @player1 # rubocop:disable Style/ClassVars
        return @player1 # rubocop:disable Style/RedundantReturn
      else
        @@previous_player = @player2 # rubocop:disable Style/ClassVars
        return @player2 # rubocop:disable Style/RedundantReturn
      end
    end
  end
end
