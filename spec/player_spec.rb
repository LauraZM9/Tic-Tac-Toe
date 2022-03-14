# frozen_string_literal: true

require_relative '../lib/player'

describe Player do
  it 'asks for input' do
    player = Player.new
    allow(player).to receive(:gets).and_return('hello')
    expect(player).to receive(:gets)
    player.input
  end

  it 'can find if the input matches the allowed characters' do
    # Arrange
    player = Player.new
    player.move = '0'
    expected_result = true

    # Act
    result = player.valid?

    # Assert
    expect(result).to eq(expected_result)
  end

  it 'can return false if the wrong character has been input' do
    # Arrange
    player = Player.new
    player.move = 'k'
    expected_result = false

    # Act
    result = player.valid?

    # Assert
    expect(result).to eq(expected_result)
  end
end
