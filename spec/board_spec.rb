require_relative "../board.rb"

describe Board do
  
  def check_content(board_layout, content)
    truth_array = Array.new
    board_layout.each do |element| 
      truth_array << (element == content)
    end
    unless truth_array.include? false
      return true
    end
  end


  it "will create an empty board of length 9" do
    # Arrange
    board = Board.new

    # Act
    board_layout = board.layout
    board_length = board_layout.length()

    # Assert 
    expect(board_length).to eq(9)
  end

  it "will have an empty layout" do
    # Arrange
    content = ''
    board= Board.new

    # Act
    board_layout = board.layout
    check_content = check_content(board_layout, content)

    # Assert 
    expect(check_content).to eq(true)
  end

  it "update board with X" do
    #Arrange
    board = Board.new

    # Act
    updated_boardX = board.update_board("X",0)
    element = updated_boardX[0]
    
    # Assert 
    expect(element).to eq("X")
  end

  it "update board with O" do
    #Arrange
    board = Board.new 

    # Act
    updated_boardO = board.update_board("O",1)
    element = updated_boardO[1]

    # Assert 
    expect(element).to eq("O")
  end

  
end