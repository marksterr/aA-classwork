class Towers

  attr_accessor :arr1, :arr2, :arr3, :num_discs

  def initialize(n)
    @arr1 = (1..n).to_a.reverse!
    @arr2 = []
    @arr3 = []
    @num_discs = n
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

  def won?
    if @arr2 == (1..@num_discs).to_a.reverse || @arr3 == (1..@num_discs).to_a.reverse
      puts "winner"
      return true
    else 
      return false
    end
  end

  def play
    while !self.won?
      render
      puts "Enter two towers, separated by a comma (ex: 1,3): "
      input = gets.chomp.split(",").map(&:to_i)
      get_move(input[0], input[1])
    end
  end

  def render
    p @arr1
    puts
    p @arr2
    puts
    p @arr3
  end

end

game = Towers.new(3)
game.play