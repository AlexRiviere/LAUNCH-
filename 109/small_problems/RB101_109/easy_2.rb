=begin


#1
puts "What is the name?"
name = gets.chomp
name = "Teddy" if name.empty?

age = rand(2..200)

puts "#{name} is #{age} years old today!"


#2

puts "Enter the length of the room in meters:"
length_m = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_m = gets.chomp.to_f

sq_m = length_m * width_m
sq_f = (sq_m * 10.7639).round(2)

puts "The area of the room is #{sq_m} square meters (#{sq_f} square feet)."



#tip calc

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_perc = gets.to_f / 100

tip = (tip_perc * bill).round(2)

total = (bill + tip).round(2)

puts "The tip is: #{format('%.2f', tip)}"
puts "The total is: #{format('%.2f', total)}"



#when will i retire

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retire_age = gets.to_i


time_to_retire = retire_age - age
year = Time.new.year
retire_year = year + time_to_retire


puts "Its #{year}. You will retire in #{retire_year}."
puts "You have only #{time_to_retire} years of work to go!"



#greeting a user

puts "What is your name?"
name = gets.chomp

if name.include?("!")
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end




#odd numbers 

(1..99).map do |num|
  puts num if num.odd?
end 



#even numbers

puts (1..99).filter(&:even?)



#Sum or Product of Consecutive Integers

def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
int = gets.to_i
arr_upto_int = (1..int).to_a


prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operator = gets.chomp

if operator == "p"
  product = arr_upto_int.reduce(&:*)
  puts "The product of the integers between 1 and #{int} is #{product}."
elsif operator == "s"
  sum = arr_upto_int.sum
  puts "The sum of the integers between 1 and #{int} is #{sum}."
end 



#String Assignment

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name


name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=end

#Mutation

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
p array2 
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2
p array1
