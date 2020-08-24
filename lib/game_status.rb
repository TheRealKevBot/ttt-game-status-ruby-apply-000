# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
# Define your WIN_COMBINATIONS constant
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

#Won?
def won?(board)
 WIN_COMBINATIONS.each do |win_combo|
   win1 = win_combo[0] 
   win2 = win_combo[1]
   win3 = win_combo[2]
   win4 = win_combo[3]
   win5 = win_combo[4]
   win6 = win_combo[5]
   win7 = win_combo[6] 
   win8 = win_combo[7] 
   
   position1 = board[win1]
   position2 = board[win2]
   position3 = board[win3]
   position4 = board[win4]
   position5 = board[win5]
   position6 = board[win6]
   position7 = board[win7]
   position8 = board[win8]
   end 
  end
end 



#def won?(board)
#  WIN_COMBINATIONS.each do |win_combo| 
#   win_combo.each |board_position|
#    win = win_combo
#    won = board[win]
#    if won == "X" 
#      return win_combo 
#    elsif won == "O"
#      return win_combo
#    else 
#      return false 
#    end 
#  end 
#end 

#full?
def full?(board) 
  board.all {|position| position == "X" || position == "O"}
end

#Draw?
def draw?(board) 
  if full?(board) && !won?(board)
    puts "Seems to be a draw partner...Game Over"
    return true 
  else 
    return false 
  end
end

#Over?
def over?(board)
  if won?(board) || full?(board) || draw?(board)
    puts "Please play again"
    return true
  else
    return false
  end 
end 

#Winner?
def winner?(board)
  if won?(board) == "X"
    puts "Player X has won the match!"
    return "X"
  elsif won?(board) == "O"
    puts "Player O has won the match!"
    return "O"
  else
    return nil 
  end
end