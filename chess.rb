require_relative "piece.rb"
require_relative "table.rb"


tablero =Table.new
tablero.load_table_from_file
# tablero.create_piece
tablero.show_table