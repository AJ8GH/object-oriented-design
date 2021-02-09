class Board
  def show_board
    puts grid
  end

  def move(square, marker)
    if square == 1
      grid[square] = marker
    else
      grid[(square - 1) * 4] = marker
    end
  end

  private
  attr_accessor :grid, :row, :border

  def initialize
    @border = "---|---|---"
    @row = "   |   |   "
    @grid = ([row, border] * 3 << row).join("\n")
  end
end

#
#  o | o | o
# ---|---|---
#  x | x | x
# ---|---|---
#  o | o | o
#
