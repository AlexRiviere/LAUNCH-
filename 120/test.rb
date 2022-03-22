class Recipe
  def initialize(name, secret_ingredient)
    @name = name
    @secret_ingredient = secret_ingredient
  end
  
  def cook
    puts "I'm cooking #{@name}"
    puts "I'm adding #{secret_ingredient}"
  end
  
  private
  
  attr_reader :secret_ingredient
end

mac_and_cheese = Recipe.new("mac and cheese", "nutmeg")
mac_and_cheese.cook
mac_and_cheese.secret_ingredient

# class Recipe
  
#   def make
#     puts "prep ingredients"
#     cook
#   end
  
#   def cook
#     puts "Lets cook this recipe."
#   end
# end

# roast_chicken = Recipe.new
# roast_chicken.make

# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#     @name
#   end
# end

# coconut_rice = Recipe.new("coconut rice")
# puts "I love making #{coconut_rice}"


# class Recipe
#   attr_writer :name
  
#   def initialize(name)
#     @name = name
#   end
# end

# gravy = Recipe.new("gravy")
# gravy.name = "the best gravy"
# p gravy


# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   def cook
#     puts "I'm cooking #{@name}!!"
#   end
  
#   def self.cook_message
#     puts "I am cooking #{@name}."
#   end
# end

# pot_pie = Recipe.new("chicken pot pie")
# soup = Recipe.new("soup")
# pot_pie.cook
# soup.cook
# Recipe.cook_message



# module Servable
#   def num_servings
#     Recipe::SERVINGS
#   end
# end
# class Recipe
#   include Servable 
  
#   SERVINGS = 4
  
#   def servings
#     SERVINGS
#   end
  
#   def self.servings
#     SERVINGS
#   end
# end

# potatoes = Recipe.new
# p potatoes.servings
# p Recipe.servings
# p potatoes.num_servings

# module AA
#   def salty
#     puts @@salt
#   end
# end

# class Recipe
#   include AA
  
#   @@salt = 2
  
#   def initialize(name)
#     @name = name
#   end
  
#   def salt
#     puts @@salt
#   end
  
#   def self.salt
#     puts @@salt
#   end
# end

# class Lunch < Recipe
#   @@salt = 1
# end

# veal = Recipe.new("veal")
# veal.salty


# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   def cook
#     puts "Let's cook some #{@name}"
#   end
  
#   def self.name
#     puts @name
#   end
# end

# class Lunch < Recipe
#   def cook
#     puts "These are the best #{@name}"
#   end
# end

# meatballs = Lunch.new("meatballs")
# meatballs.cook


# class Cook
#   def clean
#     puts "I am cleaning the kitchen. From the Cook class."
#   end
# end

# class HomeCook < Cook
#   def clean
#     super
#     puts "I am cleaning the kitchen. From the HomeCook class."
#   end
# end

# nick = HomeCook.new
# nick.clean


# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   attr_writer :name
  
#   def cook
#     puts "Let's make #{@name}."
#   end
# end

# bolognese = Recipe.new("bolognese")
# bolognese.cook


# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   def make
#     puts "I'm making #{@name}"
#   end
# end

# salmon = Recipe.new("salmon")
# steak = Recipe.new("steak")
# salmon.make
# steak.make
# p salmon
# p steak

# class Cook
# end

# class Chef < Cook
#   def cook
#     puts "I'm cooking for 100 people."
#   end
# end

# class HomeCook < Cook
#   def cook
#     puts "I'm cooking for my fam!"
#   end
# end

# winston = Chef.new
# cece = HomeCook.new

# winston.cook
# cece.cook

# class Recipe
#   attr_reader :name
  
#   def initialize(name, calories, rating)
#     @name = name
#     @calories = calories
#     @rating = rating
#   end
  
#   def >(other)
#     calories > other.calories
#   end
  
#   def print_rating
#     puts "The rating for this recipe is #{rating}"
#   end
  
#   protected
  
#   attr_reader :calories
  
#   private
  
#   attr_reader :rating
# end

# sauce = Recipe.new("sauce", 150, 5)
# p sauce.name
# chicken = Recipe.new("chicken", 300, 7)
# p (sauce > chicken)
# # sauce.calories
# sauce.rating

# class Recipe
#   attr_reader :name 
  
#   def initialize(name, secret_ingredient)
#     @name = name
#     @secret_ingredient = secret_ingredient
#   end
  
#   def make
#     puts "I'm making #{name}."
#     puts "I'm adding #{secret_ingredient}."
#   end
  
#   private
  
#   attr_reader :secret_ingredient
# end

# mac_and_cheese = Recipe.new("mac and cheese", "nutmeg")
# mac_and_cheese.make


# class Person
#   attr_accessor :name

#   def initialize(name, ssn)
#     @name = name
#     @ssn = ssn
#   end
  
#   def print_ssn
#     puts ssn[-4..-1]
#   end
  
#   private
  
#   attr_reader :ssn
# end

# class CarefulPerson < Person
#   def print_ssn
#     puts "no way jose"
#   end
# end

# jess = CarefulPerson.new("jess", "123456789")
# jess.print_ssn


# class Mail
#   def to_s
#     "#{self.class}"
#   end
# end

# class Email < Mail
#   attr_accessor :subject, :body

#   def initialize(subject, body)
#     @subject = subject
#     @body = body
#   end
# end

# class Postcard < Mail
#   attr_reader :text

#   def initialize(text)
#     @text = text
#   end
# end

# module Mailing
#   def receive(mail, sender)
#     mailbox << mail unless reject?(sender)
#   end

#   # Change if there are sources you want to block.
#   def reject?(sender)
#     false
#   end

#   def send(destination, mail)
#     "Sending #{mail} from #{name} to: #{destination}"
#     # Omitting the actual sending.
#   end
# end

# class CommunicationsProvider
#   attr_reader :name, :account_number

#   def initialize(name, account_number=nil)
#     @name = name
#     @account_number = account_number
#   end
# end

# class EmailService < CommunicationsProvider
#   include Mailing

#   attr_accessor :email_address, :mailbox

#   def initialize(name, account_number, email_address)
#     super(name, account_number)
#     @email_address = email_address
#     @mailbox = []
#   end

#   def empty_inbox
#     self.mailbox = []
#   end
# end

# class TelephoneService < CommunicationsProvider
#   def initialize(name, account_number, phone_number)
#     super(name, account_number)
#     @phone_number = phone_number
#   end
# end

# class PostalService < CommunicationsProvider
#   include Mailing
  
#   attr_accessor :street_address, :mailbox

#   def initialize(name, street_address)
#     super(name)
#     @street_address = street_address
#     @mailbox = []
#   end

#   def change_address(new_address)
#     self.street_address = new_address
#   end
# end

# rafaels_email_account = EmailService.new('Rafael', 111, 'Rafael@example.com')
# johns_phone_service   = TelephoneService.new('John', 122, '555-232-1121')
# johns_postal_service  = PostalService.new('John', '47 Sunshine Ave.')
# ellens_postal_service = PostalService.new('Ellen', '860 Blackbird Ln.')

