# Game class: responsible for game logic and flow
class Game
  @@previous_player = nil # rubocop:disable Style/ClassVars

  def initialize
    intro
    @board = Board.new
    player_grid(@board)
  end

  def intro
    system 'clear'
    puts 'Welcome to TicTacToe!'
    @player1 = Player.new
    @player2 = Player.new
  end

  def player_grid(board) # rubocop:disable Metrics/MethodLength
    # @board.grid.include?(nil)
    while true # break if winner exists # rubocop:disable Style/InfiniteLoop
      player = player_turn
      board.display_grid
      p player.marker
      if check_winner
        board.display_grid
        puts "#{@@previous_player.name}: #{@@previous_player.marker} wins!"
        break
      end
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

  def check_winner
    winner = false
    # horizontal check
    [[0, 1, 2],
     [3, 4, 5],
     [6, 7, 8],
     [0, 3, 6],
     [1, 4, 6],
     [2, 5, 8],
     [0, 4, 8],
     [6, 4, 2]].each do |wins|
      %w[X O].each do |marker|
        if @board.grid.values_at(wins[0], wins[1], wins[2]).all?(marker)
          p @board.grid
          winner = true
        end
      end
    end
    winner
  end
end
