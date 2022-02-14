require_relative "../tictactoe"

describe TicTacToe do
  empty_board = [['','',''], ['','',''], ['','','']]
  game = TicTacToe.new
  it "Takes an X and the position" do
    # Arrange
    # game = TicTacToe.new
    expected_board = [['X','',''], ['','',''], ['','','']]

    # Act
    result = game.update_board("X",0,0)

    # Assert 
    expect(result).to eq(expected_board)
  end

  it "can return the array with a O added" do
    # Arrange
    # game = TicTacToe.new
    expected_board = [['X','',''], ['','O',''], ['','','']]

    # Act
    result = game.update_board("O",1,1)

    # Assert 
    expect(result).to eq(expected_board)
  end

  it "can return if a winner"

end