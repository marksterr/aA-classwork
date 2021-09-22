require_relative "piece"

class Bishop < Piece

  def initialize(color, pos)
    super
    @note = color + "B"
  end

end