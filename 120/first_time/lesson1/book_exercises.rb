# How do we create an object in Ruby? Give an example of the creation of an object.

# use def then camelcase the name of the class, end with end. Then assign a variable to calling the instance method `new` on the class
# 



#What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

#
# module Meow
#   def meow(call)
#     puts call
#   end
# end

# class Kitty
#   include Meow
# end

# zizou = Kitty.new
# zizou.meow('ahhhh')



#CLASSES AND OBJECTS 1

# class MyCar
  
#   attr_accessor :color
#   attr_reader   :year
  
#   def initialize(year, model, color)
#     @year = year
#     @model = model
#     @color = color
#     @current_speed = 0
#   end
  
#   def speed_up(number)
#     @current_speed += number
#     puts "You push the gas and accelerate #{number} mph."
#   end
  
#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and decelerate #{number} mph."
#   end
  
#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end
  
#   def shut_down
#     @current_speed = 0
#     puts "Let's park this bad boy!"
#   end
  
#   def spray_paint(color)
#     self.color = color
#     puts "Your new #{color} paint job looks great!"
#   end
# end

# lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.shut_down
# lumina.current_speed

# puts lumina.color
# lumina.color = 'blue'
# puts lumina.color
# lumina.spray_paint('red')
# puts lumina.color




















# class GoodDog
#   def initialize
#     puts "This object was initialized"
#   end
# end

# sparky = GoodDog.new



# class GoodDog
  
#   attr_accessor :name, :height, :weight
  
#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end
  
#   def speak
#     "#{name} says Arf!"
#   end
  
#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
  
#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end
  
#   def some_method
#     self.info
#   end
# end

# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# puts sparky.info

# sparky.change_info('Spartacus', '24 inches', '45lbs')
# puts sparky.info
# puts sparky.some_method

# fido = GoodDog.new('Fido')
# puts fido.speak
# puts sparky.name
# sparky.name = 'Spartacus'
# puts sparky.name




# class MyCar
  
#   attr_accessor :color, :model
#   attr_reader :year
  
#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end
  
#   def self.calc_gas_mileage(miles_driven, gallons)
#     miles_driven / gallons
    
#   end
  
  
#   def speed_up(number)
#     @current_speed += number
#     puts "You are accelerating by #{number} mph."
#   end
  
#   def brake(number)
#     @current_speed -= number
#     puts "You are decelerating by #{number} mph."
#   end
  
#   def current_speed
#     puts "You are going #{@current_speed} mph."
#   end
  
#   def shut_down
#     @current_speed = 0
#     puts "You shut this shit down."
#   end
  
#   def spray_paint(color)
#     self.color = color
#     puts "You spray painted your car #{@color}."
#   end
  
#   def to_s
#     "This is a #{color} #{year } #{model} "
#   end
  
  
  
# end

# sheila = MyCar.new(2014, 'silver', 'suzuki sportback')
# puts sheila
# # p sheila
# # sheila.current_speed
# # sheila.speed_up(100)
# # sheila.current_speed
# # sheila.brake(20)
# # sheila.current_speed
# # sheila.shut_down
# # puts sheila.color
# # sheila.color = 'white'
# # puts sheila.year

# # sheila.spray_paint('yellow')

# p MyCar.calc_gas_mileage(100, 5)






























#CLASSES AND OBJECTS PART II

# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def speak
#     "#{name} says arf!"
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end

#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end
  
#   def self.what_am_i
#     "I'm a GoodDog class!"
#   end
# end

# p GoodDog.what_am_i







# class GoodDog
#   @@number_of_dogs = 0
  
#   def initialize 
#     @@number_of_dogs += 1
#   end
  
#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
# end

# puts GoodDog.total_number_of_dogs
# dog1 = GoodDog.new
# dog2 = GoodDog.new
# puts GoodDog.total_number_of_dogs





# class GoodDog
#   DOG_YEARS = 7
#   attr_accessor :name, :age
  
#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#   end
  
#   def to_s
#     "This dog's name is #{name} and it is #{age} in dog years."
#   end
  
# end

# sparky = GoodDog.new("Sparky", 4)

# # puts sparky.age
# # puts sparky
# puts "#{sparky}"









# class GoodDog
#   attr_accessor :name, :height, :weight
  
#   def initialize(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
  
#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
  
#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall"
#   end
  
#   def what_is_self
#     self
#   end
  
#   puts self
# end

# # sparky = GoodDog.new('Sparky', '12 inches', '10lbs')
# # p sparky.what_is_self

