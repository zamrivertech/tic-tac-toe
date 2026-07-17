# Player class: responsible for player creation
# Attributes: player's marker
class Player
  attr_accessor :marker

  def initialize(marker)
    @marker = marker
  end
end
