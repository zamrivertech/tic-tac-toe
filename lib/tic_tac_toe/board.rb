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

  def set_gridpoint(marker, point)
    # Validate marker point by making sure no...
    # ...marker already exists
    if @board_array[point - 1].nil?
      @board_array[point - 1] = marker
    else
      puts 'Choose another point'
      # prompt to same player to choose another spot
      # or return marked if true or not after attempt action
    end
  end
end
