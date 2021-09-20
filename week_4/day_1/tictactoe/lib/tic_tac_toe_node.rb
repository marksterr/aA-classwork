require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    nodes = []
    (0..2).each do |row|
      (0..2).each do |col|
        if @board.empty?([row, col])
          new_board = @board.dup
          new_board[row][col] = @next_mover_mark
          if @next_mover_mark == :x
            next_mark = :o
          else
            next_mark = :x
          end
          nodes << TicTacToeNode.new(new_board, next_mark, [row, col]) 
        end
      end
    end
  end
end
