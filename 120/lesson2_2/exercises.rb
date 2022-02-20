# class Person
#   attr_accessor :first_name, :last_name
  
#   def initialize(first_name, last_name='')
#     @first_name = first_name
#     @last_name = last_name
#   end
  
#   def name
#     if last_name != ''
#       first_name + " " + last_name
#     else
#       first_name
#     end
#   end
  
#   def name=(full_name)
#     names = full_name.split
#     if names.size > 1
#       self.first_name = names[0]
#       self.last_name = names[1]
#     else
#       self.first_name = names[0]
#       self.last_name = ''
#     end
#   end
# end

# bob = Person.new('Robert')
# p bob.name                  # => 'Robert'
# p bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# p bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# p bob.first_name            # => 'John'
# p bob.last_name             # => 'Adams'






# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     parse_full_name(full_name)
#   end

#   private

#   def parse_full_name(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')



# class Person
#   attr_writer :secret

#   def compare_secret(other)
#     secret == other.secret
#   end

#   protected

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'

# person2 = Person.new
# person2.secret = 'Shh.. this is a different secret!'

# puts person1.compare_secret(person2)

# class Person

#   def initialize(name)
#     @name = name
#   end
  
#   def name
#     @name.dup
#   end
# end

# person1 = Person.new('James')
# person1.name.reverse!
# puts person1.name



# class Robot
#   def name
#     @name
#   end
#   def name=(name)
#     @name = name
#   end
#   def talk
#     "I'm a robot."
#   end
# end

# h = Robot.new
# p h.talk
# h.name= "op"
# p h.name







# class Banner
#   def initialize(message)
#     @message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     "+ " + ("-" * @message.size) + " +"
#   end

#   def empty_line
#     "| " + (" " * @message.size) + " |"
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner



# class  Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     "My name is #{@name.upcase}."
#   end
# end


# name = 42
# fluffy = Pet.new(name)
# #@name = '42'
# name += 1
# #name = 43
# puts fluffy.name #=> '42'
# puts fluffy
# puts fluffy.name
# puts name

# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
#   def initialize(side)
#     super(side, side)
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"



# class House
#   include Comparable
  
#   attr_reader :price

#   def initialize(price)
#     @price = price
#   end
  
#   def <=>(other)
#     price <=> other.price
#   end
  
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2
# puts "Home 2 is more expensive" if home2 > home1




# class Transform
#   def initialize(str)
#     @str = str
#   end
  
#   def uppercase
#     @str.upcase
#   end
  
#   def self.lowercase(str)
#     str.downcase
#   end
# end


# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')


# class Pet
#   attr_reader :name, :type
  
#   def initialize(type, name)
#     @type = type
#     @name = name
#   end
# end

# class Owner
#   attr_accessor :number_of_pets, :name
#   def initialize(name)
#     @name = name
#     @number_of_pets = 0
#   end
# end

# class Shelter
#   def initialize
#     @adoptions = {}
#   end
  
#   def adopt(owner, pet)
#     owner.number_of_pets += 1
#     if @adoptions[owner.name]
#       @adoptions[owner.name] << "a #{pet.type} named #{pet.name}"
#     else
#       @adoptions[owner.name] = ["a #{pet.type} named #{pet.name}"]
#     end
#   end
  
#   def print_adoptions
#     @adoptions.each do |owner, pet_arr|
#       puts "#{owner} has adopted the following pets:"
#       puts pet_arr
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


# module Walkable
#   def walk
#     "#{name} #{gait} forward"
#   end
# end

# class Person
#   include Walkable
  
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Cat
#   include Walkable
  
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   include Walkable
  
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "runs"
#   end
# end

# class Noble
#   include Walkable
  
#   attr_reader :title
  
#   def initialize(name, title)
#     @name = name
#     @title = title
#   end
  
#   def name
#     "#{title} #{@name}"  
#   end
  
#   private

#   def gait
#     "struts"
#   end
# end

# byron = Noble.new("Byron", "Lord")
# p byron.walk
# # => "Lord Byron struts forward"


# mike = Person.new("Mike")
# p mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# p kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# p flash.walk
# # => "Flash runs forward"



class Person
  CONSTANT = 4
end

class Kid < Person
  
end

p Kid::CONSTANT