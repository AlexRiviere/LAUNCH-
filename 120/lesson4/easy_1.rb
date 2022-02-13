#2

# module Speed
#   def go_fast
#     puts "I am a #{self.class} and going super fast!"
#   end
# end

# class Car
#   include Speed
#   def go_slow
#     puts "I am safe and driving slow."
#   end
# end

# class Truck
#   include Speed
#   def go_very_slow
#     puts "I am a heavy truck and like going very slow."
#   end
# end

# truck = Truck.new
# p truck.go_fast
# car = Car.new
# p car.go_fast




#3
# module Speed
#   def go_fast
#     puts "I am a #{self.class} and going super fast!"
#   end
# end

# class Car
#   include Speed
#   def go_slow
#     puts "I am safe and driving slow."
#   end
# end

#because the string interpolation in the #go_fast method has `self` calling the class method
#which returns a string representing the class of the object that called it. In thsi case
# self refers to an instance of Car called `small_car`, and when #class is called on 
#small car, it returns `Car` the class name


#4

#6
# class Cube
#   attr_reader :volume
  
#   def initialize(volume)
#     @volume = volume
#   end
# end

# cube = Cube.new(300)
# p cube.volume



#7
# an object id with the instance variable that are initialized 

#8 

#Inside of an instance method, self refers to the instance that called the method

#9

#here, self refers to the class `Cat`, since it is not inside of an instance method 

#10
# Bag.new("color", "material"