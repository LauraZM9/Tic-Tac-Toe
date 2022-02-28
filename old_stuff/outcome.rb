class Outcome
  @WINNING_COMBOS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,4,8],
    [2,4,6],
    [0,3,6],
    [1,4,7],
    [2,5,8]
  ]
  def self.check_winning?(board)
    result = false
    @WINNING_COMBOS.each do |i,j,k|
      unless invalid_elements?(board, i, j, k)
        if elements_equal?(board, i, j, k)
          result = elements_equal?(board, i, j, k)
        end
      end
    end
    result
  end

  # backup just incase
          # if elements_equal?(board, i, j, k)
        #   return true
        #   puts "hello"
          # break
        # else
        #   return false
        #   puts "goodbye"

  def self.is_tie?(board_layout, move_num)
    board_layout.length == move_num
  end

  private

  def self.invalid_elements? (board, index1, index2, index3)
    board[index1] == '' && 
    board[index2] == '' && 
    board[index3] == ''
  end

  def self.elements_equal? (board, index1, index2, index3)
    board[index1] == board[index2] && 
    board[index2] == board[index3] &&
    board[index3] == board[index1]
  end
end
# Outcome.check_winning?(['X','O','O','X','O','','X','',''])
# Outcome.check_winning?(['X','O','O','X','O','','X','',''])

# app - calling game functions def game - call print , call update, puts messages to players. 
# board - creating / updating board.
# player - structuring player moves