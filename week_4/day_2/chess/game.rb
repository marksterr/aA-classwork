require_relative "board"
require_relative "human_player"
require_relative "player"

class Game

  attr_accessor :board, :player_one, :player_two, :game_over, :current_player

  def initialize(name)
    @board = Board.new
    @player_one = HumanPlayer.new("w", name)
    @player_two = HumanPlayer.new("b", "Computer")
    @game_over = false
    @current_player = @player_one
  end

  def play
    while !game_over
      render
      current_move = @current_player.get_move
      current_piece = grab_piece(current_move[0])
      puts translate(current_move[0]) + "-" + translate(current_move[1])
      until valid_piece?(current_move[0])# && valid_destination?(current_move[1], current_piece)
        puts "Invalid move. Enter again."
        current_move = @current_player.get_move
        puts translate(current_move[0]) + "-" + translate(current_move[1])
      end
      place_piece(current_move[1], current_piece)
      @board[current_move[0]] = nil
      change_player
    end
  end

  def grab_piece(pos)
    piece = @board[pos]
    piece
  end

  def place_piece(pos, piece)
    @board[pos] = piece
  end

  def valid_piece?(pos)
    if @board[pos] != nil
      return true
    else 
      return false
    end
  end

  def valid_destination?(pos, piece)
    if piece.actual_squares.include?(pos)
      return true
    else 
      return false
    end
  end

  def change_player
    if @current_player == @player_one
      @current_player = @player_two
    else
      @current_player = @player_one
    end
  end

  def render
    (0..7).reverse_each do |row|
      (0..7).each do |col|
        pos = [row, col]
        if self.board[pos] != nil
          print " " + self.board[pos].note + " "
        else
          print "    "
        end
      end
      puts
    end
  end

  def is_occupied?(pos)
    if @board[pos] == nil
      return false
    else
      return true
    end
  end

  def translate(pos)
    result = ""
    row, col = pos
    case col
    when 0
      result << "a"
    when 1
      result << "b"
    when 2
      result << "c"
    when 3
      result << "d"
    when 4
      result << "e"
    when 5
      result << "f"
    when 6
      result << "g"
    when 7
      result << "h"
    end
  result << (row + 1).to_s
  result
  end

end

game = Game.new("Human")
game.play