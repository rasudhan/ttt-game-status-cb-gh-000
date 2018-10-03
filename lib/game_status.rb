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

def won?(board)
  win_set=[]
  empty_board=board.all? {|x| x==" "}
  WIN_COMBINATIONS.each do |win_c|
    if empty_board || full?(board)
      return false
    elsif win_c.all?{|value| board[value]=="X"} || win_c.all?{|value| board[value]=="O"}
      win_set=win_c
    end
  end
  win_set
end

def full?(board)
   board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
