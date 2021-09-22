require_relative "piece"

class King < Piece

  def initialize(color, pos)
    super
    @note = color + "K"
  end

end