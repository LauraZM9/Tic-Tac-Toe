WINNING_COMBOS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

class Game 
  attr_accessor :board

  def initialize
    @board = [0,1,2,3,4,5,6,7,8]
  end

  def game 
    print @board
    puts "It's X's turn!"
    puts "What is your next move? Pick a number"
    move = gets.chomp
    move_position = move.to_i
    update_board('X', move_position)
    move_num = 1
    while move != 'q'
      print @board

      # stops at 9
      if move_num == 9
        puts "It's a tie"
        break
      end

      # populate board
      if move_num % 2 == 0 
        puts "It's X's turn!"
        puts "What is your next move? Pick a number"
        move = gets.chomp
        move_position = move.to_i
        update_board('X', move_position)
      else
        puts "It's O's turn!"
        puts "What is your next move? Pick a number"
        move = gets.chomp
        move_position = move.to_i
        update_board('O', move_position)
      end

      # checking for a winner
      if check_winning == true
        puts "The winner is #{@board[move_position]}"
        break
      end

      move_num += 1
    end
  end

  def update_board(letter, element)
    @board[element] = letter
    @board
  end

  def check_winning
    # all_elements = @board.flatten
    all_elements = @board
    WINNING_COMBOS.each do |i,j,k|
      unless all_elements[i] == '' && all_elements[j] == '' && all_elements[k] == ''
      #unless elements_numbers?(i,j,k)
        if all_elements[i] == all_elements[j] && all_elements[j] == all_elements[k]
          # if all_elements_equal?(i, j, k)
          return true
          break
        # else 
        #   return false
        end
      end
    end
  end
end

tictactoe_game = Game.new
tictactoe_game.game