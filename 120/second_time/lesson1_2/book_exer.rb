# p "hello".class
# p "world".class

# class GoodDog
  
# end

# sparky = GoodDog.new
# module GetTogether
#   def meet
#     "we meet!"
#   end
# end

# class MyFriends
#   include GetTogether
# end

# class MyClass
#   include GetTogether
# end

# my_obj = MyClass.new
# module Towable
#   def can_tow?
#     true
#   end
# end

# class Vehicle
#   attr_accessor :current_speed, :color
#   attr_reader :year
  
#   @@number_of_vehicles = 0
  
#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end
  
#   def self.print_num_of_vehicles
#     puts @@number_of_vehicles
#   end
  
#   def speed_up(mph)
#     self.current_speed += mph
#   end
  
#   def brake(mph)
#     self.current_speed -= mph
#   end
  
#   def shut_down
#     self.current_speed = 0
#   end
  
#   def age
#     find_age  
#   end
  
#   private
  
#   def find_age
#     Time.new.year - year
#   end
# end

# class MyCar < Vehicle
#   WEIGHT = 1500
  
#   include Towable
  
#   def spray_paint(new_color)
#     self.color = new_color
#     "you spray painted your car #{new_color}"
#   end
# end

# class MyTruck < Vehicle
#   WEIGHT = 10_000
# end

# car = MyCar.new(1990, 'blue', 'chevy')
# truck = MyTruck.new(2000, 'orange', 'dodge')
# Vehicle.print_num_of_vehicles

# car.speed_up(30)
# truck.shut_down
# p car.age
# p truck.age
















#7

# class Student
  
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end
  
#   def better_grade_than?(other)
#     grade > other.grade
#   end
  
#   protected
  
#   attr_accessor :grade
# end

# bob = Student.new('bob', 90)
# bot = Student.new('bot', 9)

# puts "Well done!" if bob.better_grade_than?(bot)





#ethan article

# Bubbles change as execution context changes.

# Execution context changes upon:
# - execution of class `A` definition
# - `initialize` method invocation
# - `class_method` method invocation
# - `times` block invocation

def describe_execution_context(current_binding, current_self)
  puts "######################################\n"\
       "The current calling object/self: #{current_binding.receiver}\n"\
       "The current instance variables: #{current_self.instance_variables}\n"\
       "The current local variables: #{current_binding.local_variables}"
end

class A
  a = "a"
  @@class_var = 0
  puts "class one"
  describe_execution_context(binding, self)

  def initialize
    b = "b"
    @instance_var = 1
    describe_execution_context(binding, self)
  end

  def self.class_method
    c = "c"
    puts "class method one"
    describe_execution_context(binding, self)

    1.times do |index|
      describe_execution_context(binding, self)
    end
  end
end

# A.new
A.class_method