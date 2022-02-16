class TicTacToe
  attr_accessor :board

  def initialize
    @board = [['','',''], ['','',''], ['','','']]
  end

  def print_board
    @board.each do |i,j,k|
      # print "-------- \n"
      print " #{i} | #{j} | #{k} \n "
    end
    # print "⌎--------⌏ \n"
  end

  def game
    moves = 0
    while moves != 9
      if moves % 2 == 0 
        row, column = player_one_move
        update_board('X', row, column)
      else
        row, column = player_one_move
        update_board('O', row, column)
      end
      check_winning
      moves += 1
    end
    # code for tie = no one wins
    puts "It's a tie"
  end

  def player_one_move
    print_board
    puts "what coordinates would you like to place an X"
    move = gets.chomp
    row = move[0].to_i
    column = move[1].to_i
    return row, column
  end

  def update_board(letter, row, column)
    @board[row][column] = letter
    @board
  end

  def check_winning
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
    all_elements = @board.flatten
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

tictactoe_game = TicTacToe.new
tictactoe_game.game


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