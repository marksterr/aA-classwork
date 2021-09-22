require_relative "piece"

class Pawn < Piece

  def initialize(color, pos)
    super
    @note = color + "P"
  end

end