# puts johns_postal_service.send(ellens_postal_service.street_address, Postcard.new('Greetings from Silicon Valley!'))
# # => undefined method `860 Blackbird Ln.' for #<PostalService:0x00005571b4aaebe8> (NoMethodError)





# class TaskManager
#   attr_reader :owner
#   attr_accessor :tasks

#   def initialize(owner)
#     @owner = owner
#     @tasks = []
#   end

#   def add_task(name, priority=:normal)
#     task = Task.new(name, priority)
#     tasks.push(task)
#   end

#   def complete_task(task_name)
#     completed_task = nil

#     tasks.each do |task|
#       completed_task = task if task.name == task_name
#     end

#     if completed_task
#       tasks.delete(completed_task)
#       puts "Task '#{completed_task.name}' complete! Removed from list."
#     else
#       puts "Task not found."
#     end
#   end

#   def display_all_tasks
#     display(tasks)
#   end

#   def display_high_priority_tasks
#     high_tasks = tasks.select do |task|
#       task.priority == :high
#     end

#     display(high_tasks)
#   end

#   private

#   def display(tasks)
#     puts "--------"
#     tasks.each do |task|
#       puts task
#     end
#     puts "--------"
#   end
# end

# class Task
#   attr_accessor :name, :priority

#   def initialize(name, priority=:normal)
#     @name = name
#     @priority = priority
#   end

#   def to_s
#     "[" + sprintf("%-6s", priority) + "] #{name}"
#   end
# end

# valentinas_tasks = TaskManager.new('Valentina')

# valentinas_tasks.add_task('pay bills', :high)
# valentinas_tasks.add_task('read OOP book')
# valentinas_tasks.add_task('practice Ruby')
# valentinas_tasks.add_task('run 5k', :low)

# valentinas_tasks.complete_task('read OOP book')

# valentinas_tasks.display_all_tasks
# valentinas_tasks.display_high_priority_tasks



# require "pry"

# class BankAccount
#   attr_reader :balance

#   def initialize(account_number, client)
#     @account_number = account_number
#     @client = client
#     @balance = 0
#   end

#   def deposit(amount)
#     if amount > 0
#       self.balance += amount
#       "$#{amount} deposited. Total balance is $#{balance}."
#     else
#       "Invalid. Enter a positive amount."
#     end
#   end

#   def withdraw(amount)
#     if amount > 0 && amount < balance
#       success = true
#       self.balance = (@balance - amount)
#     else
#       success = false
#     end
    
#     if success
#       "$#{amount} withdrawn. Total balance is $#{balance}."
#     else
#       "Invalid. Enter positive amount less than or equal to current balance ($#{balance})."
#     end
#   end

#   def balance=(new_balance)
    
#     if valid_transaction?(new_balance)
#       @balance = new_balance
#       true
#     else
#       false
#     end
#   end

#   def valid_transaction?(new_balance)
#     new_balance >= 0
#   end
# end

# # Example

# account = BankAccount.new('5538898', 'Genevieve')

#                           # Expected output:
# p account.balance         # => 0
# p account.deposit(50)     # => $50 deposited. Total balance is $50.
# p account.balance         # => 50
# p account.withdraw(30)    # => Invalid. Enter positive amount less than or equal to current balance ($50).
#                           # Actual output: $80 withdrawn. Total balance is $50.
# p account.balance         # => 50


# class Length
#   attr_reader :value, :unit
  
#   # include Comparable

#   def initialize(value, unit)
#     @value = value
#     @unit = unit
#   end

#   def as_kilometers
#     convert_to(:km, { km: 1, mi: 0.6213711, nmi: 0.539957 })
#   end

#   def as_miles
#     convert_to(:mi, { km: 1.609344, mi: 1, nmi: 0.8689762419 })
#   end

#   def as_nautical_miles
#     convert_to(:nmi, { km: 1.8519993, mi: 1.15078, nmi: 1 })
#   end

#   # def ==(other)
#   #   case unit
#   #   when :km  then value == other.as_kilometers.value
#   #   when :mi  then value == other.as_miles.value
#   #   when :nmi then value == other.as_nautical_miles.value
#   #   end
#   # end
  
#   def <=>(other)
#     case unit
#     when :km  then value <=> other.as_kilometers.value
#     when :mi  then value <=> other.as_miles.value
#     when :nmi then value <=> other.as_nautical_miles.value
#     end
#   end

#   # def <(other)
#   #   case unit
#   #   when :km  then value < other.as_kilometers.value
#   #   when :mi  then value < other.as_miles.value
#   #   when :nmi then value < other.as_nautical_miles.value
#   #   end
#   # end

#   # def <=(other)
#   #   self < other || self == other
#   # end

#   # def >(other)
#   #   !(self <= other)
#   # end

#   # def >=(other)
#   #   self > other || self == other
#   # end

#   def to_s
#     "#{value} #{unit}"
#   end

#   private

#   def convert_to(target_unit, conversion_factors)
#     Length.new((value / conversion_factors[unit]).round(4), target_unit)
#   end
# end

# # Example

# puts [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)].sort
# => comparison of Length with Length failed (ArgumentError)
# expected output:
# 1 km
# 1 mi
# 1 nmi

# class File
#   attr_accessor :name, :byte_content

#   def initialize(name)
#     @name = name
#   end

#   alias_method :read,  :byte_content
#   alias_method :write, :byte_content=

#   def copy(target_file_name)
#     target_file = self.class.new(target_file_name)
#     target_file.write(read)

#     target_file
#   end

#   def to_s
#     "#{name}.#{self.class::FORMAT}"
#   end
# end

# class MarkdownFile < File
#   FORMAT = :md
# end

# class VectorGraphicsFile < File
#   FORMAT = :svg
# end

# class MP3File < File
#   FORMAT = :mp3
# end

# # Test

# blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
# blog_post.write('Content will be added soon!'.bytes)

# copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

# puts copy_of_blog_post.is_a? MarkdownFile     # true
# puts copy_of_blog_post.read == blog_post.read # true

# puts blog_post

# class EmployeeManagementSystem
#   attr_reader :employer

#   def initialize(employer)
#     @employer = employer
#     @employees = []
#   end

#   def add(employee)
#     if exists?(employee)
#       puts "Employee serial number is already in the system."
#     else
#       employees.push(employee)
#       puts "Employee added."
#     end
#   end

#   alias_method :<<, :add

#   def remove(employee)
#     if !exists?(employee)
#       puts "Employee serial number is not in the system."
#     else
#       employees.delete(employee)
#       puts "Employee deleted."
#     end
#   end

#   def exists?(employee)
#     employees.any? { |e| e == employee }
#   end

#   def display_all_employees
#     puts "#{employer} Employees: "

#     employees.each do |employee|
#       puts ""
#       puts employee.to_s
#     end
#   end

#   private

#   attr_accessor :employees
# end

# class Employee
#   attr_reader :name

#   def initialize(name, serial_number)
#     @name = name
#     @serial_number = serial_number
#   end

#   def ==(other)
#     serial_number == other.serial_number
#   end

