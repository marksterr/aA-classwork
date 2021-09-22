require_relative "player"

class HumanPlayer < Player

  def get_move
    move = []
    puts "Please enter the position of piece you want to move (ex: 3,4)"
    move << gets.chomp.split(',').map(&:to_i)
    puts "Please enter the position of square you want to move to (ex: 3,4)"
    move << gets.chomp.split(',').map(&:to_i)
    move
  end
end