require_relative "../player.rb"

describe Player do
  # it 'asks for input' do
  #   board = ['X','','','','O','','','','']
  #   player = Player.new
  #   allow(player).to receive(:gets).and_return('')
  #   # expect(player).to receive(:gets)
  #   player.player_input(board)
  # end

  it "can find if the input matches the allowed characters" do
    #Arrange
    player = Player.new
    expected_result = true

    #Act
    result = player.is_valid?(0)

    #Assert
    expect(result).to eq(expected_result)

  end

  it "can return false if the wrong character has been input" do
      #Arrange
      player = Player.new
      expected_result = false

      #Act
      result = player.is_valid?("k")

      #Assert
      expect(result).to eq(expected_result)
  end

  it "can see an index is occupied with an X or an O" do
    #Arrange
    player = Player.new
    expected_result = true
    board = ['X','','','','O','','','','']
    move = 2

    #Act
    result = player.is_available?(board,move)

    #Assert
    expect(result).to eq(expected_result)
  end

end