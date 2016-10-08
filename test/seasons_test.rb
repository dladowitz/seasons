require 'test_helper'
require "fixtures/seasonal_fruit"

class SeasonsTest < ActiveSupport::TestCase
  def setup
    @apple = SeasonalFruit.new name: "Apple"
    @orange = SeasonalFruit.new name: "Orange"
    @cherry = SeasonalFruit.new name: "Cherry"
  end

  test "check what is in season in California in january" do
    date = Date.new(2016, 1, 1)
    state = "CA"

    assert @apple.in_season?(date, state)
    assert @orange.in_season?(date, state)
    assert !@cherry.in_season?(date, state)
  end

  test "check what is in season in California in July" do
    date = Date.new(2016, 7, 1)
    state = "CA"

    assert !@apple.in_season?(date, state)
    assert !@orange.in_season?(date, state)
    assert @cherry.in_season?(date, state)
  end

  test "check what is in season in Texas in July" do
    date = Date.new(2016, 7, 1)
    state = "TX"

    assert !@apple.in_season?(date, state)
    assert @orange.in_season?(date, state)
    assert @cherry.in_season?(date, state)
  end
end
