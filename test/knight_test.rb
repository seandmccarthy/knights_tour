require 'minitest/autorun'
require 'knights_tour/knight'

class TestKnight < Minitest::Test
  def setup
    @knight = KnightsTour::Knight.new
  end

  def test_moves
    @knight.position = [3, 3]
    expected = [
      [2, 5],
      [4, 5],
      [1, 4],
      [1, 2],
      [2, 1],
      [4, 1],
      [5, 4],
      [5, 2]
    ]
    assert_equal @knight.moves, expected
  end

  def test_moves_at_bottom_boundary
    @knight.position = [0, 0]
    expected = [
      [1, 2],
      [2, 1]
    ]
    assert_equal @knight.moves, expected
  end

  def test_moves_near_boundary
    @knight.position = [6, 2]
    expected = [
      [5, 4],
      [7, 4],
      [4, 3],
      [4, 1],
      [5, 0],
      [7, 0],
    ]
    assert_equal @knight.moves, expected
  end

end
