Class TicTacToe {

WIN_COMBINATIONS = [
[0,1,2]
[3,4,5]
[6,7,8]

[0,4,8]
[2,4,6]
]
turnc=0
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
end

def position_taken(index)
if board[index]== " "
return false
else
return true
end
end

def valid_move(index)
if position_taken(index)==false && 0 < index < 9
return true
else
return false
end
end

def turn
  choice = input_to_index
  if valid_move(choice) == true
    move(choice,token)
  else
    puts "Error!"
    turn
  end
end

def turn_count
  turnc++
}
