class BaseVehicle
  attr_accessor :wheels, :seats, :structure
end

# class Vehicle < BaseVehicle
  # def initialize(final_material)
    # @final_material = final_material
    # @wheels = final_material.wheels
    # @seats = final_material.seats
    # @structure = final_material.structure
  # end
# end

# class BuildProcess
  # def set_wheels
    
  # end

  # def set_seats
    
  # end

  # def set_structure
    
  # end

  # def get_vehicle
    
  # end
# end

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
