require_relative "../lib/player"

describe Player do
  # fit 'asks for input' do
  #   board = ['X','','','','O','','','','']
  #   player = Player.new
  #   allow(player).to receive(:gets).and_return('Ting is the best', 'Ting is still the best', 'whatsaap', '0')
  #   # expect(player).to receive(:gets)
  #   player.input(board)
  # end

  it "can find if the input matches the allowed characters" do
    #Arrange
    player = Player.new
    player.move = 0
    expected_result = true

    #Act
    result = player.is_valid?

    #Assert
    expect(result).to eq(expected_result)

  end

  it "can return false if the wrong character has been input" do
      #Arrange
      player = Player.new
      player.move = "k"
      expected_result = false

      #Act
      result = player.is_valid?

      #Assert
      expect(result).to eq(expected_result)
  end

  it "can see an index is occupied with an X or an O" do
    #Arrange
    player = Player.new
    expected_result = true
    board = ['X','','','','O','','','','']
    player.move = 2

    #Act
    result = player.is_available?(board)

    #Assert
    expect(result).to eq(expected_result)
  end

end