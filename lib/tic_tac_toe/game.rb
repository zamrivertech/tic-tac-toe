# Game class: responsible for game logic
# Attributes:
class Game
  @@player1 = Player # rubocop:disable Style/ClassVars
  @@player2 = Player # rubocop:disable Style/ClassVars

  def introduction
    puts 'Welcome'
  end

  def set_player(id, name, marker)
    if id == 1
      @@player1.new(name, marker)
    else
      @@player2.new(name, marker)
    end
  end

  def get_player(id)
    if id == 1
      [@@player1.name]
    else
      [@@player2.name]
    end
  end
end
