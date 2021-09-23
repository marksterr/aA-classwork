require_relative "piece"
require_relative "rook"
require_relative "bishop"
require_relative "knight"
require_relative "queen"
require_relative "king"
require_relative "pawn"
require_relative "null_piece"

class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
    set_pieces
  end

  def set_pieces
    self.grid[0][0] = Rook.new("w", [0,0])
    self.grid[0][7] = Rook.new("w", [0,7])
    self.grid[0][1] = Knight.new("w", [0,1])
    self.grid[0][6] = Knight.new("w", [0,6])
    self.grid[0][2] = Bishop.new("w", [0,2])
    self.grid[0][5] = Bishop.new("w", [0,5])
    self.grid[0][3] = Queen.new("w", [0,3])
    self.grid[0][4] = King.new("w", [0,4])
    self.grid[7][0] = Rook.new("b", [7,0])
    self.grid[7][7] = Rook.new("b", [7,7])
    self.grid[7][1] = Knight.new("b", [7,1])
    self.grid[7][6] = Knight.new("b", [7,6])
    self.grid[7][2] = Bishop.new("b", [7,2])
    self.grid[7][5] = Bishop.new("b", [7,5])
    self.grid[7][3] = Queen.new("b", [7,3])
    self.grid[7][4] = King.new("b", [7,5])
    (0..7).each do |i|
      self.grid[1][i] = Pawn.new("w", [1, i])
      self.grid[6][i] = Pawn.new("b", [6, i])
    end
  end

  def [](pos)
    row, col = pos
    self.grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    self.grid[row][col] = val
  end

  def remove_piece(pos)
    row, col = pos
    self.grid[row][col] = nil
  end

end