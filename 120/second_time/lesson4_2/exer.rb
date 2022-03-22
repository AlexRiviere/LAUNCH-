# class KrispyKreme
#   def initialize(filling_type, glazing)
#     @filling_type = filling_type
#     @glazing = glazing
#   end
  
#   def to_s
#     @filling_type = "Plain" if @filling_type == nil
#     if @filling_type && @glazing
#       "#{@filling_type} with #{@glazing}"
#     else
#       "#{@filling_type}"
#     end
#   end
# end

# donut1 = KrispyKreme.new(nil, nil)
# donut2 = KrispyKreme.new("Vanilla", nil)
# donut3 = KrispyKreme.new(nil, "sugar")
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# donut5 = KrispyKreme.new("Custard", "icing")

# puts donut1
# puts donut2
# puts donut3
# puts donut4
# puts donut5



# class SecretFile
#   attr_reader :data

#   def initialize(secret_data, name)
#     @logger = SecurityLogger.new(name)
#     @data = secret_data
#   end
# end

# class SecurityLogger
#   @@log = []
  
#   def initialize(name)
#     @name = name
#     create_log_entry
#   end
  
#   def self.log
#     @@log
#   end
  
#   def create_log_entry
#     @@log << [@name, Time.new]
#   end
# end

# SecretFile.new("data", "Jim")
# SecretFile.new("data", "Jim")
# SecretFile.new("data", "Jim")
# SecretFile.new("data", "Jim")
# SecretFile.new("data", "Jim")
# p SecurityLogger.log



module FuelEfficiency
  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  attr_accessor :speed, :heading

  include FuelEfficiency

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class Catamaran
  attr_reader :propeller_count, :hull_count
  attr_accessor :speed, :heading
  
  include FuelEfficiency

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end
end

class Motorboat < Catamaran
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity) 
    
  end
end

p Catamaran.new(1,1, 100, 7).range