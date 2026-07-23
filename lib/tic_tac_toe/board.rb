# Game class: responsible board logic and display
class Board
  def initialize
    @board_array = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  end

  def grid
    @board_array
  end

  def display_grid # rubocop:disable Metrics/MethodLength
    count = 0
    puts '========='
    @board_array.each do |item|
      count += 1
      if [3, 6, 9].include?(count)
        print "|#{item || count}|"
        puts "\n"
      else
        print "|#{item || count}|"
      end
    end
    puts '========='
  end

  def valid_gridpoint?(point)
    return true if point.between?(1, 9) && point.is_a?(Integer) && @board_array[point - 1].nil?

    false
  end

  def set_gridpoint(marker, point)
    @board_array[point - 1] = marker
  end
end
