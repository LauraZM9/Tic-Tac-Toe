require_relative "../lib/outcome"
require_relative "../lib/board"


TESTING_COMBINATIONS = {
  # one row
  ['X','X','X','','O','','','',''] => true,
  # one column
  ['X','O','O','X','O','','X','',''] => true,
  # one diagonal
  ['X','','','','X','','','','X'] => true,
  # one false
  ['X','X','','','O','','','',''] => false
}

describe Outcome do 
  TESTING_COMBINATIONS.each do |key, value|
    it "gets winning combination and returns the winner" do
      # Arrange
      input_board = key
      
      # Act
      result = Outcome.check_winning?(input_board)

      # Assert 
      expect(result).to eq(value)
    end
  end

  it "can return when there has been a tie" do
    #Arrange
    board = Board.new
    move_num = 9

    #Act
    board_layout = board.layout
    result = Outcome.is_tie?(board_layout, move_num)
    
    #Assert
    expect(result).to eq(true)
  end
end
