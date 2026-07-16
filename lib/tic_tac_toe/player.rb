# Player class: responsible for player creation
# Attributes: player's name and color of choice
# Notes:
# - symbol or mark is missing like X or O
# - name set should not be availible
# - if name is not set, id of player should increment like...
# ...player1 and player2 or variable name
class Player
  attr_reader :name
  attr_accessor :color

  def initialize(color, name = 'player1')
    @name =  name
    @color = color
  end
end