#   def to_s
#     "Name: #{name}\n" +
#     "Serial No: #{abbreviated_serial_number}"
#   end

#   protected

#   attr_reader :serial_number

#   private
  
#   def abbreviated_serial_number
#     serial_number[-4..-1]
#   end
# end

# # Example

# miller_contracting = EmployeeManagementSystem.new('Miller Contracting')

# becca = Employee.new('Becca', '232-4437-1932')
# raul = Employee.new('Raul', '399-1007-4242')
# natasha = Employee.new('Natasha', '399-1007-4242')

# miller_contracting << becca     # => Employee added.
# miller_contracting << raul      # => Employee added.
# miller_contracting << raul      # => Employee serial number is already in the system.
# miller_contracting << natasha   # => Employee serial number is already in the system.
# miller_contracting.remove(raul) # => Employee deleted.
# miller_contracting.add(natasha) # => Employee added.

# miller_contracting.display_all_employees






# class Person
#   attr_reader :name
#   attr_accessor :location

#   def initialize(name)
#     @name = name
#   end

#   def teleport_to(latitude, longitude)
#     @location = GeoLocation.new(latitude, longitude)
#   end
# end

# class GeoLocation
#   attr_reader :latitude, :longitude

#   def initialize(latitude, longitude)
#     @latitude = latitude
#     @longitude = longitude
#   end
  
#   def ==(other)
#     (latitude == other.latitude) && (longitude == other.longitude)
#   end

#   def to_s
#     "(#{latitude}, #{longitude})"
#   end
# end

# # Example

# ada = Person.new('Ada')
# ada.location = GeoLocation.new(53.477, -2.236)

# grace = Person.new('Grace')
# grace.location = GeoLocation.new(-33.89, 151.277)

# ada.teleport_to(-33.89, 151.277)

# puts ada.location                   # (-33.89, 151.277)
# puts grace.location                 # (-33.89, 151.277)
# puts ada.location == grace.location # expected: true
#                                     # actual: false







# class Animal
#   def initialize(diet, superpower)
#     @diet = diet
#     @superpower = superpower
#   end

#   def move
#     puts "I'm moving!"
#   end

#   def superpower
#     puts "I can #{@superpower}!"
#   end
# end

# class Fish < Animal
#   def move
#     puts "I'm swimming!"
#   end
# end

# class Bird < Animal
# end

# class FlightlessBird < Bird
#   def initialize(diet, superpower)
#     super
#   end

#   def move
#     puts "I'm running!"
#   end
# end

# class SongBird < Bird
#   def initialize(diet, superpower, song)
#     super(diet, superpower)
#     @song = song
#   end

#   def move
#     puts "I'm flying!"
#   end
# end

# # Examples

# unicornfish = Fish.new(:herbivore, 'breathe underwater')
# penguin = FlightlessBird.new(:carnivore, 'drink sea water')
# robin = SongBird.new(:omnivore, 'sing', 'chirp chirrr chirp chirp chirrrr')



# class Library
#   attr_accessor :address, :phone, :books

#   def initialize(address, phone)
#     @address = address
#     @phone = phone
#     @books = []
#   end

#   def check_in(book)
#     books.push(book)
#   end
  
#   def display_books
#     books.each do |book|
#       book.display_data
#     end
#   end
# end

# class Book
#   attr_accessor :title, :author, :isbn

#   def initialize(title, author, isbn)
#     @title = title
#     @author = author
#     @isbn = isbn
#   end

#   def display_data
#     puts "---------------"
#     puts "Title: #{title}"
#     puts "Author: #{author}"
#     puts "ISBN: #{isbn}"
#     puts "---------------"
#   end
# end

# community_library = Library.new('123 Main St.', '555-232-5652')
# learn_to_program = Book.new('Learn to Program', 'Chris Pine', '978-1934356364')
# little_women = Book.new('Little Women', 'Louisa May Alcott', '978-1420951080')
# wrinkle_in_time = Book.new('A Wrinkle in Time', 'Madeleine L\'Engle', '978-0312367541')

# community_library.check_in(learn_to_program)
# community_library.check_in(little_women)
# community_library.check_in(wrinkle_in_time)

# community_library.display_books



# # Without adding any methods below, implement a solution 
# class ClassA 
#   include Comparable 
  
#   attr_reader :field1, :field2
  
#   def initialize(num)
#     @field1 = "xyz"
#     @field2 = num
#   end
  
#   def <=>(other)
#     field2 <=> other.field2
#   end
# end

# class ClassB 
#   attr_reader :field1

#   def initialize
#     @field1 = "abc"
#   end
# end


# obj1 = ClassA.new(50)
# obj2 = ClassA.new(25)
# obj3 = ClassB.new


# p obj1 > obj2
# p obj2 > obj3
























# #describe what the code below outputs and why from Joseph Ochoa
# module Attackable
#   def attack
#     "attacks!"
#   end
# end

# class Characters
#   attr_accessor :name, :characters 
  
#   def initialize(name) 
#     #
#     self.name 
#     @characters = [] 
#   end
  
#   def display
#     name
#   end
  
#   protected 
#   attr_reader :name
#   attr_writer :name
# end

# class Monster < Characters
#   include Attackable
  
#   def initialize(name)
#     super
#   end
# end

# class Barbarian < Characters
#   def ==(other)
#     if(super.self == super.self) # 
#       super.self == super.self
#     end
#   end
# end

# conan = Barbarian.new('barb') 
# rob = Monster.new('monst')
# conan.characters << rob
# p conan.display


# # From Joseph Ochoa
# # give class Barbarian the functionality of the Monster instance attack method:
#   # If you used class inheritance, now try doing it without class inheritance directly.
#   # If you used modules, now try not using modules
#   # If you used duck typing, now don't use duck typing 


# class Monster
#   def attack
#     "attacks!"
#   end
# end

# class Barbarian 
#   def attack
#     "attacks!"
#   end
# end


# class Person
#   attr_writer :first_name, :last_name

#   def full_name
#     "#{@first_name} #{@last_name}"
#   end
  
  
# end

# mike = Person.new
# mike.first_name = 'Michael'
# mike.last_name = 'Garcia'
# p mike.full_name # => 'Michael Garcia'

# What code snippet can replace the "omitted code" comment to produce the indicated result? 


# class Recipe
  
#   @@total = 0
  
#   def initialize(name)
#     @name = name
#     @@total += 1
#   end
  
#   def self.total # Recipe.total
#     @@total
#   end
  
#   def change_name(new_name)
#     self.name = new_name
#   end
  
#   private
  
#   attr_accessor :name
# end

# pizza = Recipe.new("pizza")
# p pizza
# pizza.change_name("best pizza")
# p pizza


# class Recipe
#   attr_reader :ingredients
  
#   def initialize(name)
#     @name = name
#     @ingredients = []
#   end  
  
#   def slice_all_ingredients
#     @ingredients.each do |ing|
#       ing.cut_slice
#     end
#   end
# end

# class Ingredient
#   def initialize(name)
#     @name = name
#   end
  
