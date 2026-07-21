# Player class: responsible for player creation
# Attributes: player's marker
class Player
  attr_reader :marker, :name

  @@count = 0 # rubocop:disable Style/ClassVars
  def initialize
    @@count += 1 # rubocop:disable Style/ClassVars
    @name = "Player#{@@count}"
    print "#{@name}, enter your marker:"
    # it is probably not safe to have gets directly here...
    # ...I needed the print first then ask for a marker
    @marker = validate_marker(gets.chomp)
  end

  def validate_marker(marker)
    if %w[X O].include?(marker) && marker.length == 1
      marker
    else
      puts 'Enter X or O'
      validate_marker(gets.chomp)
    end
  end
end
