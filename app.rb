require_relative "game"
require_relative "board"

def run (board, game)
  board.print_board
  puts "It's X's turn!"
  puts "What is your next move? Pick a number"
  move = gets.chomp
  move_position = move.to_i
  board.update_board('X', move_position)
  move_num = 1
  while move != 'q'
    board.print_board

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

      while board.board[move_position].is_a? String
        puts "This is not a valid position. Please choose another option:"
        board.print_board
        move = gets.chomp
        move_position = move.to_i
      end

      board.update_board('X', move_position)
    else
      puts "It's O's turn!"
      puts "What is your next move? Pick a number"
      move = gets.chomp
      move_position = move.to_i

      while board.board[move_position].is_a? String
        puts "This is not a valid position. Please choose another option:"
        board.print_board
        move = gets.chomp
        move_position = move.to_i
      end

      board.update_board('O', move_position)
    end
      # checking for a winner
    if game.check_winning(board.board) == true
      puts "The winner is #{board.board[move_position]}"
      break
    end

    move_num += 1
  end
end

board = Board.new
game = Game.new

run(board, game)

#first , object, second literal board.