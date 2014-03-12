module KnightsTour
  class OuterEdgeStrategy
    attr_accessor :visited

    def initialize(opts={})
      @knight = opts.fetch(:knight, Knight.new(position: [0, 0]))
      @visited = []
    end

    def select_move
      moves = @knight.moves - @visited
      moves.first
    end

    def visit(move)
      @knight.position = move
      @visited << move
    end

    def success?
      @visited.size == 64
    end

  end
end
