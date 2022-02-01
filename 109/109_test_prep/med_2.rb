=begin
# **Problem**
# =>	objective: given a text file, print the sentence with the most words and the number of words it has

# =>	input: text file

# =>  	output: a sentence and an integer representing how many words the longest sentence has

# =>	rules:

# =>		explicit	-	sentences end with periods, exclamation points, or question marks
# =>              - single spaces delimit words, words can be non-alphabetic characters

# =>		implicit	-

# =>	questions:

# **Data Structure**
#  - array

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
#   - initialize new local var text, assign to value from the txt file, which is a string
    - initialize local var sentence, assign to the separate string into sentences using regex
    - initialize local var  `num_of_words`, assign to return value from iteration over sentences (#map)
      - split each sentence at the spaces
      - count how many words each sentence has and return the value
    - initialize local var `max`, assign to the max of `num_of_words` array
    - initialize local var `max_index`, assign to index of the max
    - print the string and the max

# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# text = File.read('test_file.txt')
# sentences = sentences = text.split(/\.|\?|!/)

# num_of_words = sentences.map do |sentence|
#   sentence.split.size
# end

# max = num_of_words.max
# max_index = num_of_words.find_index(max)

# puts "The longest sentence is :#{sentences[max_index]} and it has #{max} words"











=begin



# Now I Know My ABCs

# **Problem**
# =>	objective: given a word, return true if the word does not have two letters from the same letter pair or false if it does

# =>	input: word (string)

# =>  	output: boolean true or false

# =>	rules:

# =>		explicit	-	letter pairs are organized, the word cannot use the same letter more than once, and cannot use the same block (pair) more than once
                  - if cannot use the other letter in the pair if the first letter was used and vice versa

# =>		implicit	- can be given a word in lowercase, letter pairs are stored in uppercase so you will need to change this

# =>	questions: can i mutate the string? Empty string? spaces?

# **Data Structure**
  - hash to store letter pairs
  
# **Edge Cases**
  - empty string returns true
  
# **Implementation Notes**

# **Algorithm**
  - initialize a constant hash that stores the letter pairs
  
  - check if the given word is an empty string, if so return immediately `true`
  - initialize local var `upcase_word`, assign it to the uppercase version of the given word
  - initialize local var `chars`, assign it to an array of the given word's characters
  - iterate over `chars` and check each letter to see if its match is included in the given word
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**



# **Algorithm**
  - initialize a constant hash that stores the letter pairs
  
  - check if the given word is an empty string, if so return immediately `true`
  - initialize local var `upcase_word`, assign it to the uppercase version of the given word
  - initialize local var `chars`, assign it to an array of the given word's characters
  - iterate over `chars`
    - initialize local var `pair` and store the letter's pair
    - skip this iteration if `pair` is nil
    - check to see if the pair is included in the given word (true if it is NOT included)
  
=end

# require "pry"

# LETTER_PAIRS = {"B" => "O",
#                 "G" => "T",
#                 "V" => "I",
#                 "X" => "K",
#                 "R" => "E",
#                 "F" => "S",
#                 "L" => "Y",
#                 "D" => "Q",
#                 "Z" => "M",
#                 "C" => "P",
#                 "J" => "W",
#                 "N" => "A",
#                 "H" => "U"
  
# }

# def block_word?(word)
#   return true if word.empty?
  
#   upcase_chars = word.upcase.chars

#   upcase_chars.all? do |char|
  
#     pair = LETTER_PAIRS[char]
#     if pair.nil?
#       true
#     elsif word.include?(pair)
#       false
#     else
#       true
#     end
#   end
  
# end



# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true
# p block_word?('') == true













=begin
Lettercase Percentage Ratio
In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, 
as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, 
one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples

Copy Code
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }




# **Problem**
# =>	objective: given a string, return a hash with lowercase, uppercase and neither as keys and their respective percentages as values

# =>	input: string

# =>  	output: hash

# =>	rules:

