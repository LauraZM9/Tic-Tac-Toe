require_relative "board"
require_relative "outcome"

def run (board)
  board.print_layout
  puts "It's X's turn!"
  puts "What is your next move? Pick a number"
  move = gets.chomp
  move_position = move.to_i
  board.update_board('X', move_position)
  move_num = 1
  while move != 'q'
    board.print_layout

    if Outcome.is_tie?(board.layout, move_num)
      print "It's a tie"
      break
    end

      # populate board
    if move_num % 2 == 0 
      puts "It's X's turn!"
      puts "What is your next move? Pick a number"
      move = gets.chomp
      move_position = move.to_i

      # while board.layout[move_position].is_a? String
      #   puts "This is not a valid position. Please choose another option:"
      #   board.print_layout
      #   move = gets.chomp
      #   move_position = move.to_i
      # end

      board.update_board('X', move_position)
    else
      puts "It's O's turn!"
      puts "What is your next move? Pick a number"
      move = gets.chomp
      move_position = move.to_i

      # while board.layout[move_position].is_a? String
      #   puts "This is not a valid position. Please choose another option:"
      #   board.print_layout
      #   move = gets.chomp
      #   move_position = move.to_i
      # end

      board.update_board('O', move_position)
    end
      # checking for a winner
    if Outcome.check_winning?(board.layout)
      board.print_layout
      puts "The winner is #{board.layout[move_position]}"
      break
    end

    move_num += 1
  end
end

board = Board.new


run(board)

#first , object, second literal board.