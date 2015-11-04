class Pawn < Piece
	attr_accessor :name, :color, :posx, :posy
	def initialize(color, name, posx, posy)
		super(color, posx, posy)
		@name = name
	end

	def check_pos?(play_ori, play_des, tablero)
		row = 0
		col = 1
		aux = []
		aux[row] = play_ori[row]
		aux[col] = play_ori[col]

		# No se puede con un || daria problemas si uno no es posible
		tablero[ play_ori[row]] [play_ori[col]].color == "b" ? inc = 1 : inc = -1
		check_positions = false
		if check_move_one?(aux, play_des, tablero, inc) 
			check_positions = true
		else
			if  check_move_two?(play_ori, play_des, tablero, inc)
				check_positions = true
			end	
			
		end

	 	check_positions 
	end

	def check_move_one?(play_ori, play_des, tablero, inc)
		row = 0
		col = 1

		play_ori[col] -= inc.abs
		play_ori[row] += inc
		i = 0
		check_positions = false
		while i < 3 && check_positions == false
			if tablero[play_des[row]] [play_des[col]] == nil && play_ori[row] == play_des[row] && play_ori[col] + i == play_des[col]
				check_positions = true
			end	
			i += 1
		end
		check_positions 
	end

	def check_move_two?(play_ori, play_des, tablero, inc)
		row = 0
		col = 1

		check_positions = false
		if tablero[play_ori[row] + inc] [play_ori[col]] == nil
			play_ori[row] += (inc * 2)
			if tablero[play_des[row]] [play_des[col]] == nil && play_ori[row] == play_des[row] && play_ori[col] == play_des[col]
					check_positions = true
			end	
		end
		check_positions 	
	end
end