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
    move = computer.main(board)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end

  it "will choose the first winning move (instead of draw)" do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [
      "O", "X", "X",
      "X", "O", "O",
      "" , "X", ""
    ]
    expected_board = [
      "O", "X", "X",
      "X", "O", "O",
      "" , "X", "O"
    ]
    # act
    move = computer.main(board)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end

  xit "if given an empty grid, all moves will be scored as a draw" do
   # arrange
   board = Board.new
   computer = Computer.new
   
   # act
   move = computer.main(board)

   # assert
   expect(move).to eq(5)
  end

  it "will choose to play the winning spot if there is one" do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [
      "X", "X", "O",
      "",  "O", "X",
      "" ,  "",  ""
    ]
    expected_board = [
      "X", "X", "O",
      "",  "O", "X",
      "O",  "",  ""
    ]
    # act
    move = computer.main(board)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end 

  xit "will not alter the grid when asked to choose a move" do
  end

  it "will prevent opponent from winning if it can" do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [
      "X", "X", "",
      "",  "O", "X",
      "" ,  "", "O"
    ]
    expected_board = [
      "X", "X", "O",
      "",  "O", "X",
      "",  "",  "O"
    ]
    # act
    move = computer.main(board)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end

  it "will prevent opponent from winning if it can in a different scenario" do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [
      "X", "", "",
      "X",  "", "X",
      "O" ,  "", "O"
    ]
    expected_board = [
      "X", "", "",
      "X",  "", "X",
      "O" ,  "O", "O"
    ]
    # act
    move = computer.main(board)
    board.update_board("O", move)
    # assert
    expect(board.layout).to eq(expected_board)
  end

  xit "will choose the first move that leads to a draw instead of losing - grid?" do
  end

  xit "will choose the first losing space if loss is unavoidable" do
  end

end