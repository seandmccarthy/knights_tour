module KnightsTour
  class Knight
    attr_writer :position

    X = 0
    Y = 1

    def initialize(opts={})
      @position = opts.fetch(:position, [0, 0])
    end

    def moves
      [
        check(up up left @position),
        check(up up right @position),
        check(left left up @position),
        check(left left down @position),
        check(down down left @position),
        check(down down right @position),
        check(right right up @position),
        check(right right down @position)
      ].compact
    end

    private

    def check(pos)
      pos if pos[X] >= 0 && pos[X] < 8 && pos[Y] >= 0 && pos[Y] < 8
    end

    def up(pos)
      [pos[X], pos[Y] + 1]
    end

    def down(pos)
      [pos[X], pos[Y] - 1]
    end

    def left(pos)
      [pos[X] - 1, pos[Y]]
    end

    def right(pos)
      [pos[X] + 1, pos[Y]]
    end

  end
end
