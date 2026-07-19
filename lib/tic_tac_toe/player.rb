# Player class: responsible for player creation
# Attributes: player's marker
class Player
  attr_reader :marker, :name

  @@count = 0 # rubocop:disable Style/ClassVars
  def initialize(marker, name = 'player')
    @@count += 1 # rubocop:disable Style/ClassVars
    @marker = marker
    @name = name + @@count.to_s
  end
end