# =>		explicit	-	string will always be at least one character

# =>		implicit	-

# =>	questions:

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**
  - regex to test for letters or other
  - format the percentage
  
# **Algorithm**
  - initialize local var `lowercase`
  - initialize local var `uppercase`
  - initialize local var `neither`
  - initialize local var `total_chars`, assigned to the sie of the given word
  - initialize local var `chars` which will be assigned to the word, split into characters
    - iterate over `chars`
      - if the `char` is uppercase, increment `uppercase`
      - if the `char` is lowercase, increment `lowercase`
      - if the `char` is neither, increment `neither
  - initialize local var `lowercase_perc`, assigned is the percentage of lowercase letters, formatted
  - initialize local var `uppercase_perc`, ''
  - initialize local var `neither_perc`, ""
  - return the specified hash 
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# def letter_percentages(word)
  
#   lowercase = 0
#   uppercase = 0
#   neither = 0
#   total_chars = word.size
#   chars = word.chars
#   chars.each do |char|
    
#     if char =~ /[a-z]/
#       lowercase += 1
#     elsif char =~ /[A-Z]/
#       uppercase += 1
#     else
#       neither += 1
#     end
    
#   end
  
#   # [lowercase, uppercase, neither]
#   # lowercase_perc = format( "%.2 f", (lowercase / total_chars.to_f * 100) )
#   lowercase_perc = format( "%.2f", (lowercase / total_chars.to_f * 100) )
#   uppercase_perc = format( "%.2f", (uppercase / total_chars.to_f * 100) )
#   neither_perc = format( "%.2f", (neither / total_chars.to_f * 100) )
  
#   {lowercase: lowercase_perc.to_f, uppercase: uppercase_perc.to_f, neither: neither_perc.to_f}
# end



# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }




# def letter_percentages(word)
  
#   lowercase = 0
#   uppercase = 0
#   neither = 0
#   total_chars = word.size
#   chars = word.chars
#   chars.each do |char|
    
#     if char =~ /[a-z]/
#       lowercase += 1
#     elsif char =~ /[A-Z]/
#       uppercase += 1
#     else
#       neither += 1
#     end
    
#   end
  
#   # [lowercase, uppercase, neither]
#   # lowercase_perc = format( "%.2 f", (lowercase / total_chars.to_f * 100) )
#   lowercase_perc = format( "%.2f", (lowercase / total_chars.to_f * 100) )
#   uppercase_perc = format( "%.2f", (uppercase / total_chars.to_f * 100) )
#   neither_perc = format( "%.2f", (neither / total_chars.to_f * 100) )
  
#   {lowercase: lowercase_perc.to_f, uppercase: uppercase_perc.to_f, neither: neither_perc.to_f}
# end



# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }























=begin
Matching Parentheses?
Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise.
To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:

Copy Code


Note that balanced pairs must each start with a (, not a ).


# **Problem**
# =>	objective: given a string, return true or false if all pairs of parentheses are balanced/matching 

# =>	input: string (can have or not have parentheses)

# =>  	output: true or false representing whether the string has matching parentheses

# =>	rules:

# =>		explicit	-	balanced pair starts with '('
                  - balanced means the same number of '(' as ')'
                  - 

# =>		implicit	- return true if there are no parentheses

# =>	questions: will we ever receive invalid input? can I mutate the string? 

# **Data Structure**
  - array
  
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialized local var 'balance`, assign it to 0
  - initialize local var `arr_just_paren`, assign it to the word with only parentheses left
  - iterate over `arr_just_paren`
    - test each char, 
      - if '(', increment balance
      - else, decrement balance
      - if balance is ever -1, return false
  - return true (if you get through the array of parentheses without ever returning false, return true)
  
  
# **Sub-Problems**

=end

# def balanced?(string)
#   balance = 0
#   arr_just_paren = string.chars.select { |char| char == "(" ||  char == ")" }
#   arr_just_paren.each do |paren|
#     paren == "(" ? balance += 1 : balance -= 1
#     break if balance == -1
#   end
  
