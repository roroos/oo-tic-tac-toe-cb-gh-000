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

def won

end
}
