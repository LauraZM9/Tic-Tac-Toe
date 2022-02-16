require 'Matrix'

class Board
  attr_accessor :dimensions, :content, :board

  def initialize(dimensions, content)
    @dimensions = dimensions
    @content = content
    @board = create(dimensions, content)
  end

  def create(dimensions, content)
    board = Matrix.build(dimensions){content}
  end

  def print_board
    @board.to_a.each do |i,j,k|
      print " #{i} | #{j} | #{k} \n "
    end
  end
end


first = Board.new(3, "H")
first.print_board