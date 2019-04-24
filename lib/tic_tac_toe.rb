Class TicTacToe {

WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],

[0,3,6],
[1,4,7],
[2,5,8],

[0,4,8],
[2,4,6]
]
turnc=0
token = "X"
def initialize
board = Array.new(9, " ")
end

def display_board
  puts board
end

def input_to_index
  puts "Your turn!"
  index = gets -1
  return index
end

def move(index,token)
  board[index]=token
end

def position_taken(board,index)
if board[index]== " "
return false
else
return true
end
end

def valid_move(index)
if position_taken(board,index)==false && 0 < index < 9
return true
else
return false
end
end

def turn
  choice = input_to_index
  if valid_move(choice) == true
    move(choice,token)
    turnc++
  else
    puts "Error!"
    turn
  end
end

def turn_count
  puts turnc
end
def current_player
  if turnc % 2 == 0
    token = "X"
  else
    token = "O"

def won
WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  position_1 == position_2 && position_2 == position_3 && position_taken(board, win_index_1)
  end
end

def full(board)
  board.all? { |i| i=="X" || i == "O"  }
end

def draw(board)
  if !won(board) && !full(board)
    return true
  elsif !won(board) && !full(board)
    return false
  else won(board)
    return false
  end
end

def over(board)
  if draw(board) || won(board) || full(board)
    return true
  end
end
}