#   balance == 0 
  
# end



# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('())Hey!((') == false
# p balanced?('What ((is))) up(') == false

































=begin
Tri-Angles
A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

Examples:

Copy Code
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid


# **Problem**
# =>	objective: given 3 angles of a triangle, return right, obtuse, acute or invalid

# =>	input: 3 integers in degrees

# =>  	output: symbol representing the type of triangle

# =>	rules:

# =>		explicit	-	invalid if sum of angles is not 180, invalid if 1 angle is <= 0
                  - 

# =>		implicit	-

# =>	questions:

# **Data Structure**
- array to hold angles
- case statment

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize local var `angles`, assign to an array of all three inputs
  - return :invalid if the sum of `angles` is not exactly 180 or if any of the angles are <= 0
  - case statement
  - if any of the angles is 90 degrees exactly => :right
  - if any of the angles is > 90 degrees => :obtuse
  - default to :acute
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**



=end

# def triangle(ang1, ang2, ang3)
#   angles = [ang1, ang2, ang3]
#   return :invalid if angles.sum != 180 || angles.any? {|ang| ang <= 0}
  
#   case 
#   when angles.any?{ |ang| ang == 90}
#     :right
#   when angles.any?{ |ang| ang > 90}
#     :obtuse
#   else
#     :acute
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid






























=begin
Unlucky Days
Write a method that returns the number of Friday the 13ths in the year given by an argument. 
You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Examples:

Copy Code
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2


# **Problem**
# =>	objective: given a year, return the number of friday the 13ths in the year

# =>	input: year

# =>  	output: integer representing the number of days in the year

# =>	rules:

# =>		explicit	-	year will be greater than 1752

# =>		implicit	-

# =>	questions: 

# **Data Structure**
  - array of all 12 13ths in the year

# **Edge Cases**

# **Implementation Notes**
- Time.new (year, month, day)

# **Algorithm**
  - initialize lcoal var `counter` = 1
  - initialize `friday_count`
  - start loop
    - initialize new local var `thirteenth`, assign to jan 13 of the given year
    - test if it is a friday
      - if so, increment friday count
      -  otherwise, next'
  - return `friday_count`
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# def friday_13th(year)
#   counter = 1
#   friday_count = 0
  
#   1.upto(12) do |month|
#     thirteenth = Time.new(year, month, 13)
#     friday_count += 1 if thirteenth.friday?
#     counter += 1
#   end
  
#   friday_count
  
# end


# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

# year = 1960
# counter = 1
# friday_counter = 0

# 1.upto(12) do |month|
#   a = Time.new(year, counter, 13)
#   if a.friday?
#     friday_counter += 1
#   end
#     counter += 1
# end

# p friday_counter






























=begin
Next Featured Number Higher than a Given Value
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. 
So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

Examples:

Copy Code
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


# **Problem**
# =>	objective: given a number, return the next highest featured number , or an error message if there are none

# =>	input: integer

# =>  	output: integer or error message

# =>	rules:

# =>		explicit	-	featured number 3 requirements = odd, multiple of 7, no repeat digits

# =>		implicit	- given anything invalid? what if given featured val?

# =>	questions:

# **Data Structure**
  - loop 
  
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize local variable `test_num`, assign to take given `start` + 1
  - loop
    - test if is it odd, a multiple of 7 and if it repeats digits
      - if yes, return `test_num`
      - else, increment `test_num` and run again
      - if `test_num` == 10_000_000_000, return error message

# **Sub-Problems**
 - test if repeats digits, given an integer, return true if it repeats digits
 - convert number to string
 - separate chars
 - see if uniq values match the original values
 
 
# **Code**

# **Test Cases**



=end

# def repeat_digits?(num)
#   chars = num.to_s.chars
#   chars != chars.uniq 
# end

