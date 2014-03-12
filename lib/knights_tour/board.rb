module KnightsTour
  class Board
    def initialize
      @board = (1..8).to_a.map{ (1..8).to_a.map { false } }
    end

    def valid_move?(x, y)
      !@board[x][y]
    end

    def occupy(x, y)
      @board[x][y] = true
    end

    def visit
      @board.each_with_index do |row|
        row.each_with_index do |column|
          yield(column) if block_given?
        end
      end
    end
  end
end
