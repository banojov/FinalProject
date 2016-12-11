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
	