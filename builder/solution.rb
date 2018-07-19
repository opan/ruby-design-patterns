class BaseVehicle
  attr_accessor :wheels, :seats, :structure
end

class Vehicle < BaseVehicle
  def initialize(final_material)
    @final_material = final_material
    @wheels = final_material.wheels
    @seats = final_material.seats
    @structure = final_material.structure
  end
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

class ManufacturingDirector
  attr_accessor :raw_material

  def initialize(type = :car)
    case type
    when :car
      @raw_material = Car.new
    when :motorbike
      @raw_material = Motorbike.new
    end
  end

  def set_wheels
    @raw_material.set_wheels
  end

  def set_seats
    @raw_material.set_seats
  end

  def set_structure
    @raw_material.set_structure
  end

  def get_vehicle
    Vehicle.new(@raw_material)
  end
end

manufacture = ManufacturingDirector.new(:car)
manufacture.set_wheels
manufacture.set_seats
manufacture.set_structure

vehicle = manufacture.get_vehicle
