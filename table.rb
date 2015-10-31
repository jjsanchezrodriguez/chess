require "pry"

class Table
	def initialize	
		@tablero = Array.new(8) {Array.new(8)}
	end

	def load_table_from_file
		@tablero1 = IO.read("table_input.txt")
		# @tablero.each do |filas|
		# 	filas.each do |columnas|
		# 		# @tablero[filas.to_i][columnas.to_i] = (filas + columnas).to_s
		# 		puts filas
		# 		puts columnas
		# 	end
			
		# end
		
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
			
		end

	end

	def create_piece(type, i, j)
		piece = Piece.new(type[0],type[1],i,j)	
		
	end

	def show_table
		8.times do |i|
			8.times do |j|
				if(@tablero[i][j]!="nil")
					print "#{@tablero[i][j].color}#{@tablero[i][j].name}#{@tablero[i][j].posx}#{@tablero[i][j].posy} "
				else
					print "---"
				end
			end
			puts
		end
	end
	
end