require 'minitest/autorun'
require 'minitest/pride'
require './lib/food_truck'

require 'pry';


class FoodTruckTest < Minitest::Test
  def test_it_exsists
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    assert_instance_of FoodTruck, food_truck
  end
end
