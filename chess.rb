require_relative "piece.rb"
require_relative "table.rb"
require_relative "rook.rb"
require_relative "knight.rb"
require_relative "pawn.rb"
require_relative "bishop.rb"


tablero = Table.new
tablero.load_table_from_file
  # tablero.show_table
tablero.validator_play
tablero.save_to_file
 tablero.show_play