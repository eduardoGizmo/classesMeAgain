require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fishes.rb')



class RiverTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish = Fishes.new("Nemo")
    @river = River.new("Amazon")
  end

  def test_take_fish
    @river.add_fish(@fish)
    @bear.take_fish(@fish)
    assert_equal(1, @bear.food_count)
  end

  def test_roar
    assert_equal("grraaaauuuu!", @bear.roar)
  end

end
