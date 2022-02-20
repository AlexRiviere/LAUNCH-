#banner class

# class Banner
#   def initialize(message)
#     @message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     "+-" + ("-" * (get_message_length)) + "-+"
#   end

#   def empty_line
#     "|" + (' ' * (get_message_length + 2)) + "|"
#   end
  
#   def get_message_length
#     @message.length
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+

# banner = Banner.new('')
# puts banner








#whats the output

# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
    
#     "My name is #{@name.upcase}."
#   end
# end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name


# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     @name.upcase!
#     "My name is #{@name}."
#   end
# end

# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name










































#Fix the Program - Books (Part 1)

# class Book
  
#   attr_reader :title, :author
  
#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new("Neil Stephenson", "Snow Crash")
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)















#fix the program part 2

# class Book
  
#   attr_accessor :title, :author
#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new
# book.author = "Neil Stephenson"
# book.title = "Snow Crash"
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)











#Fix the Program - Persons

# class Person
#   attr_writer :first_name, :last_name
  
#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end

#   def first_name=(first_name)
#     @first_name = first_name.capitalize
#   end
  
#   def last_name(last_name)
#     @last_name = last_name.capitalize
#   end
  
#   def to_s
#     "#{@first_name} #{@last_name}"
#   end
  
  
# end

# person = Person.new('john', 'doe')
# puts person

# person.first_name = 'jane'
# person.last_name = 'smith'
# puts person











#Fix the Program - Flight Data

# class Flight
#   attr_accessor :database_handle

#   def initialize(flight_number)
#     @database_handle = Database.init
#     @flight_number = flight_number
#   end
# end








# class Car
#   attr_accessor :mileage

#   def initialize
#     @mileage = 0
#   end

#   def increment_mileage(miles)
#     total = mileage + miles
#     self.mileage = total
#   end

#   def print_mileage
#     puts mileage
#   end
# end

# car = Car.new
# car.mileage = 5000
# car.increment_mileage(678)
# car.print_mileage  # should print 5678














#Rectangles and Squares

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
#   def initialize (side)
#     super(side, side)
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"














#Complete the Program - Cats!

# class Pet
#   def initialize(name, age, color)
#     @name = name
#     @age = age
#     @color = color
#   end
# end

# class Cat < Pet
#   def to_s
#     "My cat #{@name} is #{@age} years old and has #{@color} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch










#Refactoring Vehicles

# class Vehicle
#   attr_reader :make, :model
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end
  
#   def to_s
#     "#{make} #{model}"
#   end
# end

# class Car < Vehicle

#   def wheels
#     4
#   end
# end

# class Motorcycle < Vehicle

#   def wheels
#     2
#   end
# end

# class Truck < Vehicle
#   attr_reader :payload

#   def initialize(make, model, payload)
#     super(make, model)
#     @payload = payload
#   end

#   def wheels
#     6
#   end
# end