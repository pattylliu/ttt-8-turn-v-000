#display_board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(user_input)
  number = user_input.to_i - 1
end

#position_taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#valid_move
def valid_move?(board, index)
  if index.between?(0, 8) == false || position_taken?(board, index) == true
    return false
  elsif index.between?(0, 8) == true && position_taken?(board, index) == false
    return true
  end
end

#move
def move(board, index, value = "X")
  board[index] = value
end

#turn
def turn(board)
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
if valid_move?(board, index) == true
  move(board, index, value = "X")
  display_board(board)
else
  turn(board)
end
end