#   def cut_slice
#     puts "I'm slicing the #{@name}"
#   end
# end

# cole_slaw = Recipe.new("cole slaw")
# onions = Ingredient.new("onions")
# carrots = Ingredient.new("carrots")
# cabbage = Ingredient.new("cabbage")

# cole_slaw.ingredients << onions
# cole_slaw.ingredients << carrots
# cole_slaw.ingredients << cabbage
# cole_slaw.slice_all_ingredients

# class Recipe
#   def initialize(name, calories)
#     @name = name
#     @calories = calories
#   end
  
#   def >(other)
#     calories > other.calories
#   end
  
#   protected
  
#   attr_reader :calories
# end

# class Lunch
#   def initialize(name, calories)
#     @name = name
#     @calories = calories
#   end
  
#   def >(other)
#     calories > other.calories
#   end
  
#   protected
  
#   attr_reader :calories
# end

# salad = Recipe.new("salad", 150)
# wings = Lunch.new("wings", 600)

# p salad > wings


# class Recipe
#   def initialize(name, secret_ingredient)
#     @name = name
#     @secret_ingredient = secret_ingredient
#   end
  
#   def make
#     "I'm cooking #{@name} with #{secret_ingredient}"
#   end
  
#   private
  
#   attr_reader :secret_ingredient
# end

# mac_and_cheese = Recipe.new("mac and cheese", "nutmeg")
# p mac_and_cheese.make



# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   def print_with_caps
#     self.print
#   end
  
#   def print
#     "This is a recipe for #{@name}"
#   end
# end

# rice = Recipe.new("rice")
# print_with_caps

# module Finance
    
#   class Employee
#     def initialize
      
#     end
#   end
    
# end

# module Behavior
  
#   class Employee
    
    
#   end
  
# end



# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#     @name
#   end
# end

# salmon = Recipe.new("salmon")
# puts "This is the best recipe for #{salmon}"


# class Recipe
  
#   attr_accessor :name
#   attr_reader :calories
#   attr_writer :rating
  
#   def initialize(name, calories, rating)
#     @name = name
#     @calories = calories
#   end
# end

# bolognese = Recipe.new("bolognese", 750, 9)
# p bolognese.name = "the best bolognese"
# p bolognese
# bolognese.rating = 6
# p bolognese

# module Cleanable
#   def clean_kitchen
#     puts "Argh, I'm cleaning the kitchen."
#   end
# end

# class Chef
#   include Cleanable
  
#   def cook
#     puts "I'm cooking."
#   end
  
#   def self.reason # Chef.reason
#     puts "I'm a chef because I love food."  
#   end
  
# end

# nick = Chef.new
# nick.cook
# nick.reason
# Chef.clean_kitchen





# module Cookable
#   def cook
#     puts "I will cook this recipe for #{Lunch::SERVINGS} people"
#   end
# end

# class Recipe
#   include Cookable
  
#   SERVINGS = 4
  
#   def initialize(name)
#     @name = name
#   end
  
#   def show_servings
#     SERVINGS
#   end
  
#   def self.servings
#     SERVINGS
#   end
# end

# class Lunch < Recipe
#   def describe
#     puts "This is a #{@name} recipe for #{SERVINGS} people"
#   end
# end

# avocado_toast = Lunch.new("avocado toast")
# p avocado_toast.show_servings
# p Recipe.servings
# avocado_toast.describe
# avocado_toast.cook


# module Describable
#   def describe
#     @@tsp_of_salt
#   end
# end

# class Recipe
#   include Describable 
  
#   @@tsp_of_salt = 2
  
#   def initialize(name)
#     @name = name
#   end
  
#   def show_salt
#     @@tsp_of_salt
#   end
  
#   def self.salt
#     @@tsp_of_salt
#   end
# end

# class Dessert < Recipe
#   @@tsp_of_salt = 1
# end

# p Recipe.salt

# pizza_dough = Recipe.new("pizza dough")
# p pizza_dough.describe







# module Describable
#   def describe
#     puts "This #{@name} is so delicious."
#   end
# end

# class Recipe
#   include Describable
  
#   def initialize(name)
#     @name = name
#   end
  
#   def self.show
#     puts "This recipe is for #{@name}"
#   end
  
#   def print_name
#     puts "This recipe is for #{@name}"
#   end
# end


# class Lunch < Recipe
#   def print_calories
#     puts "This recipe for #{@name} is under 500 calories."    
#   end
# end

# shakshuka = Lunch.new("shakshuka")
# p shakshuka
# shakshuka.print_name
# Recipe.show
# shakshuka.print_calories
# shakshuka.describe

# module Cleanable
#   def clean_kitchen
#     puts "cleaning kitchen from Cleanable module"
#   end
# end

# class Cook
#   def clean_kitchen
#     puts "cleaning kitchen from Cook class"
#   end
# end

# class HomeCook < Cook
#   include Cleanable
  
# end

# eric = HomeCook.new

# eric.clean_kitchen

# p HomeCook.ancestors






# nouns: animal, dog, cat, fish  
# verbs: swim,



# module Stirable
#   CONS = 5
  
#   def stir
#     puts "I'm stirring"
#   end
# end

# class HomeCook
#   include Stirable

#   # methods/acces control
# end

# class Chef
#   include Stirable
  
#   def call
#     p CONS
#   end
# end


# bobby_flay = Chef.new
# bobby_flay.call




# class Recipe
  
#   def initialize(name, calories)
#     @name = name
#     @calories = calories
#   end
  
#   def to_s
#     "#{@name} only has #{@calories} calories"
#   end
# end

# salad = Recipe.new("salad", 150)
# puts salad

# class Recipe
#   def initialize(name)
#     @name = name
#   end
  
#   def make
#     puts "I'm making #{@name} tonight"
#   end
# end

# rice = Recipe.new("rice")

# rice.make

# p rice

# module Cookable
#   def cook
#     puts "I'm cooking for the fam."
#   end
# end


# class HomeCook
#   include Cookable
# end

# class Chef
#   include Cookable
# end

# Chef.new.cook
# HomeCook.new.cook

# class Recipe
#   def initialize(name, calories, rating)
#     @name = name
#     @calories = calories
#     @rating = rating
#   end
  
#   def >(other)
#     calories > other.calories
#   end
  
#   private
  
#   attr_reader :rating
  
  
#   protected
  
#   attr_reader :calories
# end

# chili = Recipe.new("chili", 500, 5)
# tacos = Recipe.new("tacos", 350, 4)

# p chili > tacos

# class Recipe
  
#   attr_reader :name
  
#   def initialize(name, secret_ingredient)
#     @name = name
#     @secret_ingredient = secret_ingredient
#   end
  
#   def cook
#     puts "I'm cooking #{name} with #{secret_ingredient}"
#   end
  
#   private
  
#   attr_reader :secret_ingredient
  
# end

# mac_and_cheese = Recipe.new("mac and cheese", "nutmeg")

# mac_and_cheese.cook
# mac_and_cheese.secret_ingredient



# Interview prep
=begin

=end

# class Person
  
