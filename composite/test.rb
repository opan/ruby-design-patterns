require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class CompositeTest < Minitest::Test
  def test_calculate_salary
    division = Organization.new
    division.add_employee(Manager.new)
    division.add_employee(Staff.new)

    assert division.get_salary == 10_500_000
  end
end
