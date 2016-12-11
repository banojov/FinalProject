class Board

	def initialize
		@board= Array.new(3)
		{Array.new(3," ")}
	end

	def printframe
		puts "1 | 2 | 3 |",
			 "4 | 5 | 6 |",
			 "7 | 8 | 9 |"
		print "\n"