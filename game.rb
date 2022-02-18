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

class Game 

  def check_winning (all_elements)
    
    WINNING_COMBOS.each do |i,j,k|
      unless all_elements[i] == '' && all_elements[j] == '' && all_elements[k] == ''
      #unless elements_numbers?(i,j,k)
        if all_elements[i] == all_elements[j] && all_elements[j] == all_elements[k]
          # if all_elements_equal?(i, j, k)
          return true
          break
        # else 
        #   return false
        end
      end
    end
  end
end


# app - calling game functions def game - call print , call update, puts messages to players. 
# board - creating / updating board.
# player - structuring player moves .