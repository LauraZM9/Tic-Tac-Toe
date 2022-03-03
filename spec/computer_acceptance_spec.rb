require_relative "../lib/computer"
require_relative "../lib/board"

describe Computer do

  it "will choose the first winning move (instead of losing)" do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [
      "X", "O", "O",
      "X", "O", "X",
      "" , "X", ""
    ]
    expected_board = [
      "X", "O", "O",
      "X", "O", "X",
      "O", "X", ""
    ]
    # act
    move = computer.main(board.layout)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end

  it "will choose the first winning move (instead of draw)" do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [ # choose another win/draw example as this is the same as firs test
      "X", "X", "O",
      "O", "O", "X",
      "" , "X", ""
    ]
    expected_board = [
      "X", "X", "O",
      "O", "O", "X",
      "O", "X", ""
    ]
    # act
    move = computer.main(board.layout)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end

  xit "will choose to play the winning spot if there is one" do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [
      "X", "", "O",
      "", "O", "",
      "" , "X", "X"
    ]
    expected_board = [
      "X", "O", "O",
      "X", "O", "X",
      "O", "X", "O"
    ]
    # act
    move = computer.main(board.layout)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end 

  it "will not alter the grid when asked to choose a move" do
  end

  it "will prevent opponent from winning if it can" do
  end

  it "will choose the first move that leads to a draw instead of losing - grid?" do
  end

  it "will choose the first losing space if loss is unavoidable" do
  end

  it "if given an empty grid, all moves will be scored as a draw" do
  end

end