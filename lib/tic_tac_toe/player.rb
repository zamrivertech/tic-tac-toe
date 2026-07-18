# Player class: responsible for player creation
# Attributes: player's marker
class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end
