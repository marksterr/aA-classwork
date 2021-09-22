require_relative "piece"

class Rook < Piece

  def initialize(color, pos)
    super
    @note = color + "R"
  end

end