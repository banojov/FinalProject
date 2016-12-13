class Board

  def initialize
    @board = Array.new(3) { Array.new(3, " ") }
  end
  
  #how the bord will look like 
  def defineboard
    puts "1 | 2 | 3",
         "4 | 5 | 6",
         "7 | 8 | 9"
    print "\n"
  end
  
  #the function if a tie happens 
  def is_Tie
  @board.join.split('').include?(" ")
  end

  #print board after each of the players choose their "X" or "O" move 
  def print_Board
    (0...3).each do |row|
      print "       "
      (0...3).each do |col|
        print @board[row][col]
        print " | " unless col == 2
      end
      print "\n"
      print  unless row == 2
    end
    print "\n"
  end
  # all the possible wins 
  def find_Winner
    #diagonal wins 
     if ( @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] ) ||
       ( @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] )
      return @board[1][1] unless @board[1][1] == " "
    end
    #wins on the sides 
        (0...3).each do |i|
      if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
        return @board[i][0] unless @board[i][0] == " "

      elsif @board[1][i] == @board[2][i] && @board[0][i] == @board[1][i]  
        return @board[0][i] unless @board[0][i] == " "
      end
    end
    # the game is tied 
    return "C" unless is_Tie

    # Undecided

    return "U"
  end
  #remove a spot that is already taken 
  def remove(piece, row, col)
    @board[row][col] = piece if (0...3) === row &&
                                (0...3) === col &&
                                @board[row][col] == " "
  end
end

#let the game begin 
board = Board.new
currentplayer = "X"

puts "\n" * 100
board.defineboard

while board.find_Winner == "U"

  puts " #{currentplayer}'s turn. Choose a Number!"

  moves = gets.chomp.to_i - 1
  row = moves / 3
  col = moves % 3

  if board.remove(currentplayer, row, col)
    if currentplayer == "X"
      currentplayer = "O"
    else
      currentplayer = "X"
    end
  else
    puts "Invalid move, please select again\n\n"
  end

  board.print_Board
end

winner = board.find_Winner

  if winner == "C"
    puts "   PLAYER C WON G A M E"
  else
    puts "     #{winner} ' S   W I N"
  end

puts "\n"
board.print_Board
