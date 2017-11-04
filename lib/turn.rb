def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(a, b)
  if b>9 || b<0
    false
  else
    if position_taken?(a, b)
      false
    else
      true
    end
  end
end

def MOVE(array, index, value="X")
  array[index]=value
end

def position_taken?(a, b)
  if a[b] === " "
    false
  elsif a[b] === ""
    false
  elsif a[b] === nil
    false
  elsif a[b] === "O" || a[b] === "X"
    true
  end
end
