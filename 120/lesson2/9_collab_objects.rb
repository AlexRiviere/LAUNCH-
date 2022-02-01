# class Person
#   def initialize(name)
#     @name = name
#   end
  
#   def name
#     @name
#   end
# end

# joe = Person.new("joe")
# p joe.name




# class Person
#   def initialize
#     @heroes = ['Superman', 'Spiderman', 'Batman']
#     @cash = {'ones' => 12, 'fives' => 2, 'tens' => 0}
#   end
  
#   def cash_on_hand
    
#   end
  
#   def heroes
#     @heroes.join(', ')
#   end
# end

# joe = Person.new
# p joe.heroes



# class Animal

  
#   def run
#     'running!'
#   end
  
#   def jump
#     'jumping!'
#   end
# end

# class Dog < Animal
#   def speak 
#     'bark!'
#   end
  
#   def swim
#     'swimming!'
#   end
  
#   def fetch
#     'fetching!'
#   end
  
# end

# class Bulldog < Dog
#   def swim
#     "Can't swim!"
#   end
# end

# class Cat < Animal
#   def speak
#     'meow!'
#   end
# end

# class Person
#   attr_accessor :name, :pet
  
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Robert")
# bud = Bulldog.new

# bob.pet = bud
# p bob.pet.swim
# p bob.pet.class




# class Animal

  
#   def run
#     'running!'
#   end
  
#   def jump
#     'jumping!'
#   end
# end

# class Dog < Animal
#   def speak 
#     'bark!'
#   end
  
#   def swim
#     'swimming!'
#   end
  
#   def fetch
#     'fetching!'
#   end
  
# end

# class Bulldog < Dog
#   def swim
#     "Can't swim!"
#   end
# end

# class Cat < Animal
#   def speak
#     'meow!'
#   end
# end

# class Person
#   attr_accessor :name, :pets
  
#   def initialize(name)
#     @name = name
#     @pets = []
#   end
  
# end

# bob = Person.new("Robert")
# bud = Bulldog.new
# kitty = Cat.new

# bob.pets << kitty
# bob.pets << bud

# p bob.pets

# bob.pets.each do |pet|
#   p pet.jump
# end












module Swim
  def swim
    "swimming!"
  end
  
end

class Dog
  include Swim
  
end

class Fish
  include Swim
end