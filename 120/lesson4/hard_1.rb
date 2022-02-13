# class SecretFile

#   def initialize(secret_data, data_logger)
#     @data = secret_data
#     @data_logger = data_logger
#   end
  
#   def data
#     @data_logger.create_log_entry
#     @data
#   end
# end

# class SecurityLogger
#   @@log_entries = []
  
#   def create_log_entry
#     @@log_entries << "Data was requested at #{Time.new}"
#   end
  
#   def self.log_entries
#     @@log_entries
#   end
# end

# log_of_data = SecurityLogger.new
# file = SecretFile.new('123', log_of_data)
# p file.data
# file.data
# file.data

# p SecurityLogger.log_entries

#this attempt uses class variables, but maybe they want instance variables to store the 
# logs, let me try it that way as well

# class SecretFile
#   attr_reader :data

#   def initialize(secret_data, data_logger)
#     @data = secret_data
#     @data_logger = data_logger
#   end
  
#   def data
#     @data_logger.create_log_entry
#     @data
#   end
# end

# class SecurityLogger
#   attr_reader :entries
  
#   def initialize
#     @entries = []
#   end
  
#   def create_log_entry
#     @entries << "data was requested at #{Time.new}"
#   end
# end

# log_of_data1 = SecurityLogger.new
# file1 = SecretFile.new('123', log_of_data1)
# file1.data
# file1.data
# file1.data
# p log_of_data1.entries





#2

# module TrackableFuel
#   def range
#     self.fuel_capacity * self.fuel_efficiency
#   end
# end

# class WheeledVehicle
#   attr_accessor :speed, :heading, :fuel_efficiency, :fuel_capacity
  
#   include TrackableFuel

#   def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
#     @tires = tire_array
#     @fuel_efficiency = km_traveled_per_liter
#     @fuel_capacity = liters_of_fuel_capacity
#   end

#   def tire_pressure(tire_index)
#     @tires[tire_index]
#   end

#   def inflate_tire(tire_index, pressure)
#     @tires[tire_index] = pressure
#   end
# end

# class Auto < WheeledVehicle
#   def initialize
#     # 4 tires are various tire pressures
#     super([30,30,32,32], 50, 25.0)
#   end
# end

# class Motorcycle < WheeledVehicle
#   def initialize
#     # 2 tires are various tire pressures
#     super([20,20], 80, 8.0)
#   end
# end

# class Catamaran
#   attr_reader :propeller_count, :hull_count, :fuel_efficiency, :fuel_capacity
#   attr_accessor :speed, :heading

#   include TrackableFuel

#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     @fuel_efficiency = km_traveled_per_liter
#     @fuel_capacity = liters_of_fuel_capacity
#   end
# end

# cata = Catamaran.new(1, 2, 100, 30)
# p cata.range

# car = Auto.new
# p car.range


#LS ANSWER


# module Moveable
#   attr_accessor :speed, :heading
#   attr_writer :fuel_capacity, :fuel_efficiency

#   def range
#     @fuel_capacity * @fuel_efficiency
#   end
# end

# class WheeledVehicle
#   include Moveable

#   def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
#     @tires = tire_array
#     self.fuel_efficiency = km_traveled_per_liter
#     self.fuel_capacity = liters_of_fuel_capacity
#   end

#   def tire_pressure(tire_index)
#     @tires[tire_index]
#   end

#   def inflate_tire(tire_index, pressure)
#     @tires[tire_index] = pressure
#   end
# end


# class Auto < WheeledVehicle
#   def initialize
#     # 4 tires are various tire pressures
#     super([30,30,32,32], 50, 25.0)
#   end
# end

# class Motorcycle < WheeledVehicle
#   def initialize
#     # 2 tires are various tire pressures
#     super([20,20], 80, 8.0)
#   end
# end

# class Catamaran
#   include Moveable

#   attr_reader :propeller_count, :hull_count

#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     self.fuel_efficiency = km_traveled_per_liter
#     self.fuel_capacity = liters_of_fuel_capacity

#     # ... other code to track catamaran-specific data omitted ...
#   end
# end


# cata = Catamaran.new(1, 2, 100, 30)
# p cata.range

# car = Auto.new
# p car.range






#3



# module Moveable
#   attr_accessor :speed, :heading
#   attr_writer :fuel_capacity, :fuel_efficiency

#   def range
#     @fuel_capacity * @fuel_efficiency
#   end
# end

# class WheeledVehicle
#   include Moveable

#   def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
#     @tires = tire_array
#     self.fuel_efficiency = km_traveled_per_liter
#     self.fuel_capacity = liters_of_fuel_capacity
#   end

#   def tire_pressure(tire_index)
#     @tires[tire_index]
#   end

#   def inflate_tire(tire_index, pressure)
#     @tires[tire_index] = pressure
#   end
# end


# class Auto < WheeledVehicle
#   def initialize
#     # 4 tires are various tire pressures
#     super([30,30,32,32], 50, 25.0)
#   end
# end

# class Motorcycle < WheeledVehicle
#   def initialize
#     # 2 tires are various tire pressures
#     super([20,20], 80, 8.0)
#   end
# end

# class Catamaran
#   include Moveable

#   attr_reader :propeller_count, :hull_count

#   def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
#     self.fuel_efficiency = km_traveled_per_liter
#     self.fuel_capacity = liters_of_fuel_capacity

#     # ... other code to track catamaran-specific data omitted ...
#   end
# end

# class Motorboat < Catamaran
#   def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
#     super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
#   end
# end

# mb = Motorboat.new(100, 10)
# p mb.range





#4

module Moveable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Moveable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Seacraft
  include Moveable

  attr_reader :hull_count, :propeller_count

  def initialize(num_propellers, num_hulls, fuel_efficiency, fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_hulls
    self.fuel_efficiency = fuel_efficiency
    self.fuel_capacity = fuel_capacity
  end
  
  def range
    super + 10
  end
end

class Motorboat < Seacraft
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    # set up 1 hull and 1 propeller
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

class Catamaran < Seacraft
end

cat = Catamaran.new(1, 2, 100, 10)
p Catamaran.ancestors
p cat.range