#   def initialize(name, ssn)
#     @name = name
#     @ssn = ssn
#   end
  
#   def print_ssn
#     ssn[-4..-1]
#   end
  
#   private
  
#   attr_reader :ssn
# end

# jess = Person.new("jess", "132456789")

# p jess.print_ssn
# p jess.ssn


# hello Spellable
#   def cast_spell(spell)
#   end

# hello Wearable
#   def attach_armor
#   end
#   def remove_armor
#   end
# end

# class Player

#   def initialize(name)
#     @name = name
#     @health = 100
#     @strength = roll_dice
#     @intelligence = roll_dice
#   end

#   def heal(amount)
#     @health += amount
#   end

#   def hurt(amount)
#     @health -= amount
#   end

#   def to_s
#     puts "Name: #{@name.capitalize}"
#     puts "Class: #{self.class}"
#     puts "Health: #{@health}"
#     puts "Strength: #{@strength}"
#     "Intelligence: #{@intelligence}"
#   end

#   private

#   def roll_dice
#     rand(2..12)
#   end

# end

# class Warrior < Player
#   include Wearable

#   def initialize(name)
#     super(name)
#     @strength += 2
#   end
# end

# class Paladin < Player
#   include Wearable
#   include Spellable
# end

# class Magician < Player
#   include Spellable

#   def initialize(name)
#     super(name)
#     @intelligence += 2
#   end
# end

# class Bard < Player
#   include Spellable

#   def create_potion
#   end
# end


# class Recipe
#   attr_accessor :name
#   attr_reader :calories
#   attr_writer :review

#   def initialize(name, calories)
#     @name = name
#     @calories = calories
#   end
# end

# shephards_pie = Recipe.new("shephards pie", 500)

# p shephards_pie.name 
# shephards_pie.name = "the best shephards pie"  
# p shephards_pie.calories
# shephards_pie.review = "This was really delicious" 
# p shephards_pie.review 


# class Foo
#   attr_reader :baz, :qux

#   def initialize
#     @baz = 1
#     @qux = 2
#   end

#   def ==(other)
#     baz == other.baz
#   end
# end

# class Bar < Foo
#   def initialize(baz)
#     super()
#     @baz = baz
#   end

#   def ==(other)
#     qux == other.qux
#   end
# end

# foo = Foo.new
# bar = Bar.new(2)

# p foo
# p bar

# p bar == foo # true
# p foo == bar # false


# hello Spellable
#   def cast_spell(spell)
#   end

# module Wearable
#   def attach_armor
#   end

#   def remove_armor
#   end
# end

# class Player
  
#   def initialize(name)
#     @name = name
#     @health = 100
#     @strength = roll_dice
#     @intelligence = roll_dice
#   end

#   def heal(amount)
#     @health += amount
#   end

#   def hurt(amount)
#     @health -= amount
#   end

#   def to_s
#     puts "Name: #{@name.capitalize}"
#     puts "Class: #{self.class}"
#     puts "Health: #{@health}"
#     puts "Strength: #{@strength}"
#     "Intelligence: #{@intelligence}"
#   end

#   private

#   def roll_dice
#     rand(2..12)
#   end

# end

# class Warrior < Player
#   include Wearable

#   def initialize(name)
#     super(name)
#     @strength += 2
#   end
# end

# class Paladin < Player
#   include Wearable
#   include Spellable
# end

# class Magician < Player
#   include Spellable
  
#   def initialize(name)
#     super(name)
#     @intelligence += 2
#   end
# end

# class Bard < Player
#   include Spellable

#   def create_potion
#   end
# end


# warrior = Warrior.new("warrior")
# paladin = Paladin.new("paladin")
# magician = Magician.new("magician")
# bard = Bard.new("bard")

# puts warrior
# puts paladin
# puts magician
# puts bard



















# p rand(2..12)

# module Swimmable
# end

# module Aquatic
# end

# class Animal
# end

# class Fish < Animal
#   include Aquatic
#   include Swimmable
# end

# class ClownFish < Fish
# end

# nemo = ClownFish.new
# marlin = ClownFish.new

# nemo == marlin # returns false

# p ClownFish::ancestors

# require 'pry'
# class Foo
#   attr_reader :baz, :qux

#   def initialize
#     @baz = 1
#     @qux = 2
#   end

#   def ==(other)
#     baz == other.baz
#   end
# end

# class Bar < Foo
#   def initialize(baz)
#     super()
#     binding.pry
#     @baz = baz
#   end

#   def ==(other)
#     qux == other.qux
#   end
# end

# foo = Foo.new
# p foo
# bar = Bar.new(2)
# p bar


# p bar == foo # true
# p foo == bar # false

# class Rectangle
#   attr_reader :width, :length

#   def initialize(width, length)
#     @width = width
#     @length = length
#   end

#   def >(other)
#     area > other.area
#   end

#   private

#   def area
#     width * length
#   end
# end

# class Square < Rectangle
#   def initialize(width)
#     super(width, width)
#   end
# end

# square1 = Square.new(5)
# square2 = Square.new(6)

# puts square1 > square2

# class Country
#   def initialize(name, language)
#     @name = name
#     @@language = language
#   end

#   def name
#     @name
#   end

#   def language
#     @@language
#   end
# end

# france = Country.new('France', 'French')
# spain = Country.new('Spain', 'Spanish')

# puts france.name # France
# puts france.language # Spanish
# puts france.language

# class Dog
#   def initialize(name)
#     @name = name
#   end

#   def self.info
#     puts "All dogs are good boys!"
#   end
# end

# benji = Dog.new('Benji')
# benji.info

# p (5 || false)

# class Human
#   attr_reader :name 
  
#   def initialize(name)
#     @name = name
#   end
  
#   def equal?(other)
#     name == other.name
#   end
  
#   def +(other)
#     self
#   end
 
# end

# gilles = Human.new("gilles") 
# anna = Human.new("gilles") 

# puts anna.equal?(gilles) #should output true # 
# puts anna + gilles # should output annagilles 




# class Human 
#   attr_reader :name

#   @@name = "Dylan"
  
#   def initialize(name="Dylan")
#     @name = name
#   end
  
#   def hair_colour(colour="blonde")
#     "Hi my name is #{name} and I have #{colour} hair."
#   end
  
#   def self.hair_colour(_)
#     "Hi, my name is #{@@name} and I have blonde hair."
#   end
  
# end

# puts Human.new("Jo").hair_colour("blonde")  
# # Should output "Hi, my name is Jo and I have blonde hair."

# puts Human.hair_colour("")              
# # Should "Hi, my name is Dylan and I have blonde hair."







# class Person
  
#   def initialize(name, job)
#       @name = name
#       @greet = "My name is #{@name} and I am a #{job}"
#   end 
  
#   def to_s; @greet end
  
# end

# roger = Person.new("Roger", "Carpenter")
# puts roger # "My name is Roger and I am a Carpenter"

# Add 1 line of code for the person class
# and 1 line of code in the initalize method. 


#Other than that don't change Person.

# Output:
# "My name is Roger and I am a Carpenter"














