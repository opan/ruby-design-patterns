require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class FactoryTest < Minitest::Test
  def test_payment_cash
    cash = get_payment_method(:cash)
    assert_output(/Pay for 20 with cash/) { cash.pay(20) }
  end

  def test_payment_credit_card
    cash = get_payment_method(:cc)
    assert_output(/Pay for 20 with credit card/) { cash.pay(20) }
  end
end

