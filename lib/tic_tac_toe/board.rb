# Game class: responsible board logic and display
class Board
  def initialize
    @board_array = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
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

  def set_gridpoint(marker, point)
    @board_array[point] = marker
  end
end
