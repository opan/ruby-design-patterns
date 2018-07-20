require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class BuilderTest < Minitest::Test
  def test_manufacturing_car
    manufacture = ManufacturingDirector.new(:car)
    manufacture.set_wheels
    manufacture.set_seats
    manufacture.set_structure

    vehicle = manufacture.get_vehicle
    assert vehicle.wheels == 4
    assert vehicle.seats == 5
    assert vehicle.structure == 'Car'
  end

  def test_manufacturing_motorbike
    manufacture = ManufacturingDirector.new(:motorbike)
    manufacture.set_wheels
    manufacture.set_seats
    manufacture.set_structure

    vehicle = manufacture.get_vehicle
    assert vehicle.wheels == 2
    assert vehicle.seats == 2
    assert vehicle.structure == 'Motorbike'
  end
end

