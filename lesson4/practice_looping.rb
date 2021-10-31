#runaway loop 
# loop do
#   puts 'Just keep printing...'
#   break
# end

#Loopception

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

#Control the Loop

# iterations = 1

# # loop do
# #   puts "Number of iterations = #{iterations}"
# #   iterations += 1
# #   break if iterations > 5
# # end

# #Loop on Command

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

#Say Hello

# say_hello = 1

# while say_hello <= 5
#   puts 'Hello!'
#   say_hello += 1
# end

#Print While

# numbers = []

# while numbers.length < 5
#   numbers << rand(100)
# end

# p numbers 

#Count Up

# count = 1

# until count > 10
#   puts count
#   count += 1
# end


#Print Until


# numbers = [7, 9, 13, 25, 18]

# count = 0
# until count == numbers.size
#   puts numbers[count]
#   count += 1
# end

#That's Odd

# for i in 1..100
#   if i.odd?
#     puts i
#   end
# end

#Greet Your Friends

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for name in friends 
#   puts "Hello #{name}"
# end

#LOOPS 2
#Even or Odd?

# count = 1

# loop do
#   break if count == 6
#   if count.even?
#     puts "#{count} is even!"
#   else 
#     puts "#{count} is odd!"
#   end 
#   count += 1
  
# end

#Catch the Number

# loop do
#   number = rand(100)
#   puts number
#   break if number.between?(0, 10)
# end

#Conditional Loop

# process_the_loop = [true, false].sample

# if process_the_loop == true
#   loop do
#     puts "The loop was processed"
#     break
#   end
# else
#   puts "The loop wasn't processed."
# end

#Get the Sum

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct"
#     break
#   else
#     puts "Wrong answer. Try again."
#   end
# end

#Insert Numbers

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# puts numbers

#Empty the Array

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.empty?
# end

#Stop Counting

# 5.times do |index|
#   puts index
#   break if index == 2
# end

#Only Even

# number = 0

# until number == 10
#   number += 1
#   puts number if number.even?
# end

#First to Five

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   if number_a == 5 || number_b == 5 
#     puts "5 was reached"
#     break
#   end
# end

#Greeting

def greeting
  puts 'Hello!'
end

number_of_greetings = 4

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end   
