
class Player
  attr_accessor :move

  def input(board)
    puts "What is your next move? Pick a number from 0 to 8"
    move = gets.chomp 
    move_position = move.to_i
    while (is_valid?(move_position) == false) || (is_available?(board, move_position) == false)
      puts "This is not a valid position. Please choose another option:"
      move = gets.chomp
      move_position = move.to_i
    end
    return move_position
  end

  def is_valid?(move_position)
    # allowed_characters = [0, 1, 2, 3, 4, 5, 6, 7, 8, "q"]
    allowed_characters = (0..8)
    if allowed_characters.include?(move_position)
      return true
    else
      return false
    end
  end

  def is_available?(board, move_position)
    if board[move_position] == "X" || board[move_position] == "O"
      return false
    else
      return true
    end
  end

  def quitting; end
end

# player = Player.new
# board = ['X','','','','O','','','','']
# player.input(board)