# Game class: responsible for game logic and flow
# Attributes:
class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player
    @player2 = Player
    set_players
  end

  def set_players
    puts 'Welcome'
    puts 'Player1, please enter your marker:'
    @player1 = Player.new(gets)
    puts "Player1: #{@player1.marker}"
    puts 'Player2, please enter your marker:'
    @player2 = Player.new(gets)
    puts "Player2: #{@player2.marker}"
  end
end
