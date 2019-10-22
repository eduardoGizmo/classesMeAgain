require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fishes')


class RiverTest < MiniTest::Test

def setup

  @river = River.new("Amazon")
  @fish = Fishes.new("Nemo")
  @fish2 = Fishes.new("Dory")

end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish
    assert_equal(1, @river.add_fish(@fish).count)
  end

  def test_lose_fish
    @river.add_fish(@fish)
    @river.lose_fish(@fish)
    assert_equal(0, @river.fish_count)
  end


end
