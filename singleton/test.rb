require 'minitest/autorun'
require 'pry'
require_relative 'exercise'

class SimpleCounterTest < Minitest::Test
  def test_return_increment_value_with_single_instance
    counter = SimpleCounter.new
    assert counter.increase == 1
  end

  def test_return_increment_value_with_multiple_instance
    counter_1 = SimpleCounter.new
    assert counter_1.increase == 1
    assert counter_1.increase == 2

    counter_2 = SimpleCounter.new
    assert counter_2.increase == 3
  end
end