# Output:
# "My name is Roger and I am a Carpenter"

# class Recipe
#   @@count = 0

#   def self.count
#     @@count
#   end

#   def initialize(name)
#     @name = name
#     @@count += 1
#   end
# end

# puts Recipe.count
# meatballs = Recipe.new("meatballs")
# puts Recipe.count

# class Recipe
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def change_name(new_name)
#     self.name = new_name
#   end

#   private

#   attr_writer :name
# end

# pasta = Recipe.new("pasta")
# p pasta.name
# pasta.change_name("pasta and red sauce")
# p pasta.name

# class Recipe
#   attr_reader :ingredients
#   def initialize
#     @ingredients = []
#   end
  
#   def prepare_ingredients
#     @ingredients.each do |ingredient|
#       ingredient.cut_slice
#     end
#   end
# end

# class Ingredient
#   def initialize(name)
#     @name = name
#   end
  
#   def cut_slice
#     puts "Slicing #{@name}"
#   end
# end

# bread = Ingredient.new("bread")
# cheese = Ingredient.new("cheese")
# grilled_cheese = Recipe.new
# grilled_cheese.ingredients << cheese
# grilled_cheese.ingredients << bread
# grilled_cheese.prepare_ingredients

# class Recipe
#   def initialize(name, time_to_cook, rating)
#     @name = name
#     @time_to_cook = time_to_cook
#     @rating = rating
#   end

#   def >(other)
#     time_to_cook > other.time_to_cook
#   end

#   def better_rating_than(other)
#     rating > other.rating
#   end

#   protected
  
#   attr_reader :time_to_cook

#   private

#   attr_reader :rating
# end

# beef_stew = Recipe.new("beef stew", 3, 4)
# stir_fry = Recipe.new("stir fry", 1, 3)
# p beef_stew > stir_fry
# p beef_stew.better_rating_than(stir_fry)
# p beef_stew.time_to_cook
# p stir_fry.rating

# class Recipe
#   def cook
#     puts "I'm cooking!"
#   end
# end

# green_eggs_and_ham = Recipe.new
# green_eggs_and_ham.cook
# class Recipe

#   def cook
#     puts "I'm cooking"
#     add_special_ingredient
#   end

#   private

#   def add_special_ingredient
#     puts "Add special ingredient"
#   end
# end

# soup = Recipe.new
# soup.cook
# soup.add_special_ingredient
# class Recipe
#   def initialize(name, calories)
#     @name = name
#     @calories = calories
#   end

#   def >(other)
#     calories > other.calories
#   end

#   protected

#   attr_reader :calories
# end

# cheeseburger = Recipe.new("cheeseburger", 750)
# salad = Recipe.new("salad", 150)
# p cheeseburger > salad
# cheeseburger.calories

# class Recipe
#   def initialize(name)
#     @name = name
#   end

#   # def to_s
#   #   @name
#   # end
# end

# coconut_rice = Recipe.new("coconut rice")
# puts "I love cooking #{coconut_rice}"

# class Recipe
#   attr_accessor :name
#   attr_reader :calories
#   attr_writer :review

#   def initialize(name, calories)
#     @name = name
#     @calories = calories
#   end
# end

# shephards_pie = Recipe.new("shephards pie", 500)
# p shephards_pie.name # => "shephards pie"
# shephards_pie.name = "the best shephards pie" # => this works because we defined a `@name` setter method 
# p shephards_pie.calories  # => 500
# shephards_pie.review = "This was really delicious" # => This works because we defined a `@review` writer method
# p shephards_pie  # => this will print all the instance variables so you can see we have actually set the `@review` instance variable
# p shephards_pie.review # =>  this will throw an error because we never defined a getter method for `@review`

# class Recipe
#   @@total_recipes = 0

#   def initialize
#     @@total_recipes += 1
#   end
  
#   def self.total
#     @@total_recipes
#   end

#   def cook
#     "Cooking this recipe."
#   end
# end

# casserole = Recipe.new

# p casserole.cook #=> "Cooking this recipe."
# p Recipe.total #=> 1


# module Describable
#   def describe
#     puts "This recipe serves #{NUMBER_OF_SERVINGS} people."
#   end
# end

# class Recipe
#   NUMBER_OF_SERVINGS = 4

#   include Describable

  

#   def servings
#     puts NUMBER_OF_SERVINGS
#   end
  
#   private
  
#   def self.servings
#     puts NUMBER_OF_SERVINGS
#   end
  
# end

# class Dessert < Recipe 
# end

# bananas_foster = Dessert.new

# bananas_foster.servings
# Dessert.servings
# bananas_foster.describe

# class Recipe
  
#   @@tsp_of_salt = 2

#   def initialize(name)
#     @name = name
#   end

#   def print_salt_amount
#     puts @@tsp_of_salt
#   end
# end

# class Dessert < Recipe 
#   @@tsp_of_salt = 0
# end

# class Lunch < Recipe 

# end

# salmon = Lunch.new("salmon")
# brownies = Dessert.new("brownies")

# salmon.print_salt_amount
# brownies.print_salt_amount

# class Recipe
#   def print_generic_recipe
#     puts "This is a terrific recipe for #{@name}."
#   end
# end

# class LunchRecipe < Recipe

#   def self.print_name
#     puts "This lunch recipe is for #{@name}"
#   end
#   def initialize(name)
#     @name = name
#   end

#   def print_description
#     puts "This lunch recipe is for #{@name}."
#   end
# end

# mac_and_cheese = LunchRecipe.new("mac and cheese")
# chili = LunchRecipe.new("chili")

# mac_and_cheese.print_description
# chili.print_description
# LunchRecipe.print_name

# mac_and_cheese.print_generic_recipe
# class Recipe

#   def self.print_name
#     puts "This recipe is for #{@name}"
#   end
#   def initialize(name)
#     @name = name
#   end

#   def print_description
#     puts "This recipe is for #{@name}."
#   end
# end

# mac_and_cheese = Recipe.new("mac and cheese")
# chili = Recipe.new("chili")

# mac_and_cheese.print_description
# chili.print_description
# Recipe.print_name

# module Cleanable
#   def clean_kitchen
#     puts "I'm cleaning the kitchen. This method comes from the module Cleanable"
#   end
# end
# class RestaurantEmployee
#   def clean_kitchen
#     puts "I'm cleaning the kitchen. This method comes from the class RestaurantEmployee"
#   end
# end

# class Cook < RestaurantEmployee
#   include Cleanable
# end

# winston = Cook.new
# winston.clean_kitchen
# p Cook.ancestors

# class Auto
#   def self.drive
#     puts "I'm driving!"
#   end
# end

# class Car < Auto
# end

# bobs_car = Car.new
# Car.drive
# bobs_car.drive

# class House
#   attr_reader :price

#   include Comparable

#   def initialize(price)
#     @price = price
#   end

#   def <=>(other)
#     price <=> other.price
#   end
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2 # => Home 1 is cheaper
# puts "Home 2 is more expensive" if home2 > home1 # => Home 2 is more expensive



# class Cat
#   def ==(other)
#     self.class == other.class
#   end
# end

