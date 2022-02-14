class TicTacToe
  attr_accessor :board

  def initialize
    @board = [['','',''], ['','',''], ['','','']]
  end

  def update_board(letter, row, column)
    @board[row][column] = letter
    @board
  end

  def check_winning(input_board)
    winning_combo = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,4,8],
      [2,4,6],
      [0,3,6],
      [1,4,7],
      [2,5,8]
    ]
    all_elements = input_board.flatten
    winning_combo.each do |i,j,k|
      unless all_elements[i] == '' && all_elements[j] == '' && all_elements[k] == ''
        if all_elements[i] == all_elements[j] && all_elements[j] == all_elements[k]
          # winning combination
          # puts "There's a winner"
          # who's the winner
          return all_elements[i]
          break
        else 
          # no winning
          "No winner"
        end
      end
    end
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