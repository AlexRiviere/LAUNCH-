#fix mailable

# module Mailable
#   def print_address
#     puts "#{name}"
#     puts "#{address}"
#     puts "#{city}, #{state} #{zipcode}"
#   end
# end

# class Customer
#   attr_reader :name, :address, :city, :state, :zipcode
#   include Mailable
# end

# class Employee
#   attr_reader :name, :address, :city, :state, :zipcode
#   include Mailable
# end

# betty = Customer.new 
# bob = Employee.new
# betty.print_address
# bob.print_address





#Fix the Program - Drivable

# module Drivable
#   def drive
#     puts "wee"
#   end
# end

# class Car
#   include Drivable
# end

# bobs_car = Car.new
# bobs_car.drive







#Complete The Program - Houses

# class House
#   attr_reader :price
#   include Comparable
#   def <=>(other)
#     self.price <=> other.price
#   end

#   def initialize(price)
#     @price = price
#   end
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2
# puts "Home 2 is more expensive" if home2 > home1















#Reverse Engineering
# class Transform
#   def initialize(string)
#     @string = string
#   end
  
#   def uppercase
#     @string.upcase
#   end
  
#   def self.lowercase(new_string)
#     new_string.downcase
#   end
# end


# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')














#What Will This Do?

# class Something
#   def initialize
#     @data = 'Hello'
#   end

#   def dupdata
#     @data + @data
#   end

#   def self.dupdata
#     'ByeBye'
#   end
# end

# thing = Something.new
# puts Something.dupdata
# puts thing.dupdata







#Comparing Wallets
# class Wallet
#   include Comparable

#   def initialize(amount)
#     @amount = amount
#   end

#   def <=>(other_wallet)
#     amount <=> other_wallet.amount
#   end
  
#   protected
#   attr_reader :amount
# end

# bills_wallet = Wallet.new(500)
# pennys_wallet = Wallet.new(465)
# if bills_wallet > pennys_wallet
#   puts 'Bill has more money than Penny'
# elsif bills_wallet < pennys_wallet
#   puts 'Penny has more money than Bill'
# else
#   puts 'Bill and Penny have the same amount of money.'
# end






#Pet Shelter

# class Pet
#   def initialize(type, name)
#     @type = type
#     @name = name
#   end
  
#   def get_type_and_name
#     "a #{@type} named #{@name}"
#   end
# end


# class Owner
#   attr_reader :name, :number_of_pets
#   attr_writer :number_of_pets
#   def initialize(name)
#     @name = name
#     @number_of_pets = 0
#   end
    
# end



# class Shelter
#   @@adoptions = {}
  
#   def adopt(owner, pet_name)
#     @@adoptions[owner.name] ? @@adoptions[owner.name] << pet_name.get_type_and_name : @@adoptions[owner.name] = [pet_name.get_type_and_name]
#     owner.number_of_pets += 1
#   end
    
#   def print_adoptions
#     @@adoptions.each do |owner, pet_array|
#       puts "#{owner} has adopted the following pets:"
#       puts pet_array
#       puts ""
#     end
#   end
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

















#Fix The Program - Expander

# class Expander
#   attr_reader :string
#   def initialize(string)
#     @string = string
#   end

#   def to_s
#     self.expand(3)
#   end

#   private

#   def expand(n)
#     string * n
#   end
# end

# expander = Expander.new('xyz')
# puts expander
















#Moving
# module Movable
#   def walk
#   puts "#{self.name} #{self.gait} forward"
#   end
# end

# class Person
#   attr_reader :name
#   include Movable
#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Cat
#   attr_reader :name
#   include Movable
#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   attr_reader :name
#   include Movable
#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "runs"
#   end
# end



# mike = Person.new("Mike")
# mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk
# # => "Flash runs forward"









#nobility

module Movable
  def walk
   puts "#{self.name} #{self.gait} forward"
  end
end

class Person
  attr_reader :name
  include Movable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name
  include Movable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
  include Movable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

class Noble < Person
  attr_reader :name, :title
  def initialize(title, name)
    @name = name
    @title = title
  end
  
  def walk
    puts "#{title} #{name} #{gait} forward"
  end
  
  private
  
  def gait
    "struts"
  end
end



mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"