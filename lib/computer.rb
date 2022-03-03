class Computer
  attr_accessor :move
  def initializer; end
  def main (board)
    6
  end

  def input
    @move = rand(9).to_s
  end

  def is_valid?
    # may add q option for quitting app.
    allowed_characters = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
    allowed_characters.include?(@move)
  end
end