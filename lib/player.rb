class Player
  attr_accessor :move

  def input
    # puts "What is your next move? Pick a number from 0 to 8"
    @move = gets.chomp
    # while !is_valid? || !is_available?(board)
    #   puts "This is not a valid option or the position is not available. Please choose another option:"
    #   @move = gets.chomp.to_i
    # end
    # return @move
  end

  def is_valid?
    # may add q option for quitting app.
    allowed_characters = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
    allowed_characters.include?(@move)
  end

  def quitting; end
end

# player = Player.new
# board = ['X','','','','O','','','','']
# player.input(board)