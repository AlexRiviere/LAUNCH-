#1

# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# hello = Hello.new
# hello.hi
# puts "Hello"

# hello = Hello.new
# hello.bye

# hello = Hello.new
# hello.greet

# hello = Hello.new
# hello.greet("Goodbye")

# Hello.hi

#2

# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def self.hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end


#4

# class Cat
#   def initialize(type)
#     @type = type
#   end
  
#   def to_s
#     puts "I am a #{@type} cat"
#   end
# end

# tabby = Cat.new("tabby")
# tabby.to_s




#5

# class Television
#   def self.manufacturer
#     # method logic
#   end

#   def model
#     # method logic
#   end
# end

# tv = Television.new
# tv.manufacturer
# tv.model

# Television.manufacturer
# Television.model

#6

# class Cat
#   attr_accessor :type, :age

#   def initialize(type)
#     @type = type
#     @age  = 0
#   end

#   def make_one_year_older
#     @age += 1
#   end
# end

# a = Cat.new("a")
# a.make_one_year_older
# p a.age