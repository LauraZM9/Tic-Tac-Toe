

class Board
  attr_accessor :board

  def initialize
    @board = [0,1,2,3,4,5,6,7,8]
  end

  # def create(dimensions, content)
  #   Array.new()
  # end

  def print_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "---------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "---------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end


  def update_board(letter, element)
    @board[element] = letter
    @board
  end

end


