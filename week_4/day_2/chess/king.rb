require_relative "piece"

class King < Piece

  def initialize(color, pos)
    super
    @note = color + "K"
  end

  def possible_squares
    @moves = []
    @moves << self.right
    @moves << self.left
    @moves << self.up
    @moves << self.down
    @moves << self.diag_up_right
    @moves << self.diag_down_right
    @moves << self.diag_down_left
    @moves << self.diag_up_left
    @moves
  end

  def actual_squares
    possible_squares
    result = []
    result = remove_false_squares(@moves.dup)
    result
  end

end