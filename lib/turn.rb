# Define empty board and display
def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

# Define method to decypher if chosen postion (input) is taken currently
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
taken
end

# Define method checking validity of chosen move (input) (incoporate #position_taken?)
def valid_move?(board, index)
  if index.between?(1,9)
    if !position_taken?(board, index)
      true
    end
  end
index.between?(0,8) && !position_taken?(board, index)
end

# Define method to convert chosen position (input) to 0 index scale
def input_to_index(user_input)
  user_input.to_i - 1
end

# Define mehtod to place player's symbol on board
def move(board, index, current_player = 'X')
  board[index] = current_player
end

# Define method to receive player's chosen move (input)
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