# def featured(int)
#   test_num = int + 1
#   loop do 
#     if test_num.odd? && (test_num % 7 == 0) && !repeat_digits?(test_num)
#       return test_num
#     else
#       test_num += 1
#     end
    
#     return "No number fulfills those requirements" if test_num > 10_000_000_000
#   end
# end


# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements



































=begin
Sum Square - Square Sum
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Examples:

Copy Code
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150


# **Problem**
# =>	objective: given a number, return the difference between the sum of the integers leading up to that number, squared, and the sum of the squares of those numbers leading up to the given number 

# =>	input: integer

# =>  	output: integer

# =>	rules:

# =>		explicit	-	only given integers

# =>		implicit	-

# =>	questions:

# **Data Structure**

# **Edge Cases**
-  1 == 0 
# **Implementation Notes**

# **Algorithm**
  - initialize local var `list_of_nums`, assign to a range from 1 to the given number, convert to array
  - initialized local var `sum_squared`, assign to the sum of `list_of_nums`, squared
  - initialize local var `sum_of_each_squared`, assign to reduction of elements in `list_of_nums`, each squared, and added to the sum, return the sum
  - `sum_squared` minus `sum_of_each_squared`
  
  
# **Sub-Problems**

# **Code**

=end

# def sum_square_difference(int)
#   list_of_nums = (1..int).to_a
#   sum_squared = list_of_nums.sum ** 2
#   sum_of_each_squared = list_of_nums.reduce(0) { |sum, int| sum + int**2 }
#   sum_squared - sum_of_each_squared
# end


# p sum_square_difference(3) == 22
#     # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150















=begin
1000 Lights
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off.
You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. 
On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].



# **Problem**
# =>	objective: given an integer representing how many switches there are `n`, write a method that returns how many lights are on after `n` reps 

# =>	input: integer- represents how many switches and how many repetitions

# =>  	output: an array with the numbers of the lights that were left on

# =>	rules:

# =>		explicit	-	each switch is connected to one light
                  - first pass, you toggle every switch
                  - next pass, every 2nd, even numbers, you skip 2 by 2, starting with 2, 
                  - next pass, every third, start with 3, move 3 by three all the way up to n 
                  - switches are numbered 1 - n , starting with 1, not 0 

# =>		implicit	-

# =>	questions:

# **Data Structure**
  - array
  
# **Edge Cases**
  - what do i return if its 0? probably 0

# **Implementation Notes**
  - 
# **Algorithm**
  - initialize local var `light_switch_bank`, assign it to a new array with `n` 0s for integers
  - initialize local var `counter` = 1
  - loop 
    - transform `light_switch_bank` with indexes destructively
      - if (idx + 1) is divisible by counter
        - flip the switch (aka turn 0 to 1 or 1 to 0)
      - otherwise, return the same num
    - increment `counter`
    - break if `counter` is equal to `n`
  - iterate over `light_switch_bank` with indexes destructively
    - if `switch` is 1, return idx + 1
  - remove all nils from `light_switch_bank`
  
# **Sub-Problems**

# **Code**

# **Test Cases**
=end

# def light_switches(n)
#   return [] if n == 0
#   light_switch_bank = Array.new(n, 0)
#   counter = 1
  
#   loop do
#     light_switch_bank.map!.with_index do |switch, idx|
      
#       if ((idx + 1) % counter) == 0
#         switch == 0 ? 1 : 0
#       else
#         switch
#       end
      
#     end
#     counter += 1
#     break if counter == n + 1
#   end
  
#   indexes_with_lights_on = light_switch_bank.map.with_index do |switch, idx|
#     switch == 1 ? (idx + 1) : nil
#   end
  
#   indexes_with_lights_on.compact
# end


# p light_switches(10) == [1, 4, 9]
# p light_switches(5) == [1, 4]
# p light_switches(1) == [1]
# p light_switches(0) == []

























=begin
Diamonds!
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.


# **Problem**
# =>	objective: given n, print a diamond in an nXn grid

