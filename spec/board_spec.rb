# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  def check_content(board_layout, content)
    truth_array = []
    board_layout.each do |element|
      truth_array << (element == content)
    end
    return true unless truth_array.include? false
  end

  it 'can see an index is not occupied with an X or an O' do
    # Arrange
    board = Board.new
    expected_result = true
    board.layout = ['X', '', '', '', 'O', '', '', '', '']
    move = 2
    # Act
    result = board.is_available?(move)
    # Assert
    expect(result).to eq(expected_result)
  end

  it 'can see an index is occupied with an X or an O' do
    # Arrange
    board = Board.new
    expected_result = false
    board.layout = ['X', '', '', '', 'O', '', '', '', '']
    move = 0
    # Act
    result = board.is_available?(move)
    # Assert
    expect(result).to eq(expected_result)
  end

  it 'will create an empty board of length 9' do
    # Arrange
    board = Board.new
    # Act
    board_layout = board.layout
    board_length = board_layout.length
    # Assert
    expect(board_length).to eq(9)
  end

  it 'will have an empty layout' do
    # Arrange
    content = ''
    board = Board.new
    # Act
    board_layout = board.layout
    check_content = check_content(board_layout, content)
    # Assert
    expect(check_content).to eq(true)
  end

  it 'update board with X' do
    # Arrange
    board = Board.new
    # Act
    updated_board_with_x = board.update_board('X', 0)
    element = updated_board_with_x[0]
    # Assert
    expect(element).to eq('X')
  end

  it 'update board with O' do
    # Arrange
    board = Board.new
    # Act
    updated_board_with_o = board.update_board('O', 1)
    element = updated_board_with_o[1]
    # Assert
    expect(element).to eq('O')
  end

  it 'will remove en element from the board' do
    # Arrange
    board = Board.new
    board.layout = [
      'X', '', '',
      '', 'O', '',
      '', '', ''
    ]
    expected_board = [
      '', '', '',
      '', 'O', '',
      '', '', ''
    ]
    # Act
    modified_board = board.remove_mark(0)
    # Assert
    expect(modified_board).to eq(expected_board)
  end

  it 'can return when there has been a tie' do
    # Arrange
    board = Board.new
    move_num = 9
    # Act
    result = board.is_tie?(move_num)
    # Assert
    expect(result).to eq(true)
  end

  TESTING_COMBINATIONS = {
    # one row
    ['X', 'X', 'X', '', 'O', '', '', '', ''] => true,
    # one column
    ['X', 'O', 'O', 'X', 'O', '', 'X', '', ''] => true,
    # one diagonal
    ['X', '', '', '', 'X', '', '', '', 'X'] => true,
    # one false
    ['X', 'X', '', '', 'O', '', '', '', ''] => false
  }.freeze

  TESTING_COMBINATIONS.each do |key, value|
    it 'gets winning combination and returns the winner' do
      # Arrange
      board = Board.new
      board.layout = key
      # Act
      result = board.check_winning?
      # Assert
      expect(result).to eq(value)
    end
  end
end
