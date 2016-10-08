require 'test_helper'
# require "fixtures/fruit"

class SeasonsTest < ActiveSupport::TestCase
  test "check what is in season in California in january" do
    apple = Fruit.new "Apple"
    orange = Fruit.new "Orange"
    cherry = Fruit.new "Cherry"

    date = Date.new(2016, 1, 1)
    state = CA

    assert !apple.in_season?(date, state)
    assert orange.in_season?(date, state)
    assert !cherry.in_season?(date, state)
  end

  test "check what is in season in California in June" do
    apple = Fruit.new "Apple"
    orange = Fruit.new "Orange"
    cherry = Fruit.new "Cherry"

    date = Date.new(2016, 1, 1)
    state = CA

    assert !apple.in_season?(date, state)
    assert !orange.in_season?(date, state)
    assert cherry.in_season?(date, state)
  end
end
