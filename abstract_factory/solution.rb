class BaseVehicle
  attr_accessor :wheels, :seats, :structure
end

class Car < BaseVehicle
  def set_seats
    @seats = 5
  end

  def set_wheels
    @wheels = 4
  end

  def set_structure
    @structure = 'Car'
  end
end

class Motorbike < BaseVehicle
  def set_seats
    @seats = 2
  end

  def set_wheels
    @wheels = 2
  end

  def set_structure
    @structure = 'Motorbike'
  end
end

class CarSUV < Car
  def set_structure
    super
    @structure = @structure + 'SUV'
  end
end

class MotorbikeVespa < Motorbike
  def set_structure
    super
    @structure = @structure + 'Vespa'
  end
end

class AbstractVehicleFactory
  def get_vehicle(kind)
  end
end

class CarFactory < AbstractVehicleFactory
  def get_vehicle(kind)
    case kind
    when 'suv'
      car = CarSUV.new
      car.set_wheels
      car.set_seats
      car.set_structure
      car
    end
  end 
end

class BikeFactory < AbstractVehicleFactory
  def get_vehicle(kind)
    case kind
    when 'vespa'
      bike = MotorbikeVespa.new
      bike.set_wheels
      bike.set_seats
      bike.set_structure
      bike
    end
  end
end

def get_vehicle_factory(type) 
  case type 
  when 'car'
    CarFactory.new
  when 'motorbike'
    BikeFactory.new
  end
end