# =>	input: an odd integer

# =>  	output:

# =>	rules:

# =>		explicit	-	argument will always be odd numbered

# =>		implicit	- middle row is `n` stars

# =>	questions:

# **Data Structure**
  - two loops
  
# **Edge Cases**
  - 1 
  
# **Implementation Notes**

# **Algorithm**
  - initialize local var `stars_top` = 1
  - loop (for top half)
    - print (n-stars)/ 2 spaces
    - print (stars_top "*")
    - increment `stars_top` by 2
    - break if it is equal to n
    
  - print middle row ("*" * n)
  
  - initialize local var `stars_bottom` = n - 2
  - loop (for bottom half)
    - print (n-stars)/ 2 spaces
    - print (stars_top "*")
    - decrement `stars_bottom` by 2
    - break if it equals -1
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# def diamond(n)
  
#   stars_top = 1
  
#   loop do
#     spaces = (n - stars_top) / 2
#     puts " " * spaces + "*" * stars_top
#     stars_top += 2
#     break if stars_top >= n
#   end
  
#   puts "*" * n if n > 1
  
#   stars_bottom = n - 2
  
#   if n > 1
#     loop do
#       spaces = (n - stars_bottom) / 2
#       puts " " * spaces + "*" * stars_bottom
#       stars_bottom -= 2
#       break if stars_bottom <= 0
#     end
#   end
  
# end

# diamond(1)
# diamond(3)
# diamond(9)


































=begin
Stack Machine Interpretation
A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

A stack-and-register programming language is a language that uses a stack of values. Each operation in the language operates on a register, which can be thought of as the current value. 
The register is not part of the stack. Operations that require two values pop the topmost item from the stack (that is, the operation removes the most recently pushed value from the stack), 
perform the operation using the popped value and the register value, and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. It multiplies the stack value with the register value, removes the value from the stack, and then stores the result back in the register. 
Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack), and a register value of 7, then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), 
and the result of the multiplication, 28, is left in the register. If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.

ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.

POP Remove the topmost item from the stack and place in register
PRINT Print the register value

All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like
try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.

Examples:




# **Problem**
# =>	objective: write a method that implements the specified commands in a stack and register type fashion

# =>	input: string argument, with commands or numbers

# =>  	output: printing if that is the case

# =>	rules:

# =>		explicit	-	initialize register to 0
                  - all operations are integer operations
                  - all programs are correct programs

# =>		implicit	-

# =>	questions:

# **Data Structure**
  - array

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize array `commands`, assign to the split string argument at the spaces
  - initialize empty array `stack`
  - initialize `register`, assign to 0
  - loop until `commands` is empty
    - remove and analyze the first element of the `commands` array
      - if its a number, reassign `register` to that number 
      - if its 'PUSH', push the register value to the stack
      - if ADD, sub etc, pop value from stack and ____ register value, store result in register
      - POP, remove top item from `stack` and assign to `register`
      - PRINT, print `register` value
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**



=end

# require 'pry'

# def minilang(string)
#   commands = string.split
#   stack = []
#   register = 0
  
#   while commands.size > 0
  
#     command = commands.shift
#     # binding.pry
  
#     case 
#     when command.to_i != 0
#       # binding.pry
#       register = command.to_i
#     when command == 'PUSH' 
#       stack.push(register)
#     when command == "ADD"
#       register = stack.pop + register
#     when command == "SUB"
#       register =  register - stack.pop
#     when command == "MULT"
#       register = stack.pop * register
#     when command == "DIV"
#       register = register / stack.pop
#     when command == "MOD"
#       register = register % stack.pop
#     when command == "POP"
#       register = stack.pop
#     when command == "PRINT"
#       puts register
#     end
  
#   end

# end


