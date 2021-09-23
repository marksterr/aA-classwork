class Towers

  attr_accessor :arr1, :arr2, :arr3

  def initialize(n)
    @arr1 = (1..n).to_a.reverse!
    @arr2 = []
    @arr3 = []
  end

end