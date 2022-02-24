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

  it "Gets winning combination and returns the winner" do
    # Arrange
    game = TicTacToe.new
    input_board = [['X','X','X'], ['','O',''], ['','','']]
    # expected_board = ['X','X','X','','O','','','','']
    winner = "X"

    # Act
    result = game.check_winning(input_board)

    # Assert 
    expect(result).to eq(winner)
  end

  it "Gets another winning combination and returns the winner" do
    # Arrange
    game = TicTacToe.new
    input_board = [['O','X',''], ['','O',''], ['','','O']]
    # expected_board = ['X','X','X','','O','','','','']
    winner = "O"

    # Act
    result = game.check_winning(input_board)

    # Assert 
    expect(result).to eq(winner)
  end

end