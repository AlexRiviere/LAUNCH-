=begin



#Searching 101

cardinal = ["1st", "2nd", "3rd", "4th", "5th", "last"]
arr = []
num_to_check = ""

6.times do |num|
  if num < 5
    puts "Enter the #{cardinal[num]} number:"
    number = gets.chomp.to_i
    arr << number
  else
    puts "Enter the last number:"
    num_to_check = gets.chomp.to_i
  end 
end

if arr.include?(num_to_check)
  puts "The number #{num_to_check} appears in #{arr}"
else
  puts "The number #{num_to_check} does not appear in #{arr}"
end 



#Arithmetic Integer

def prompt(message)
  puts "==> #{message}"
end 

prompt("Enter the first number:")
first = gets.chomp.to_i

prompt("Enter the second number:")
second = gets.chomp.to_i

prompt("#{first} + #{second} = #{first + second}")
prompt("#{first} - #{second} = #{first - second}")
prompt("#{first} * #{second} = #{first * second}")
prompt("#{first} / #{second} = #{first / second}")
prompt("#{first} % #{second} = #{first % second}")
prompt("#{first} ** #{second} = #{first ** second}")



#Counting the Number of Characters

puts "Please write word or multiple words:"
words = gets.chomp
length = words.split.join.length
puts "There are #{length} characters in \"#{words}\""



#Multiplying Two Numbers

def multiply(num1, num2)
  num1 * num2
end

p multiply([3, 4, 5, 6], 3)



#Squaring an Argument

def square(num)
  num**2
end

p square(5) == 25
p square(-8) == 64



#Exclusive Or

def xor?(bool1, bool2)
  return true if bool1 == true && bool2 == false
  return true if bool1 == false && bool2 == true
  return false if bool1 == true && bool2 == true
  return false if bool1 == false && bool2 == false
end 


def xor?(bool1, bool2)
  arr = [bool1, bool2]
  return true if arr.count(true) == 1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false



#Odd Lists

def oddities(arr)
  new_arr = []
  arr.each_with_index do |elem, idx|
    new_arr << elem if idx.even?
  end
  new_arr
end



def oddities(arr)
  arr.reject.with_index{|num, idx| idx.odd?}
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []



#Palindromic Strings (Part 1)

def palindrome?(word)
  word == word.reverse
end


#p palindrome?('madam') == true
#p palindrome?('Madam') == false          # (case matters)
#p palindrome?("madam i'm adam") == false # (all characters matter)
#p palindrome?('356653') == true



#Palindromic Strings (Part 2)

def real_palindrome?(str)
  str = str.downcase.gsub(/[^0-9A-Za-z]/, '')
  palindrome?(str)
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

=end

#Palindromic Numbers


def palindromic_number?(num)
  num.to_s.reverse == num.to_s
end
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true