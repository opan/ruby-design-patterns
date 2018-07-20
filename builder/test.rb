require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class BuilderTest < Minitest::Test
  def test_manufacturing_car
    builder = CarBuilder.new
    manufacture = ManufacturingDirector.new(builder)
    vehicle = manufacture.construct

    assert vehicle.wheels == 4
    assert vehicle.seats == 5
    assert vehicle.structure == 'Car'
  end

  def test_manufacturing_motorbike
    builder = MotorBikeBuilder.new
    manufacture = ManufacturingDirector.new(builder)
    vehicle = manufacture.construct

    assert vehicle.wheels == 2
    assert vehicle.seats == 2
    assert vehicle.structure == 'Motorbike'
  end
end

