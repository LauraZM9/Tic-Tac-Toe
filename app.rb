require_relative "tictactoe"
require_relative "board"


def set_up_board
  game = Board.new(3," ")
  game.print_board
end



set_up_board