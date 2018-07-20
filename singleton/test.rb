require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class SingletonTest < Minitest::Test
  def test_return_increment_value_with_multiple_instance
    counter_1 = SimpleCounter.instance
    counter_1.add
    assert counter_1.count == 1
    counter_1.add
    assert counter_1.count == 2

    counter_2 = SimpleCounter.instance
    counter_2.add
    assert counter_2.count == 3
  end
end
