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
		p = 0
		8.times do |i|
			8.times do |j|
				type = @tablero1[p..p + 3]
				@tablero[i][j] = create_piece(type, i, j)
			end
			p += 3
		end

	end

	def create_piece(type, i, j)
		piece = Piece.new("a","N","1","2")	
	end

	def show_table
		8.times do |i|
			8.times do |j|
				puts @tablero[i][j]
			end
		end
	end
	
end