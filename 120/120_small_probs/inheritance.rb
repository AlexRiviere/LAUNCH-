#inherited year

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Car < Vehicle
# end

# class Truck < Vehicle
  
# end

# truck1 = Truck.new(1994)
# puts truck1.year

# car1 = Car.new(2006)
# puts car1.year







#start the engine

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
  
#   def initialize(year)
#     super
#     start_engine
#   end
#   def start_engine
#     puts 'Ready to go!'
#   end
# end

# truck1 = Truck.new(1994)
# puts truck1.year







#Only pass the year

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
  
#   attr_accessor :bed_type
  
#   def initialize(year, bed_type)
#     super(year)
#     @bed_type = bed_type
#   end
  
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994, 'Short')
# puts truck1.year
# puts truck1.bed_type









#start the engine part 2
# class Vehicle
#   def start_engine
#     'Ready to go!'
#   end
# end

# class Truck < Vehicle
#   def start_engine(speed)
#     super() + " Drive #{speed}, please!"
#   end
# end

# truck1 = Truck.new
# puts truck1.start_engine('fast')













#towable part 1

# module Towable
#   def tow
#     puts "I can tow a trailer!"
#   end
# end

# class Truck
#   include Towable
# end

# class Car
# end

# truck1 = Truck.new
# truck1.tow
















#towable 2

# module Towable
#   def tow
#     'I can tow a trailer!'
#   end
# end

# class Vehicle
#   attr_accessor :year
#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   include Towable
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year
# puts truck1.tow

# car1 = Car.new(2006)
# puts car1.year
























#method lookip 1
# class Animal
#   attr_reader :color

#   def initialize(color)
#     @color = color
#   end
# end

# class Cat < Animal
# end

# class Bird < Animal
# end

# cat1 = Cat.new('Black')
# cat1.color








#transpotation
# module Transportation
#   class Vehicle
#   end
#   class Truck < Vehicle
#   end
#   class Car < Vehicle
#   end
# end