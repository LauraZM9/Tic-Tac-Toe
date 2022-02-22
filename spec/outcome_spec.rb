require_relative "../outcome.rb"
require_relative "../board.rb"


TESTING_COMBINATIONS = {
  # one row
  'row' => ['X','X','X','','O','','','',''],
  # one column
  'column' => ['X','','','X','O','','X','',''],
  # one diagonal
  'diagonal' => ['X','','','','X','','','','X'],
  # one false
  'wrong' => ['X','X','','','O','','','','']
}

describe Outcome do 
  it "gets winning combination and returns the winner" do
    # Arrange
    input_board = TESTING_COMBINATIONS['diagonal']
    
    # Act
    result = Outcome.check_winning?(input_board)

    # Assert 
    expect(result).to eq(false)
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
