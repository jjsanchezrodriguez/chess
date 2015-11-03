class Piece
	attr_accessor :color, :posx, :posy

	def initialize(color, posx, posy)
		@color = color
		@posx = posx
		@posy = posy
	end
end

class Bishop < Piece
	attr_accessor :name, :color, :posx, :posy
	def initialize( color, name, posx, posy)
		super(color, posx, posy)
		@name = name
	end
end

class Queen < Piece
	attr_accessor :name, :color, :posx, :posy
	def initialize(color, name, posx, posy)
		super(color, posx, posy)
		@name = name
	end
end

class King < Piece
	attr_accessor :name, :color, :posx, :posy
	def initialize(color, name, posx, posy)
		super(color, posx, posy)
		@name = name
	end
end

