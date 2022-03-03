require_relative "../lib/computer"
require_relative "../lib/board"

describe Computer do
  it 'can give a list of available spots on the board' do
    # arrange
    board = Board.new
    computer = Computer.new
    board.layout = [
      "X", "O", "O",
      "X", "O", "X",
      "" , "X", ""
    ]
    expected_spots = [6, 8]
    # act
    spots = computer.available_spots(board.layout)
    # assert
    expect(spots).to eq(expected_spots)
  end
end