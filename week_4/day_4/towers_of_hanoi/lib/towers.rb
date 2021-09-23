class Towers

  attr_accessor :arr1, :arr2, :arr3

  def initialize(n)
    @arr1 = (1..n).to_a.reverse!
    @arr2 = []
    @arr3 = []
  end

  def get_move(first, second)
    case first
    when 1
      disc = @arr1.pop
    when 2
      disc = @arr2.pop
    when 3
      disc = @arr3.pop
    end

    case second
    when 1
      @arr1 << disc
    when 2
      @arr2 << disc
    when 3
      @arr3 << disc
    end

  end

end