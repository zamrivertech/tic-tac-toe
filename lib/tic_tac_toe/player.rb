# Player class: responsible for player creation
# Attributes: player's name and color of choice
# Notes:
# - symbol or mark is missing like X or O
# - name set should not be availible
# - if name is not set, id of player should increment like...
# ...player1 and player2 or variable name
class Player
  attr_reader :color, :marker, :name

  def initialize(color, marker, name)
    @name =  name
    @color = color
    @marker = marker
  end

  # FIXXXXXXX

  def set_player_info(id, color, marker, name)
    if id == 1
      @player1 = Player.new(color, marker, name)
    else
      @player2 = Player.new(color, marker, name)
    end
  end

  def get_player_info(id)
    if id == 1
      [@player1.color, @player1.marker, @player1.name]
    else
      [@player2.color, @player2.marker, @player2.name]
    end
  end
end
