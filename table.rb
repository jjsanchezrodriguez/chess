require_relative "piece.rb"
require "pry"
class Table
	attr_accessor :tablero

	def initialize	
		@tablero = Array.new(8) {Array.new(8)}
		@output = []
	end

	def load_table_from_file
		tableroaux = IO.read("table_input.txt")

		p = 0
		8.times do |i|
			8.times do |j|
				type = tableroaux[p..p + 3]
				@tablero[i][j] = create_piece(type, i, j)
				p += 3
			end
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
			else
				nil   
		end	
	end

	def show_table
		8.times do |i|
			8.times do |j|
				if(@tablero[i][j] == nil)
					print "--- "
				else
					print "#{@tablero[i][j].color}#{@tablero[i][j].name}#{@tablero[i][j].posx}#{@tablero[i][j].posy} "
				end
			end
			puts
		end
	end

	def validator_play
		@play = []
		# File.open('play_input.txt', 'r') do |f1|
		#   while aux = f1.gets
			aux = "d7 d5"
		    pos_ori = aux[0..1]
		    pos_des = aux[3..4]
		    pos_play_ori = map_pos_file(pos_ori)
		    pos_play_des = map_pos_file(pos_des)
		    is_posible_make_move(pos_play_ori, pos_play_des)
			
		 	# end 
		#end
	end

	def is_posible_make_move(pos_play_ori, pos_play_des)
		if(pos_play_ori == nil || pos_play_des == nil)
	    	output_game(pos_play_ori, pos_play_des, "ILEGAL")
	    else
	    	make_move(pos_play_ori, pos_play_des)
	    end	
	end

	def make_move(pos_play_ori, pos_play_des)
    	piece_ori = @tablero[pos_play_ori[0]] [pos_play_ori[1]]
    	output = "ILEGAL"
    	if piece_ori.check_pos?(pos_play_ori,pos_play_des, @tablero)
    		output = "LEGAL"
    	end
    	output_game(pos_play_ori, pos_play_des, output)
	end


	def show_play
		puts @play
	end

	def map_pos_file(pos)
		pos_col = (pos[0].downcase.ord - 97).to_i
		pos_row = 8  - pos[1].to_i 
		if(pos_col < 0 || pos_col >7 || pos_row < 0 || pos_row >7)
			return nil
		else
			[pos_row, pos_col]
		end	
	end

	def output_game(pos_play_ori, pos_play_des, type)
		# @output.push(pos_play_ori.to_s + pos_play_ori.to_s + type)
		# puts @output
		puts type
	end

	def save_to_file
		# final
	end
	
end