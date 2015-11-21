class Bishop < Piece
	attr_accessor :name, :color, :posx, :posy
	def initialize(color, name, posx, posy)
		super(color, posx, posy)
		@name = name
	end	

	def check_pos?(play_ori, play_des, tablero)
		row = 0
		col = 1
		walk = play_des[row] - play_ori[row]

		i = 0
		while i < walk
			tablero[play_des[row]] [play_des[col]]
				
			i += 1
		end
		puts walk.abs
		# if(play_ori[row] == play_des[row] && play_ori[col] != play_des[col])||(play_ori[row] != play_des[row] && play_ori[col] == play_des[col])
		# 		#cuando es en horizontal
		# 	if play_ori[col] == play_des[col] 
		# 		pos = pos_ini_fin(play_ori, play_des, row, col)
		# 		check_positions = check?(pos[0], pos[1], play_ori[col], tablero,1)
		# 	end	
		# 		#cuando es en vertical
		# 	if play_ori[row] == play_des[row] 
		# 		pos = pos_ini_fin(play_ori, play_des, col, row)
		# 		check_positions = check?(pos[0], pos[1], play_ori[row], tablero,0)
		# 	end	
		# end	
		check_positions = true
	end

	def pos_ini_fin(play_ori, play_des, row, col)
		if play_ori[row] < play_des[row]
			initial = play_ori[row] + 1
			limit   = play_des[row]
		else
			initial = play_des[row]
			limit   = play_ori[row] - 1
		end
		[initial, limit]
	end

	def check?(muevete, limit, fijo, tablero, sentido)
		check_positions = true
		while(muevete <= limit && check_positions == true)
			if sentido == 1
				if(tablero[muevete][fijo] != nil)
					check_positions = false;
				end	
			else
				if(tablero[fijo][muevete] != nil)
					check_positions = false;
				end	
			end	
			muevete += 1
		end
		check_positions
	end		
end