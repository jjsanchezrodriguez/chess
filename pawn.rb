class Pawn < Piece
	attr_accessor :name, :color, :posx, :posy
	def initialize(color, name, posx, posy)
		super(color, posx, posy)
		@name = name
	end

	def check_pos?(play_ori, play_des, tablero)
		row = 0
		col = 1

		# tablero[ play_ori[row] play_ori[col] ].color == 'b' inc = -1 : inc = 1
		puts "hola que tal desde pawn"


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
	# check_positions
	end
end