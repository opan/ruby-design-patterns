require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class AbstractFactoryTest < Minitest::Test
  def test_return_increment_value_with_single_instance
    cash = Cash.new
    assert_output(/Pay for 20 with cash/) { cash.pay(20) }
  end
end

