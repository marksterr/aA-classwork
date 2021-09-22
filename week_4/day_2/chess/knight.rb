require_relative "piece"

class Knight < Piece

  def initialize(color, pos)
    super
    @note = color + "N"
  end

end