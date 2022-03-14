# frozen_string_literal: true

class Board
  attr_accessor :layout
  attr_reader :winning_combos

  def initialize
    @layout = ['', '', '', '', '', '', '', '', '']

    @winning_combos = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 4, 8],
    [2, 4, 6],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]
  end

  def print_layout
    puts "#{@layout[0]} | #{@layout[1]} | #{@layout[2]}"
    puts '---------'
    puts "#{@layout[3]} | #{@layout[4]} | #{@layout[5]}"
    puts '---------'
    puts "#{@layout[6]} | #{@layout[7]} | #{@layout[8]}"
  end

  def space_available?(move)
    @layout[move] != 'X' && @layout[move] != 'O'
  end

  def update_board(letter, position)
    @layout[position] = letter
    @layout
  end

  def remove_mark(position)
    @layout[position] = ''
    @layout
  end

  def tie?(move_num)
    @layout.length == move_num
  end

  def win?
    result = false
    @winning_combos.each do |i, j, k|
      unless invalid_elements?(i, j, k)
        next result = equal_elements?(i, j, k) if equal_elements?(i, j, k)
      end
    end
    result
  end

  private

  def invalid_elements?(index1, index2, index3)
    @layout[index1] == '' &&
    @layout[index2] == '' &&
    @layout[index3] == ''
  end

  def equal_elements?(index1, index2, index3)
    @layout[index1] == @layout[index2] &&
    @layout[index2] == @layout[index3] &&
    @layout[index3] == @layout[index1]
  end
end
