# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], #Bottom row
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won(board)

  WIN_COMBINATIONS.each do |win_c|
    if board[win_c[0]]==board[win_c[1]] && board[win_c[1]]==board[win_c[2]]
      return win_c
    end
  end
end
