# frozen_string_literal: true

require_relative './board'

class Computer
  attr_accessor :move

  def next_move(board)
    simulation_board = Board.new
    simulation_board.layout = board.layout
    available_spaces = available_spots(simulation_board.layout)
    %w[O X].each do |element|
      available_spaces.each do |index|
        simulation_board.update_board(element, index)
        if simulation_board.win?
          return index
        else
          simulation_board.remove_mark(index)
        end
      end
    end
    available_spaces.sample
  end

  def available_spots(layout)
    empty_spaces = []
    layout.each_with_index do |i, j|
      empty_spaces << j if i == ''
    end
    empty_spaces
  end

  def score_winning
    # if winning game -> score = 1
  end

  def score_tie
    # if tie game -> score = 0
  end

  def score_losing
    # if losing game -> score = -1
  end

  def input
    @move = rand(9).to_s
  end
end
