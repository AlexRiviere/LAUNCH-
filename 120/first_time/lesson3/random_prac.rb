# class Person
# 	def initialize(n)
# 		@name = n
# 	end
# end

# bob = Person.new('bob')
# joe = Person.new('joe')

# puts bob.inspect
# puts joe.inspect


# class Person
# 	def get_name
# 		@name 
# 	end
# end

# bob = Person.new
# p bob.get_name

# class Person
# 	@@total_people = 0

# 	def self.total_people
# 		@@total_people
# 	end

# 	def initialize
# 		@@total_people += 1
# 	end

# 	def total_people
# 		@@total_people
# 	end
# end

# p Person.total_people
# Person.new
# Person.new
# p Person.total_people

# bob = Person.new
# p bob.total_people

# joe = Person.new
# p joe.total_people

# p Person.total_people


# class Person
# TITLES = ['Mr', 'Mrs', 'Ms', 'Dr' ]

# attr_reader :name

# 	def self.titles 
# 		TITLES.join(', ')
# 	end

# 	def initialize(n)
# 		@name = "#{TITLES.sample} #{n}"
# 	end
# end

# p Person.titles
# bob = Person.new('bob')
# p bob.name

# module A
#   module C
#     module D
#       def a 
# 				Module.nesting == [A::C::D, A::C, A]
# 			end
# 		end
#   end
# end

# p A::C::D::a



#inheritance and variable scope

# class Animal
# 	def initialize(name)
# 		@name = name 
# 	end
# end

# class Dog < Animal
# 	def initialize(name); end
# 	def Dog_name
# 		"bark! bark! #{@name} bark! bark!"
# 	end
# end

# teddy = Dog.new("Teddy")
# puts teddy.Dog_name
# p teddy


# module Swim
# 	def enable_swimming
# 		@can_swim = true
# 	end
# end

# class Dog
# 	include Swim

# 	def swim
# 		"swimming!" if @can_swim
# 	end
# end

# teddy = Dog.new
# teddy.enable_swimming
# p teddy.swim






# class Animal
# 	@@total_animals = 0

# 	def initialize
# 		@@total_animals += 1
# 	end
# end

# class Dog < Animal
# 	def total_animals
# 		@@total_animals
# 	end
# end

# spike = Dog.new
# p spike.total_animals






# class Vehicle
# 	@@wheels = 4

# 	def self.wheels
# 		@@wheels
# 	end
# end

# class Motorcycle < Vehicle
# 	@@wheels = 2
# end

# p Motorcycle.wheels
# p Vehicle.wheels

# class Car < Vehicle; end

# p Car.wheels





# class Dog
# 	LEGS = 4
# end

# class Cat 
# 	def legs 
# 		Dog::LEGS 
# 	end
# end

# kitty = Cat.new
# p kitty.legs

# class Vehicle
# 	WHEELS = 4
# end

# class Car < Vehicle
# 	def self.wheels
# 		WHEELS
# 	end

# 	def wheels
# 		WHEELS
# 	end
# end

# p Car.wheels

# a_car = Car.new
# p a_car.wheels






#  module Maintenance
# 	def change_tires
# 		"Changing #{Car::WHEELS} tires."
# 	end
#  end

#  class Vehicle
# 	WHEELS = 4
#  end

#  class Car < Vehicle
# 	include Maintenance
#  end

#  a_car = Car.new
#  p a_car.change_tires




# class Person
# 	attr_accessor :name, :age

# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end

# 	def >(other_person)
# 		@age > other_person.age
# 	end
# end

# bob = Person.new("Bob", 49)
# kim = Person.new("Kim", 33)

# puts "bob is older than kim" if bob > kim








# class Person
# 	attr_accessor :name, :age

# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end

# 	def >(other_person)
# 		@age > other_person.age
# 	end
# end

# class Team
# 	attr_accessor :name, :members

# 	def initialize(name)
# 		@name = name
# 		@members = []
# 	end

# 	def <<(person)
# 		members.push person
# 	end

# 	def +(other_team)
# 		temp_team = Team.new("Temporary Team") 
# 		temp_team.members = members + other_team.members
# 		temp_team
# 	end

# 	def [](idx)
# 		members[idx]
# 	end

# 	def []=(idx, obj)
# 		members[idx] = obj
# 	end
# end

# cowboys = Team.new("Dallas Cowboys")
# cowboys << Person.new("Troy Aikman", 48)
# cowboys << Person.new("Emmitt Smith", 46)
# cowboys << Person.new("Michael Irvin", 49)

# p cowboys.members

# p cowboys[1]
# cowboys[3] = Person.new("JJ", 72)
# p cowboys[3]
# p cowboys.members


# niners = Team.new("San Francisco 49ers")
# niners << Person.new("Joe Montana", 59)
# niners << Person.new("Jerry Rice", 52)
# niners << Person.new("Deion Sanders", 47)



# begin
# 	#code at risk of failing
# rescue TypeError
# 	#take action
# rescue ArgumentError
# 	#take a different action
# end


# begin
# 	#some code at risk of failing
# rescue ZeroDivisionError, TypeError
# 	#take action
# end


# begin
# 	# code at risk of failing
# rescue StandardError => e # storing the exception in e
# 	puts e.message #output error message
# end


# file = open(file_name, 'w')

# begin 
# 	# do something with file
# rescue
# 	# handle exception
# rescue
# 	# handle exception
# ensure
# 	file.close
# 	#executes every time
# end



# RETRY_LIMIT = 5

# begin
# 	attempts = attempts || 0
# 	# dosomething 
# rescue
# 	attempts += 1
# 	retry if attempts < RETRY_LIMIT
# end


# raise TypeError.new("Something went wrong")
# raise TypeError, "Something went wrong"

# def validate_age(age)
# 	raise("invalid age") unless (0..105).include?(age)
# end

# begin
# 	validate_age(age)
# rescue RunTimeError => e
# 	puts e.message
# end




# class ValidateAgeError < StandardError; end
# def validate_age(age)
# 	raise ValidateAgeError, "invalid age" unless (0..105).include?(age)
# end

# begin
# 	validate_age(age)
# rescue ValidateAgeError => e
# 	#take action
# end