=begin
#Repeat Yourself
#Write a method that takes two arguments, a string and a positive integer, 
#and prints the string as many times as the integer indicates.

#method will take two args, str and int
#int must be pos, or else
#method will print the string as many times as the integer is 


def repeat(str, int)
  if int > 0
    int.times{puts str}
  end
end

repeat('Hello', 3)



#odd

#Write a method that takes one integer argument, which may be positive, negative, or zero. 
#This method returns true if the number's absolute value is odd.
#You may assume that the argument is a valid integer value.

#method takes one integer argument
#returns true if integer is odd, if odd, true, otherwise, false

def is_odd?(int)
  if int % 2 != 0
    true
  else
    false
  end 
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#could have doen this in one line
#int % 2 == 1



#List of Digits

#take one argument(a positive integer)
#returns the list of the digits in the number in an array

def digit_list(int)
  int.to_s.split('').map{|num| num.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

#could have used map{&:to_i}


#How many?

#method take an array argument
#returns hash with number of occurences next to each element

#problem 
#take the array, iterate through, count the occurences, add it to the hash, 
#then delete all occurences,
#or add all to hash, then delete duplicates from the hash
require "pp"

def count_occurrences(arr)
  count = {}
  arr.map{|str| count[str] = arr.count(str)}
  count.map{|k, v| puts "#{k} => #{v.to_s}" } 
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)


#Reverse It (Part 1)

#problem
#takes a string
# splits the string
#reverses the order
#puts the string back together

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''



#Reverse It (Part 2)

#problem
#takes a str 
#split string
#iterate through string, checking if words have 5 or more characters
#if 5 or more characters , reverse 
#else leave as it is
#join string back together

def reverse_words(str)
  str.split.map do |word|
    if word.length >= 5
      word.reverse
    else 
      word
    end
  end.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS



#Stringy Strings

#problem
#takes an integer
#array to capture 0s and 1s
#makes a range up to the integer
#iterate through range, adding 1 to array if range # is even, 0 if odd
#join array into a string

def stringy(int)
  range = 1.upto(int).to_a
  final = []
  range.map do |num|
    if num.odd?
      1
    else
      0
    end
  end.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'



#Stringy Strings further exploration


def stringy(size, start = 1)
  numbers = []
  if start == 1
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  elsif start == 0
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  else
    puts "not a valid argument"
  end

  numbers.join
end

puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'



#array average

#method takes one array argument, the array contains integers
#adds all array, divide by array.size

def average(arr)
  arr.sum / arr.size.to_f
end

puts average([1, 6])# == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40



#sum of digits

#takes an argument of a positive integer, 
#turns it a to a string, separates characters into array, adds array

def sum(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

=end

#What's my Bonus?

#takes two arguments, positive integer, and a boolean
#if boolean == true, return salary / 2
#else return 0

def calculate_bonus(salary, bonus)
  return salary / 2 if bonus == true
  0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000