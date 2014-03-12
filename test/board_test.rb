require 'minitest/autorun'
require 'knights_tour/board'

class TestBoard < Minitest::Test
  def setup
    @board = KnightsTour::Board.new
  end

  def test_visit
    expected = 64.times.map { false }
    output = []
    @board.visit { |square| output << square }
    assert_equal output, expected
  end

  def test_occupy
    @board.occupy(0, 0)
    output = []
    @board.visit { |square| output << square }
    assert_equal output[0], true
  end

  def test_valid_move
    assert @board.valid_move?(0, 0)
  end

  def test_invalid_move
    @board.occupy(0, 0)
    assert !@board.valid_move?(0, 0)
  end
end
