require_relative "board"
require_relative "outcome"
require_relative "player"

def run (board, player)
  board.print_layout
  puts "It's X's turn!"
  move_position = player.input(board.layout)
  board.update_board('X', move_position)
  move_num = 1
  while move_position < 10
    board.print_layout

    if Outcome.is_tie?(board.layout, move_num)
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

    if Outcome.check_winning?(board.layout)
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