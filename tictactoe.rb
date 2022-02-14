class TicTacToe
  attr_accessor :board

  def initialize
    @board = [['','',''], ['','',''], ['','','']]
  end

  def update_board(letter, row, column)
    @board[row][column] = letter
    @board
  end

end



# game starts
# empty board
# => player makes move
# update the board
# check if counter is less than 3
# check if someone won  => if no one won => next move
# => computer makes move
# update the board 
# check if counter is less than 3
# check if someone won => if no one won => next move