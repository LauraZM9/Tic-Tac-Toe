require_relative "../board.rb"

describe Board do
  
  def check_matrix_content(matrix, content)
    matrix_to_array = matrix.to_a.flatten
    truth_array = Array.new

    matrix_to_array.each do |element| 
      truth_array << (element == "H")
    end
    unless truth_array.include? false
      return true
    end

  end


  it "will create a matrix with the right row number" do
    # Arrange
    board_3x3= Board.new(3, "H")

    # Act
    board_matrix = board_3x3.board
    row_count = board_matrix.row_count

    # Assert 
    expect(row_count).to eq(3)
  end

  it "will create a matrix with the right column number" do
    # Arrange
    board_3x3= Board.new(3, "H")

    # Act
    board_matrix = board_3x3.board
    column_count = board_matrix.column_count

    # Assert 
    expect(column_count).to eq(3)
  end

  it "can check the content of the matrix" do
    # Arrange
    content = "H"
    board_3x3= Board.new(3, content)

    # Act
    board_matrix = board_3x3.board
    check_content = check_matrix_content(board_matrix, content)

    # Assert 
    expect(check_content).to eq(true)
  end


  it "update board with X" do
    #Arrange
    new_board = Board.new(3,"")

    # Act
    updated_boardX = new_board.update_board("X",0,0)
    element = updated_boardX[0, 0]
    # Assert 
    expect(element).to eq("X")
  end

  it "update board with O" do
    #Arrange
    new_board = Board.new(3,"")

    # Act
    updated_boardO = new_board.update_board("O",1,2)
    element = updated_boardO[1, 2]
    # Assert 
    expect(element).to eq("O")
  end
end