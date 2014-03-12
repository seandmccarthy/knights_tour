require 'minitest/autorun'
require 'knights_tour/outer_edge_strategy'

class OuterEdgeStrategyTest < Minitest::Test
  def setup
    @strategy = KnightsTour::OuterEdgeStrategy.new
  end

  def test_run
    begin
      move = @strategy.select_move
      fail "No valid moves" if move.nil?
      @strategy.visit(move)
      puts @strategy.visited.count
    end until @strategy.success?
    pass
  end
end
