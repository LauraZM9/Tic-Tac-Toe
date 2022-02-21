class Board
  attr_accessor :layout

  def initialize
    @layout = ['' , '', '', '', '', '', '', '', '']
  end

  def print_layout
    puts "#{@layout[0]} | #{@layout[1]} | #{@layout[2]}"
    puts "---------"
    puts "#{@layout[3]} | #{@layout[4]} | #{@layout[5]}"
    puts "---------"
    puts "#{@layout[6]} | #{@layout[7]} | #{@layout[8]}"
  end

  # def valid_position?(input)
  #   if valid?
  #     update_board
  #   else
  #     ask_again
  # end

  def update_board(letter, element)
    @layout[element] = letter
    @layout
  end
end