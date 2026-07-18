class Board
  def initialize
    @board_array = [[0], [1], [2], [3], [4], [5], [6], [7], [9]]
  end

  def display_grid
    count = 0
    @board_array.each do |item|
      count += 1
      if [3, 6, 9].include?(count)
        print item
        puts "\n"
      else
        print item
      end
    end
  end
end
