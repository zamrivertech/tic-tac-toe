# Game class: responsible for game logic and flow
class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player
    @player2 = Player
    set_players
    @board = Board.new
    # @board.set_gridpoint(@player1.marker, 2)
    @board.display_grid
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

  def player_turn
    # set starting player (pick randomly for firsttime)...
    # and display player number and marker onotp of board
    # if invalid point, keep prompting
    # after use setgridpoint marker form board object
    # its automatically another player turn
    # i thnk everytime it is a player turn, the board display..
    # .. method must be here
  end
end
