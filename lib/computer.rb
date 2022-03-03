require_relative "./board"

# BOARD = Board.new

class Computer
  attr_accessor :move
  def initialize; end

  def main (board)
    original_board = board.layout
    puts(board.layout)
    available_spaces = available_spots(board.layout)
    available_spaces.each do |index|
      board.update_board("O", index)
      if board.check_winning?
        return index
        break
      else
        board.layout = original_board
      end
      # return index if board.check_winning? break
    end
    # 6
  end

  def available_spots(layout)
    empty_spaces = []
    layout.each_with_index do |i,j|
      empty_spaces << j if i == ''
    end
    empty_spaces
  end 

  def input
    @move = rand(9).to_s
  end

  def is_valid?
    # may add q option for quitting app.
    allowed_characters = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
    allowed_characters.include?(@move)
  end
end

