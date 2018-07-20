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


class MotorBikeBuilder
  def build
    m = Motorbike.new
    m.set_wheels
    m.set_seats
    m.set_structure
    m
  end
end

class CarBuilder
  def build
    m = Car.new
    m.set_wheels
    m.set_seats
    m.set_structure
    m
  end
end

class ManufacturingDirector
  attr_accessor :builder

  def initialize(builder)
    @builder = builder
  end

  def construct
    @builder.build
  end
end

class VehicleProduct
  attr_accessor :wheels, :seats, :structure
end
