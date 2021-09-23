class Piece

  attr_accessor :pos, :color, :note, :moves

  def initialize(color, pos)
    @color = color
    @pos = pos
    @moves = []
  end

  def translate(pos)
    result = ""
    row, col = pos
    case col
    when 0
      result << "a"
    when 1
      result << "b"
    when 2
      result << "c"
    when 3
      result << "d"
    when 4
      result << "e"
    when 5
      result << "f"
    when 6
      result << "g"
    when 7
      result << "h"
    end
  result << (row + 1).to_s
  result
  end

  def right
    row, col = pos
    [row, col+1]
  end

  def left
    row, col = pos
    [row, col-1]
  end

  def up
    row, col = pos
    [row+1, col]
  end

  def down
    row, col = pos
    [row-1, col]
  end

  def diag_up_right
    row, col = pos
    [row+1, col+1]
  end

  def diag_down_right
    row, col = pos
    [row-1, col+1]
  end

  def diag_down_left
    row, col = pos
    [row-1, col-1]
  end

  def diag_up_left
    row, col = pos
    [row+1, col-1]
  end

  def remove_false_squares(arr)
    result = []
    arr.each do |pos|
      result << pos unless pos.first < 0 || pos.first > 7 || pos.last < 0 || pos.last > 7
    end
    result
  end


end