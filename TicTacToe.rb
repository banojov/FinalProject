class Board

	def initialize
		@board= Array.new(3) { Array.new(3," ") }
	end

	def defineframe
		puts "1 | 2 | 3 |",
			 "4 | 5 | 6 |",
			 "7 | 8 | 9 |"
		print "\n"
	end

	def printboard
		(0..2).each do |row|
			print "       "
		(0..2).each do |col|
			print @board[row][col]
			print " | " unless col == 2
		end
		print "\n"
		print "\n         " unless row == 2
	end
		print "\n"
	end
	
	def isTie
		@board.join.split('').include?(" ")
	end

	def winner
		#sides win
		(0..2).each do |i|
		 if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
		 		return @board[i][0] unless @board[i][0] == " "

		elsif @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
			return @board[0][i] unless @board[0][i] == " "
		end	
	end
		#diagonal "x"

		if (@board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]) ||
			(@board[0][2] == @board[1][1] && @board[1][1] == @board[2][0])
			return @board[1][1] unless @board[1][1] == " "
		end

		return "C" unless isTie

		return "U"

		end 
	def empty(row,col)
		@board[row][col] === " "
	end

	def inBoard(row,col)
		(0...3) == row and (0...3) === col
	end

	def EmptySpot(row,col)
		@board[row][col] === " "
	end

	def isMoveValid(row,col)
		EmptySpot(row,col) and inBoard(row, col)
	end

	def disregrad(piece,row,col)
		@board[row][col] = piece if isMoveValid(row,col)
		end
	end

	def userMove(player)
		puts " #{player} turn  Choose move",
	move=gets.chomp.to_i-1
	row = move / 3
	col = move % 3
	return row,col
end

def hasWon(winner,board)
	if winner == "Comp"
		puts " Computer has Won"
	else
		puts " #{player} won "
	end
	board.printboard
end

def TicTacToe(boardClass)
	board=boardClass.new
	player = "X"

	while not board.winner

		row,col = isMoveValid(player)
		clear_screen

		if board.disregrad(player,row,col)
			if player == "X"
				player = "O"
			else
				player = "X"
			end
		else
			puts " Not a Valid Move"
		end

		board.printboard
	end
		isWinner=board.hasWon

		hasWon(winner,board)
	end

	