require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class AbstractFactoryTest < Minitest::Test
  def test_create_car_suv
    factory = get_vehicle_factory('car')
    car = factory.get_vehicle('suv')

    assert car.structure == 'CarSUV'
  end

  def test_create_bike_vespa
    factory = get_vehicle_factory('motorbike')
    bike = factory.get_vehicle('vespa')

    assert bike.structure == 'MotorbikeVespa'
  end
end
