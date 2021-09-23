require_relative "player"

class HumanPlayer < Player

  def get_move
    move = []
    if self.color == "w"
      colour = "White"
    else
      colour = "Black"
    end
    puts "Please enter the position of piece you want to move (ex: e2). #{colour} to move"
    input = gets.chomp
    until valid_input?(input)
      puts "Invalid input. Enter again."
      input = gets.chomp
    end
    move << translate(input)
    puts "Please enter the position of square you want to move to (ex: e4). #{colour} to move"
    input = gets.chomp
    until valid_input?(input)
      puts "Invalid input. Enter again."
      input = gets.chomp
    end
    move << translate(input)
    move
  end

  def translate(str)
    temp = str.split('')
    result = []
    case temp[0]
    when "a"
      result << 0
    when "b"
      result << 1
    when "c"
      result << 2
    when "d"
      result << 3
    when "e"
      result << 4
    when "f"
      result << 5
    when "g"
      result << 6
    when "h"
      result << 7
    end
    result << temp[1].to_i - 1
    result.reverse
  end

  def valid_file?(input)
    valid_chars = "abcdefgh"
    return true if valid_chars.chars.include?(input)
    return false
  end

  def valid_rank?(input)
    return true if input.to_i > 0 && input.to_i <= 8
    return false
  end

  def valid_input?(input)
    return false if input.size != 2
    valid_file?(input[0]) && valid_rank?(input[1])
  end

end