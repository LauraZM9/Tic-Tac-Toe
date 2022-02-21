WINNING_COMBOS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

class Outcome
  def self.check_winning?(all_elements)
    WINNING_COMBOS.each do |i,j,k|
      unless invalid_elements?(all_elements, i, j, k)
        if all_elements_equal?(all_elements, i, j, k)
          return true
          break
        else
          return false
        end
      end
    end
  end

  def self.is_tie?(board_layout, move_num)
    if board_layout.length == move_num
      return true
    end
  end

  private

  def self.invalid_elements? (all_elements, index1, index2, index3)
    all_elements[index1] == '' && 
    all_elements[index2] == '' && 
    all_elements[index3] == ''
  end

  def self.all_elements_equal? (all_elements, index1, index2, index3)
    all_elements[index1] == all_elements[index2] && 
    all_elements[index2] == all_elements[index3] &&
    all_elements[index3] == all_elements[index1]
  end
end


# app - calling game functions def game - call print , call update, puts messages to players. 
# board - creating / updating board.
# player - structuring player moves .