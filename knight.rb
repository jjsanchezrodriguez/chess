class Knight < Piece
	attr_accessor :name, :color, :posx, :posy
	def initialize(color, name, posx, posy)
		super(color, posx, posy)
		@name = name
	end
end