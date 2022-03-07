class Board
  attr_accessor :layout
  attr_reader :winning_combos

  def initialize
    @layout = ['' , '', '', '', '', '', '', '', '']

    @winning_combos = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,4,8],
    [2,4,6],
    [0,3,6],
    [1,4,7],
    [2,5,8]
    ]
  end

  def print_layout
    puts "#{@layout[0]} | #{@layout[1]} | #{@layout[2]}"
    puts "---------"
    puts "#{@layout[3]} | #{@layout[4]} | #{@layout[5]}"
    puts "---------"
    puts "#{@layout[6]} | #{@layout[7]} | #{@layout[8]}"
  end

  def is_available?(move)
    @layout[move] != "X" && @layout[move] != "O"
  end

  def update_board(letter, position)
    @layout[position] = letter
    @layout
  end

  def remove_mark(position)
    @layout[position] = ''
    @layout
  end

  def is_tie?(move_num)
    @layout.length == move_num
  end

  def check_winning?
    result = false
    @winning_combos.each do |i,j,k|
      unless invalid_elements?(i, j, k)
        if elements_equal?(i, j, k)
          result = elements_equal?(i, j, k)
        end
      end
    end
    result
  end

  def empty?
    # same as check content -> TODO: remove duplications
    truth_array = Array.new
    @layout.each do |element| 
      truth_array << (element == '')
    end
    unless truth_array.include? false
      return true
    end
  end

  private

  def invalid_elements? (index1, index2, index3)
    @layout[index1] == '' && 
    @layout[index2] == '' && 
    @layout[index3] == ''
  end

  def elements_equal? (index1, index2, index3)
    @layout[index1] == @layout[index2] && 
    @layout[index2] == @layout[index3] &&
    @layout[index3] == @layout[index1]
  end
end