# whiskers = Cat.new
# ginger = Cat.new
# paws = Cat.new

# p whiskers == ginger

# class Recipe
#   def initialize(secret_ingredient)
#     @secret_ingredient = secret_ingredient
#   end

#   private
#   attr_reader :secret_ingredient
# end

# mac_and_cheese = Recipe.new("nutmeg")
# red_sauce = Recipe.new("anchovies")
# p mac_and_cheese
# p mac_and_cheese.secret_ingredient

# module Stirable
#   def stir
#     puts "I'm stirring."
#   end
# end

# class HomeCook
#   include Stirable
# end

# class Chef
#   include Stirable
# end

# ted = HomeCook.new
# chef_elane = Chef.new

# ted.stir
# chef_elane.stir

# class HomeCook
#   def cook
#     puts "Lets make this recipe in my kitchen for my family."
#   end
# end

# class Chef
#   def cook
#     puts "Lets make this recipe in my restaurant for 100 people."
#   end
# end

# ted = HomeCook.new
# chef_elane = Chef.new

# ted.cook
# chef_elane.cook

# class Recipe

#   def initialize(ingredients, secret_ingredient, calories)
#     @ingredients = ingredients
#     @secret_ingredient = secret_ingredient
#     @calories = calories
#   end

#   def >(other)
#     calories > other.calories
#   end

#   def make_recipe
#     mix_ingredients
#   end

#   protected 
#   attr_reader :calories

#   private
#   attr_reader :secret_ingredient
  
#   def mix_ingredients
#     (@ingredients + @secret_ingredient).chars.sort.join
#   end
# end

# salad = Recipe.new("lettuce, tomatoes", "ranch", 200)
# soup = Recipe.new("stock, noodles", "soy sauce", 400)

# p salad.make_recipe
# p salad > soup
# p salad.secret_ingredient

# class Recipe
#   def instance_of?
#     puts "Still in recipe class because I overrode `Object#instance_of?`"
#   end
# end

# turkey_sandwich = Recipe.new
# turkey_sandwich.instance_of? Array

# class Recipe
#   def initialize(secret_ingredient)
#     @secret_ingredient = secret_ingredient
#   end

#   private 
#   attr_reader :secret_ingredient
# end

# brownies = Recipe.new("instant coffee")
# brownies.secret_ingredient

# module Convertable
#   def convert_to_sentence
#     puts "OOO that's high calorie" if @cals > 700
#     puts "OOO that's low calorie" if @cals < 400
#   end
# end
# class Recipe
#   include Convertable 
  
#   def puts_cals
#     puts @cals
#   end
# end

# class Lunch < Recipe
#   def initialize(cals)
#     @cals = cals
#   end
# end

# nachos = Lunch.new(900)
# chicken_breast = Lunch.new(150)
# nachos.puts_cals
# chicken_breast.puts_cals

# nachos.convert_to_sentence
# chicken_breast.convert_to_sentence

# class Recipe
#   def initialize(name)
#     @name = name
#   end

#   def print_message
#     puts "#{self} is a great recipe"
#   end

#   def to_s
#     "#{@name.capitalize}"
#   end
# end

# apple_pie = Recipe.new("apple pie")


# apple_pie.print_message

# class Recipe
#   def self.message
#     "This is a great #{self}"
#   end
# end

# p Recipe.message

# class Recipe
#   attr_accessor :meal

#   def initialize(meal)
#     @meal = meal
#   end

#   def change_meal(new_meal)
#     self.meal = new_meal
#   end
# end

# omlette = Recipe.new("breakfast")
# omlette.change_meal("brunch")

# p omlette.meal
# class Recipe
#   attr_reader :calorie_count
  
#   def initialize(calorie_count)
#     @calorie_count = calorie_count
#   end

#   def >(other)
#     calorie_count > other.calorie_count
#   end
# end

# mac_and_cheese = Recipe.new(1000)
# salad = Recipe.new(300)

# p mac_and_cheese > salad

# class Recipe
#   attr_reader :ingredients

#   def initialize
#     @ingredients = []
#   end
# end

# class Ingredient
#   def initialize(name)
#     @name = name
#   end
# end

# paella = Recipe.new
# paella.ingredients << Ingredient.new("rice")
# paella.ingredients << Ingredient.new("saffron")
# paella.ingredients << Ingredient.new("chicken stock")

# p paella.ingredients
# class Person
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def get_name
#     "#{@name.capitalize} is the best person ever."
#   end
# end


# jack = Person.new("jack")
# p jack.name
# p jack.get_name


# #you'd like to flatter your guests by rounding down with their ages

# class Guest
#   attr_accessor :name
  
#   def initialize(name, age, height)
#     @name = name
#     @age = age
#     @height = self.set_height(height)
#   end
  
#   def set_height(height)
    
#   end
  
  
#   private
  
# end


# lori = Guest.new
# lori.set_age(69)
# p lori.age


# class Animal
#   def eat
#     puts "I eat."
#   end
# end

# class Fish < Animal
#   def eat
#     puts "I eat plankton."
#   end
# end

# class Dog < Animal
#   def eat
#     puts "I eat kibble."
#   end
# end

# def feed_animal(animal)
#   animal.eat
# end

# array_of_animals = [Animal.new, Fish.new, Dog.new]
# array_of_animals.each do |animal|
#   feed_animal(animal)
# end

# module Walkable
#   def walk
#     "I'm walking."
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming."
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end

# module Danceable
#   def dance
#     "I'm dancing."
#   end
# end

# class Animal
#   include Walkable

#   def speak
#     "I'm an animal, and I speak!"
#   end
# end

# module GoodAnimals
#   include Climbable

#   class GoodDog < Animal
#     include Swimmable
#     include Danceable
#   end
  
#   class GoodCat < Animal; end
# end

# good_dog = GoodAnimals::GoodDog.new
# p good_dog.walk
# p GoodAnimals::GoodDog.ancestors

# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
  
#   def change_name
#     self.name = name.upcase
#   end
# end

# bob = Person.new('Bob')
# p bob.name 
# bob.change_name
# p bob.name


# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end

#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end
# end


# sparky = GoodDog.new('Spartacus', '12 inches', '10 lbs') 
# sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info 
# # => Spartacus weighs 10 lbs and is 12 inches tall.


# class AnimalClass
#   attr_accessor :name, :animals
  
#   def initialize(name)
#     @name = name
#     @animals = []
#   end
  
#   def <<(animal)
#     animals << animal
#   end
  
#   def +(other_class)
#     new_obj = AnimalClass.new("new_name")
#     new_obj.animals = animals + other_class.animals
#     new_obj
#   end
# end

# class Animal
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
# end

# mammals = AnimalClass.new('Mammals')
# mammals << Animal.new('Human')
# mammals << Animal.new('Dog')
# mammals << Animal.new('Cat')

# birds = AnimalClass.new('Birds')
# birds << Animal.new('Eagle')
# birds << Animal.new('Blue Jay')
# birds << Animal.new('Penguin')

# some_animal_classes = mammals + birds

