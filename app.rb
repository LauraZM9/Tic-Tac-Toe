require_relative "lib/board"
require_relative "lib/player"
require_relative "lib/computer"

def run (board, player, computer)
  board.print_layout
  puts "It's X's turn!"
  move_position = next_move(board, player)
  board.update_board('X', move_position)
  move_num = 1
  while move_position != -1
    board.print_layout

    if board.is_tie?(move_num)
      print "It's a tie"
      break
    end

    if move_num % 2 == 0 
      puts "It's X's turn!"
      move_position = next_move(board, player)
      board.update_board('X', move_position)
    else
      puts "It's O's turn!"
      move_position = computer.main(board)
      board.update_board('O', move_position)
    end

    if board.check_winning?
      board.print_layout
      puts "The winner is #{board.layout[move_position]}"
      break
    end

    move_num += 1
  end
end

def next_move(board, player)
  puts "What is your next move? Pick a number from 0 to 8"
  move = player.input
  # move_int = move == "q" ? -1 : move.to_i 
  move_int = move.to_i
  while !player.is_valid? || !board.is_available?(move_int)
    if !player.is_valid? 
      puts "Wrong selection please select from 0-8"
    elsif !board.is_available?(move_int)
      puts "This position is taken"
    end
    move = player.input
    # output_move = move == "q" ? -1 : move.to_i 
    move_int = move.to_i
  end
  return move_int
end

board = Board.new
player = Player.new
computer = Computer.new


run(board, player, computer)