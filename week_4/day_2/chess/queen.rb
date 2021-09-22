require_relative "piece"

class Queen < Piece

  def initialize(color, pos)
    super
    @note = color + "Q"
  end

end