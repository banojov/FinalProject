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
		(0..3).each do |row|
			print "       "
		(0..3).each do |col|
			print @defineframe[row][col]
			print " | " unless col == 2
		end
		print "\n"
	end
		print "\n"
	end

	def winner
		(0..3)each.do|i|
		 if @board[i][0]==@board[i][1] && @board[i][1] == @board[i][2]
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
		
