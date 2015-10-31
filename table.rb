require "pry"

class Table
	def initialize	
		@tablero = Array.new(8) {Array.new(8)}
	end

	def load_table_from_file
		@tablero1 = IO.read("table_input.txt")
		
		puts @tablero1


		p = 0
		8.times do |i|
			8.times do |j|
				type = @tablero1[p..p + 3]
				if (type[0] == "-")
					@tablero[i][j] = "nil"
				else
					@tablero[i][j] = create_piece(type, i, j)
					
				end	
				p += 3
			end
			# binding.pry
		end

	end

	def create_piece(type, i, j)

		case type[1]
		when 'R'
		   Rook.new(type[0],type[1],i,j)	
		when 'N'
		   Knight.new(type[0],type[1],i,j)
		when 'B'
		   Bishop.new(type[0],type[1],i,j)	
		when 'Q'
		   Queen.new(type[0],type[1],i,j)
		when 'K'
		   King.new(type[0],type[1],i,j)	
		when 'P'
		   Pawn.new(type[0],type[1],i,j)
		end

		
	end

	def show_table
		8.times do |i|
			8.times do |j|
				if(@tablero[i][j] == "nil")
					print "--- "
				else
	
					print "#{@tablero[i][j].color}#{@tablero[i][j].name}#{@tablero[i][j].posx}#{@tablero[i][j].posy} "
				end
			end
			puts
		end
	end
	
end