# p some_animal_classes 


# module Describable
#   def describe_shape
#     "I am a #{self.class} and have #{SIDES} sides."
#   end
# end

# class Shape
#   include Describable

#   def self.sides
#     self::SIDES
#   end
  
#   def sides
#     self.class::SIDES
#   end
# end

# class Quadrilateral < Shape
#   SIDES = 4
# end

# class Square < Quadrilateral; end

# p Square.sides 
# p Square.new.sides 
# p Square.new.describe_shape 

#for Joel
=begin

class Rapper
  attr_reader :money
  
  def initialize(name, money)
    @name = name
    @money = money
  end
  
  def more_money_than?(other_rapper)
    money > other_rapper.money
  end
end



drake = Rapper.new("Drizzy", 500)
j_cole = Rapper.new("J Cole", 250)
kanye = Rapper.new("Ye", 1000)


p drake.more_money_than?(j_cole)
p kanye.more_money_than?(drake)

# What will print and why?
 
class Rapper
  attr_reader :money
  
  def initialize(name, money)
    @name = name
    @money = money
  end
  
  def more_money_than?(other_rapper)
    money > other_rapper.money
  end
end

class Singer
  
  def initialize(name, money)
    @name = name
    @money = money
  end
  
  def more_money_than?(other_rapper)
    money > other_rapper.money
  end
end

drake = Rapper.new("Drizzy", 500)
j_cole = Rapper.new("J Cole", 250)
kanye = Rapper.new("Ye", 1000)

the_weeknd = Singer.new("The Weeknd", 100 )
her = Singer.new("H.E.R.", 50 )

p drake.more_money_than?(j_cole)  # should be true
p kanye.more_money_than?(drake)   # should be true
p drake.more_money_than?(her)           # should throw an error
p the_weeknd.more_money_than?(j_cole)  # should throw an error
p the_weeknd.money #should throw an error
p j_cole.money #should throw an error

# Singers should not be able to know how much rappers make and vice versa. 
# Your task is to first, DRY up this code
# Second, make it so only rappers can know what others rappers make, but not singers

-----------------------------------------------------------
my answer



class Artist
  def initialize(name, money)
    @name = name
    @money = money
  end
  
  def more_money_than?(other_rapper)
    money > other_rapper.money
  end
end

class Rapper < Artist
  protected 
  
  attr_reader :money
end

class Singer < Artist
  protected 
  
  attr_reader :money
end

drake = Rapper.new("Drizzy", 500)
j_cole = Rapper.new("J Cole", 250)
kanye = Rapper.new("Ye", 1000)

the_weeknd = Singer.new("The Weeknd", 100 )
her = Singer.new("H.E.R.", 50 )

p drake.more_money_than?(j_cole)  # should be true
p kanye.more_money_than?(drake)   # should be true
p her.more_money_than?(the_weeknd) # should be false
p drake.more_money_than?(her)           # should throw an error
p the_weeknd.more_money_than?(j_cole)  # should throw an error
p the_weeknd.money #should throw an error
p j_cole.money #should throw an error









class Sport
  @@field = "swimming pool"
  
  def initialize(team_name, team_size)
    @name = team_name
    @team_size = team_size
  end
  
  def print_field
    @@field
  end
end

class Soccer < Sport
  @@field = "soccer field"
end

class Basketball < Sport
  @@field = "basketball court"
end

class Swimming < Sport
  @@field = "pool"
end

soccer = Soccer.new("RedBulls", 11)
basketball = Basketball.new("Nets", 5)
swimming = Swimming.new("Michael Phelps", 1)

p soccer.print_field
p basketball.print_field
p swimming.print_field

#What prints and why? How would you fix this?









class Book
  attr_reader :title
  
  def initialize(title, rating)
    @title = title
    @rating = rating
  end
  
  def change_rating(new_rating)
    rating = new_rating
  end
  
  def print_rating
    @rating
  end
  
  private 
  
  attr_writer :rating
end

dune = Book.new("Dune", 8)
dune.change_rating(9)
p dune.print_rating

# why doesn't the code print the new rating? 
# fix it






module Emotable
  def emote
    super
    puts "You freaking know that I am always feeling #{typical_emotion}."
  end
end

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def emote
    puts "YOU KNOW I AM ALWAYS FEELING #{typical_emotion}"  
  end
end

class AngryPerson < Person
  include Emotable 
  
  attr_reader :typical_emotion
  
  def initialize(name, age, typical_emotion)
    super(name, age)
    @typical_emotion = typical_emotion
  end
end


jerry = AngryPerson.new("jerry", 55, "blind rage")
jerry.emote

 #which `#emote` method is invoked and why? 
 
# What if we wante both statements to print? Change one line so that both print. 
# ex:
# YOU KNOW I AM ALWAYS FEELING blind rage
# You freaking know that I am always feeling blind rage.






=end






# ------------------------------------------------------------------------------------------------------------------------------

# class Person
#   TITLES = ['Mr', 'Mrs', 'Ms', 'Dr']

#   @@total_people = 0

#   def initialize(name)
#     @name = name
#   end

#   def age
#     @age
#   end
# end
 
# p Person.total_people



# class House
#   attr_reader :price

#   def initialize(price)
#     @price = price
#   end
  
#   def >(other)
#     price > other.price
#   end
  
#   def <(other)
#     price < other.price
#   end
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2 # => Home 1 is cheaper
# puts "Home 2 is more expensive" if home2 > home1 # => Home 2 is more expensive



# module Drivable
#   def drive
#   end
# end

# class Car
#   include Drivable
# end

# bobs_car = Car.new
# bobs_car.drive

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
 
# cat = Cat.new("l")
# cat.make_one_year_older
# p cat.age

# class Character
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def speak
#     "#{name} is speaking."
#   end
# end

# class Knight < Character
#   def name
#     "Sir " + super
#   end
# end

# sir_gallant = Knight.new("Gallant")
# p sir_gallant.name 
# p sir_gallant.speak 

# class Student
#   attr_accessor :grade

#   def initialize(name, grade=nil)
#     @grade = grade
#     @name = name
    
#   end 
# end

# ade = Student.new('Adewale')
# p ade # => #<Student:0x00000002a88ef8 @grade=nil, @name="Adewale">
# class MeMyselfAndI
#   self

#   def self.me
#     self
#   end

#   def myself
#     self
#   end
# end

# i = MeMyselfAndI.new
# p i.myself

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     @name = n
#     @age  = a * DOG_YEARS
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# p sparky

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age  = a * DOG_YEARS
#   end

# # 	def to_s
# # 		"#{name} is #{age} years old."
# # 	end
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky
# p sparky
# # class Shape
#   @@sides = nil

#   def self.sides
#     @@sides
#   end

#   def sides
#     @@sides
#   end
# end

# class Triangle < Shape
#   def initialize
#     @@sides = 3
#   end
# end

# p Triangle.sides

# class Quadrilateral < Shape
#   def initialize
#     @@sides = 4
#   end
# end

# Triangle.new
# Quadrilateral.new
# # p Triangle.sides
# p Triangle.new.sides