# p GoodDog






















# class MyCar
#   def self.gas_mileage(gallons, miles)
#     "Gas mileage is #{miles / gallons} mpg."
#   end
# end

# p MyCar.gas_mileage(5, 130)


# class MyCar
  
#   attr_accessor :color, :model
#   attr_reader   :year
  
#   def initialize(year, model, color)
#     @year = year
#     @model = model
#     @color = color
#     @current_speed = 0
#   end
  
#   def speed_up(number)
#     @current_speed += number
#     puts "You push the gas and accelerate #{number} mph."
#   end
  
#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and decelerate #{number} mph."
#   end
  
#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end
  
#   def shut_down
#     @current_speed = 0
#     puts "Let's park this bad boy!"
#   end
  
#   def spray_paint(color)
#     self.color = color
#     puts "Your new #{color} paint job looks great!"
#   end
  
#   def to_s
#     "My car is a freaking #{@year} #{@color} #{@model}"
#   end
# end

# sheila = MyCar.new('2014', 'suzuki', 'silver')
# puts sheila

























# module Four_wheel_driveable
#   def four_wheel_drive
#     true
#   end 
# end





# class Vehicle
  
#   attr_accessor :color, :model
#   attr_reader   :year
  
#   @@number_of_vehicles = 0
  
#   def self.number_of_vehicles
#     @@number_of_vehicles
#   end
  
#   def initialize(year, model, color)
#     @year = year
#     @model = model
#     @color = color
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end
  
#   def speed_up(number)
#     @current_speed += number
#     puts "You push the gas and accelerate #{number} mph."
#   end
  
#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and decelerate #{number} mph."
#   end
  
#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end
  
#   def shut_down
#     @current_speed = 0
#     puts "Let's park this bad boy!"
#   end
      
#   def spray_paint(color)
#     self.color = color
#     puts "Your new #{color} paint job looks great!"
#   end
  
#   def age
#     calc_age
#   end
  
#   private
  
#   def calc_age
#     Time.new().year - self.year.to_i
#   end
  
# end



# class MyTruck < Vehicle
#   WEIGHT = 10
  
#   include Four_wheel_driveable
  
#   def to_s
#     "My truck is a freaking #{@year} #{@color} #{@model}"
#   end
# end

# class MyCar < Vehicle
  
#   WEIGHT = 5
  
#   def to_s
#     "My car is a freaking #{@year} #{@color} #{@model}"
#   end
# end

# sheila = MyCar.new('2014', 'suzuki', 'silver')
# # puts sheila

# gmc = MyTruck.new('2020', 'GMC', 'black')
# # p gmc.four_wheel_drive
# # sheila.speed_up(20)
# # sheila.shut_down
# p sheila.age






















# # class Vehicle
# #   def self.gas_mileage(gallons, miles)
# #     puts "#{miles / gallons} miles per gallon of gas"
# #   end
# # end

# # class MyCar < Vehicle
# #   NUMBER_OF_DOORS = 4
# # end

# # class MyTruck < Vehicle
# #   NUMBER_OF_DOORS = 2
# # end







# class Student
  
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end
  
#   def better_grade_than?(other_student)
#     grade > other_student.grade
#   end
  
#   protected
  
#   def grade
#     @grade
#   end
# end


# joe = Student.new('joe', 97)
# bob = Student.new('bob', 95)
# puts "Well done!" if joe.better_grade_than?(bob)







































# class Animal 
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   attr_accessor :name
  
#   # def initialize(n)
#   #   self.name = n
#   # end
  
#   def speak
#     "#{self.name} says arf!"
#   end
# end

# class Cat < Animal
# end

# sparky = GoodDog.new
# sparky.name = "Sparky"
# paws = Cat.new
# puts sparky.speak
# puts paws.speak









# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   def speak 
#     super + " from GoodDog class"
#   end
# end


# sparky = GoodDog.new
# p sparky.speak












# class Animal
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end
# end

# class GoodDog < Animal
#   def initialize(color)
#     super 
#     @color = color
#   end
# end

# class BadDog < Animal
#   def initialize(age, name)
#     super(name)
#     @age = age
#   end
# end

# bruno = GoodDog.new("brown")
# p bruno

# p (BadDog.new(2, "bear"))



































# class Animal 
#   def initialize
#   end
# end

# class Bear < Animal
#   def initialize(color)
#     super()
#     @color = color
#   end
# end

