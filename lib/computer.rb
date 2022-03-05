require_relative "./board"

# BOARD = Board.new

class Computer
  attr_accessor :move
  def initialize; end

  def main (board)
    if board.empty?
      return 5 # this should be a random move
    else
      simulation_board = Board.new
      simulation_board.layout = board.layout
      available_spaces = available_spots(simulation_board.layout)
      available_spaces.each do |index|
        simulation_board.update_board("O", index)
        if simulation_board.check_winning?
          return index
          break
        else
          simulation_board.remove_mark(index)
        end
      end
    end
  end

  def available_spots(layout)
    empty_spaces = []
    layout.each_with_index do |i,j|
      empty_spaces << j if i == ''
    end
    empty_spaces
  end 

  def score_winning()
    # if winning game -> score = 1
  end

  def score_tie()
    # if tie game -> score = 0
  end

  def score_losing()
    # if losing game -> score = -1
  end

  def input
    @move = rand(9).to_s
  end

  def is_valid?
    # may add q option for quitting app.
    allowed_characters = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "q"]
    allowed_characters.include?(@move)
  end
end