# minilang('PRINT')
# # 0
# puts ""
# minilang('5 PUSH 3 MULT PRINT')
# # 15
# puts ""
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# puts ""
# minilang('5 PUSH POP PRINT')
# # 5
# puts ""
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7
# puts ""
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6
# puts ""
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12
# puts ""
# minilang('-3 PUSH 5 SUB PRINT')
# # 8
# puts ""
# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
# puts ""


































=begin
Word to Digit
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
'nine' converted to a string of digits.

Example:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'



# **Problem**
# =>	objective: convert the written string number to the string number

# =>	input: string

# =>  	output: string with number words replace with string numbers

# =>	rules:

# =>		explicit	-	

# =>		implicit	-

# =>	questions: can i mutate the arg?

# **Data Structure**
  - hash
  - array
  
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize a constant var `WORDS_TO_NUMS`, assign to to a hash constant with words as keys, number strings as values
  
  - in the method, create an array of keys `nums_as_words` from `WORDS_TO_NUMS`
  - iterate over  `nums_as_words`
    - if the word is included in the given string
      - substitute it for the value
  - return the string
  

# **Sub-Problems**

# **Code**

# **Test Cases**
=end

# WORDS_TO_NUMS = { 'zero'    => "0",
#                   'one'     => '1',
#                   'two'     => '2',
#                   'three'   => '3',
#                   'four'    => '4',
#                   'five'    => '5',
#                   'six'     => '6',
#                   'seven'   => '7',
#                   'eight'   => '8',
#                   'nine'    => '9' }
                  
# def word_to_digit(string)
#   nums_as_words = WORDS_TO_NUMS.keys
#   new_string = string.split.join(" ")
  
#   nums_as_words.each do |word|
#     if string.include?(word)
#       new_string.gsub!(word, WORDS_TO_NUMS[word])
#     end
#   end
#   new_string
# end
# a = 'Please call me at five five five one two three four. Thanks.'
# p word_to_digit(a) == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# p a











































=begin
Fibonacci Numbers (Recursion)
The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers:
the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:

Copy Code
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2
Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself. For example:

Copy Code
def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end
sum is a recursive method that computes the sum of all integers between 1 and n.

Recursive methods have three primary qualities:

They call themselves at least once.
They have a condition that stops the recursion (n == 1 above).
They use the result returned by themselves.
In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.



# **Problem**
# =>	objective: use recursion to calculate the nth fibonacci number

# =>	input: integer

# =>  	output: the nth fobonacci number

# =>	rules:

# =>		explicit	-	must use recursion

# =>		implicit	-

# =>	questions:

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**
  - start with the condition that stops the recursion

# **Algorithm**
  - if the given number is <= 2, return 1
  - run f method for n - 2 + n - 1
  
# **Sub-Problems**

# **Code**

# **Test Cases**
=end

# def fibonacci(n)
#   return 1 if n <= 2
  
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765























=begin
Rewrite your recursive fibonacci method so that it computes its results without recursion.


# **Problem**
# =>	objective: write a fiboncacci method that computes the result 

# =>	input: integer

# =>  	output: nth fibonacci number

# =>	rules:

# =>		explicit	-	can't use recursion

# =>		implicit	-

# =>	questions:

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize `fib_nums` array, assign to array with [1, 1]
  - go from 3 up to the given number
    - add `fib_nums` at the previous number to the `fib_nums` at the number 2 back 
    - push this number to the `fib_nums` array
  - pop the n from the array
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# def fibonacci(n)
#   return 1 if n <= 2
  
#   fib_nums = [1, 1]
  
#   3.upto(n) do |num|
#     new_fib_num = fib_nums[num - 3] + fib_nums[num - 2]
#     fib_nums << new_fib_num
#   end
  
#   fib_nums.pop
  
# end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501























=begin
Fibonacci Numbers (Last Digit)
In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	

# =>		implicit	-

# =>	questions:

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - last number, to string, to array, last digit, to i
# **Sub-Problems**

# **Code**

# **Test Cases**


=end

# def fibonacci_last(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last.to_s.chars.last.to_i
  
# end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4