# bear = Bear.new("black")
# p bear






# module Swimmable
#   def swim
#     "I'm swinning!"
#   end
# end

# class Animal
# end

# class Fish < Animal
#   include Swimmable
# end

# class Mammal < Animal
# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   include Swimmable
# end

# sparky = Dog.new
# nemo = Fish.new
# paws = Cat.new

# p sparky.swim
# p nemo.swim
# p paws.swim








# module Walkable
#   def walk
#     "I'm walking."
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming"
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end

# class Animal
#   include Walkable
  
#   def speak
#     "I'm an animal, and I speak!"
#   end
# end

# class GoodDog < Animal
#   include Swimmable
#   include Climbable
# end

# # puts GoodDog.ancestors

# # puts Animal.ancestors

# fido = Animal.new
# p fido.speak
# p fido.walk
# p fido.swim





















# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end
  
#   class Cat
#     def say_name(name)
#       p "#{name}"
#     end
#   end
  
#   def self.some_out_of_place_method(num)
#     num ** 2
#   end
# end

# # buddy = Mammal::Dog.new
# # kitty = Mammal::Cat.new
# # buddy.speak('Arf')
# # kitty.say_name('kitty')

# value = Mammal.some_out_of_place_method(4)
# p value











# class GoodDog
#   DOG_YEARS = 7
  
#   attr_accessor :name, :age
  
#   def initialize(n, a)
#     self.name = n
#     self.age = a
#   end
  
#   def public_disclosure
#     "#{self.name} in human years is #{human_years}"
#   end
  
#   private
  
#   def human_years
#     age * DOG_YEARS
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# p sparky.public_disclosure




# class Animal
#   def a_public_method
#     "Will this work? " + self.a_protected_method
#   end
  
#   protected
  
#   def a_protected_method
#     "Yes, I'm protected"
#   end
# end

# fido = Animal.new
# p fido.a_public_method
# p fido.a_protected_method







# class Parent
#   def say_hi
#     p "Hi from parent."
#   end
# end

# class Child < Parent
#   def say_hi
#     p "Hi from Child"
#   end
  
#   def send
#     p "send from child..."
#   end
  
#   def instance_of?
#     p "I am a fake instance"
#   end
# end

# # p Parent.superclass

# # child = Child.new
# # p child.say_hi
# # lad = Child.new
# # lad.send :say_hi

# # c = Child.new
# # p c.instance_of? Child
# # p c.instance_of? Parent

# heir = Child.new
# p heir.instance_of? Child










# module Towable
#   def towable?(pounds)
#     pounds < 2000 ? true : false
#   end
# end



# class Vehicle
#   attr_accessor :color, :model
#   attr_reader :year
  
#   @@number_of_vehicles = 0
  
#   def self.number_of_vehicles
#     @@number_of_vehicles
#   end
  
#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end
  
#   def self.calc_gas_mileage(miles_driven, gallons)
#     miles_driven / gallons
    
#   end
  
  
#   def speed_up(number)
#     @current_speed += number
#     puts "You are accelerating by #{number} mph."
#   end
  
#   def brake(number)
#     @current_speed -= number
#     puts "You are decelerating by #{number} mph."
#   end
  
#   def current_speed
#     puts "You are going #{@current_speed} mph."
#   end
  
#   def shut_down
#     @current_speed = 0
#     puts "You shut this shit down."
#   end
  
#   def spray_paint(color)
#     self.color = color
#     puts "You spray painted your car #{@color}."
#   end
  
#   def age
#     calc_age
#   end
  
#   private
  
#   def calc_age
#     Time.new.year - self.year.to_i
#   end
  
  
# end

# class MyCar < Vehicle
#   NUMBER_OF_DOORS = 4
  
#   def to_s
#     "This car is a #{color} #{year } #{model} "
#   end
  
# end

# class MyTruck < Vehicle
#   NUMBER_OF_DOORS = 2
  
#   include Towable
  
#   def to_s
#     "This truck is a #{color} #{year } #{model} "
#   end
# end


# sheila = MyCar.new('2014', 'suzuki', 'silver')
# gmc = MyTruck.new('2020', 'GMC', 'black')

# p sheila.age
# p gmc.age











class Student
  attr_accessor :name
  attr_writer :grade
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(other_student)
    grade > other_student.grade
  end
  
  protected
  
  def grade
    @grade
  end
end

joe = Student.new("joe", 98)
bob = Student.new("bob", 92)

p joe.better_grade_than?(bob)