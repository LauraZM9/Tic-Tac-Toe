# frozen_string_literal: true

class Player
  attr_accessor :move

  def input
    @move = gets.chomp
  end

  def valid?
    # may add q option for quitting app.
    allowed_characters = %w[0 1 2 3 4 5 6 7 8 q]
    allowed_characters.include?(@move)
  end

  def quitting; end
end
