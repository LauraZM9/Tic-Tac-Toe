require_relative "lib/board"
# require_relative "lib/outcome"
require_relative "lib/player"

def run (board, player)
  board.print_layout
  puts "It's X's turn!"
  move_position = player.input(board.layout)
  board.update_board('X', move_position)
  move_num = 1
  while move_position != "q"
    board.print_layout

    if board.is_tie?(move_num)
      print "It's a tie"
      break
    end

    if move_num % 2 == 0 
      puts "It's X's turn!"
      move_position = player.input(board.layout)
      board.update_board('X', move_position)
    else
      puts "It's O's turn!"
      move_position = player.input(board.layout)
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

board = Board.new
player = Player.new


run(board, player)

#first , object, second literal board.