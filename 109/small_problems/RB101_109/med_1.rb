# Rotation (Part 1)
#problem
# =>  given an array, move the first element, to the end of teh array
#input: array
#output: another array, not original
#rules:
# =>  explicit  - do not use rotate method
# =>              original array should not be modified
# =>  impliict  - array of one returns the same array
#data structure
# =>  arrays
#Algorithm
# =>  

# def rotate_array(arr)
#   new_arr = arr[1..-1]
#   new_arr << arr[0]
#   new_arr
# end


#test cases
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# p x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true


#Write a method that rotates a string instead of an array. Do the same thing for integers.
#You may use rotate_array from inside your new method.

# def rotate_array(arr)
#   new_arr = arr[1..-1]
#   new_arr << arr[0]
#   new_arr
# end

# def rotate_string(str)
#   arr = str.chars
#   rotate_array(arr).join
# end

# p rotate_string("hello")





#Rotation (Part 2)
#problem
# =>  given an integer, rotate the last n digits. so if its two, switch the last two
# =>    if its three, last one is first, then first, then second
#input: integer
#output: integer rotated
#rules
# =>  explicit  - rotating 1 digit is returning the original number
# =>              can use the rotate_array emthod from last exercise
# =>              n is always a pos integer
#data strucutre
# =>  array
#algorithm
# =>  turn integer into string
# =>  make string into an array
# =>  pop off the last n elements from the array
# =>  run those through the rotate array method
# =>  push those back onto the origianl array
# =>  return original array

# def rotate_rightmost_digits(number, digits)
#   arr = number.to_s.chars
#   rotated_nums = rotate_array(arr.pop(digits))
#   arr << rotated_nums
#   arr.join.to_i
# end

# def rotate_array(arr)
#   new_arr = arr[1..-1]
#   new_arr << arr[0]
#   new_arr
# end


# #test cases
# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917








#Rotation (Part 3)

#problem
# =>  given a number, rotate it to the left, then keep the first digit fixed, rotate the rest
# =>    then keep the first two fixed, rotate the rest. the last rotation keeps the 
# =>    first (digit number - 2) numbers fixed and rotates teh last two and returns the 
# =>    number as an integer
#input: integer
#output: integer max rotated
#rules
# =>  explicit  - dont worry about multiple zeroes
# =>              use method from previous exercise
#data structure
# =>  array
#algorithm
# =>  turn the integer into a string, then characters into an array
# =>  get num of digits (aka length of array)
# =>  initialize counter
# =>  loop 
# =>    pass in arr and all digits (digits - counter) to rotate_rightmost_digits
# =>      counter += 1
# =>    break if digits - counter == 1 
# =>  join the array and convert to an integer

# def max_rotation(int)
#   digits = int.to_s.chars.size
#   counter = 0
#   new_int = int
#   loop do 
#     break if digits - counter == 1
#     new_int = rotate_rightmost_digits(new_int, digits - counter)
#     counter += 1
#   end
#   new_int
# end

# def rotate_rightmost_digits(number, digits)
#   arr = number.to_s.chars
#   rotated_nums = rotate_array(arr.pop(digits))
#   arr << rotated_nums
#   arr.join.to_i
# end

# def rotate_array(arr)
#   new_arr = arr[1..-1]
#   new_arr << arr[0]
#   new_arr
# end


# #test cases
# p max_rotation(735291)        == 321579
# p max_rotation(3)             == 3
# p max_rotation(35)            == 53
# p max_rotation(105)           == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845










#1000 Lights
#problem
# =>  bank of switches, 1 - n, all are off to start. then next round, 1,2,3,4,5...are toggled
# =>    next round, 2,4,6,8 are toggled
# =>    next round 3,6,9 are toggled
# =>    number of rounds is equal to n 
#input: one integer
#output: array of integers that identifies which lights are on
#rules
# =>  explicit  - n repititions
# =>              
#data structure
# =>  arrays/hash?
#algorithm
# =>  initialize range, 1 to n, turn into array
# =>  initialize empty hash 
# =>  interate through array to create hash with keys as nums and vals as "off"
# =>  initialize counter
# =>  loop do 
# =>    iterate through hash 
# =>      toggle lights at key if key is divisible by counter
# =>      use if statement to toggle lights, if off then on, vice versa
# =>  break if counter == n

# def toggle_switch(hsh, key, value)
#   if value == "off"
#     hsh[key] = "on"
#   else
#     hsh[key] = "off"
#   end
# end

# def initialize_hsh(n)
#   lights = (1..n).to_a
#   switch_bank = {}
#   lights.each do |light|
#     switch_bank[light] = "off"
#   end
#   switch_bank
# end

# def toggle_lights(n)
#   switch_bank = initialize_hsh(n)
#   counter = 1
#   loop do
#     switch_bank.each do |k, v|
#       toggle_switch(switch_bank, k, v) if k % counter == 0
#     end
#     counter += 1
#     break if counter > n
#   end
#   switch_bank.select { |_, v| v == 'on' }.keys
# end


# #tests cases

# p toggle_lights(5)  == [1, 4]
# p toggle_lights(10) == [1, 4, 9]










#Diamonds!
#problem
# =>  given an odd integer, write a method that prints a diamond in an int X int grid
#input: integer
#output: diamond printed
#rules
# =>  explicit  - int X int grid
# =>              always given odd int
#data structure
# =>  printing strings on a loop? 
#algorithm
# =>  initialize num of diamonds = 1
# =>  initialize num of spaces = (int - num of diamonds) / 2
# =>  initialize counter = 1
# =>  loop
# =>    print spaces * num of spaces + diamonds * num of diamonds + spaces * num of spaces
# =>    if counter < (int / 2) + 1, 
# =>      num of diamonds += 2
# =>    else
# =>      num of diamonds -= 2
# =>    counter += 1
# =>    break if counter > int

# require "pry"

# def diamond(n)
#   num_of_diamonds = 1
  
#   counter = 1
#   loop do 
#     num_of_spaces = (n - num_of_diamonds) / 2
    
#     puts " " * num_of_spaces + "*"*num_of_diamonds + " "*num_of_spaces
    
#     if counter < (n / 2) + 1
#       num_of_diamonds += 2
#     else
#       num_of_diamonds -= 2
#     end
    
#     counter += 1
#     break if counter > n
#   end
  
# end


# #test cases
# diamond(1)
# puts ""
# diamond(3)
# puts ""
# diamond(9)









#Stack Machine Interpretation
#problem
# =>write a method that implements a mini stack and register language with specified commands
#input: string with spaces between integers and commands
#ouptut: integers that are solutions to caluclations
#rules
# =>  explicit  - each operation operates on a register, which is the current value
# =>              register is not part of the stack
# =>              operations that require two values pop the top item from the stack (most
# =>                recently pushed value) and performs operation using the popped val and
# =>                teh register value
# =>              result is stored in register
# =>              initialize the register to 0
# =>  implicit  - see if you can just get push, pop, print, and add, then inlcude the others
#data structure
# =>  an array, loop? or some iterative process, variables to store register
#algorithm
# =>  get string arg
# =>  turn string into array (mix of integers and words)
# =>  initiatlize register to 0
# =>  initialize stack_arr = []
# =>  initialize counter var
# =>  loop
# =>    iterating over string_Arr 
# =>      if el is a INteger
# =>        register = integer
# =>      if el == POP
# =>        register = stack_arr.pop
# =>      if el == PUSH
# =>        stack_arr << register
# =>      if el == PRINT
# =>        puts register
# =>      if el == ADD
# =>      register = register + last stack val
# =>  end loop

# require "pry"

# def minilang(str)
#   str_arr = str.split
#   stack_arr = []
#   register = 0
#   counter = 0
  
#   loop do
#     if str_arr[counter].to_i != 0  
#       register = str_arr[counter].to_i
#     elsif str_arr[counter] == "POP"
#       register = stack_arr.pop
#     elsif str_arr[counter] == "PUSH"
#       stack_arr << register
#     elsif str_arr[counter] == "PRINT"
#       puts register
#     elsif str_arr[counter] == "ADD"
#       register = register + stack_arr.pop
#     elsif str_arr[counter] == "SUB"
#       register = register - stack_arr.pop
#     elsif str_arr[counter] == "MULT"
#       register = register * stack_arr.pop
#     elsif str_arr[counter] == "DIV"
#       register = register / stack_arr.pop
#     elsif str_arr[counter] == "MOD"
#       register = register % stack_arr.pop
#     end
    
#     counter += 1
#     break if counter >= str_arr.size
#   end
# end




# #test cases

# minilang('5 PUSH 6 ADD')

# minilang('PRINT')
# 0
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









#Word to Digit
#problem
# =>  given a sentence, return the string with numbers instead of words
#input: string with numbers spelled
#output: string w numbers as integers
#rules
# =>  implicit  - one space bewteen numbers , no dashes
#data structure
# =>  array, hash to store nums
#algorithm
# =>  make a contant hash with words as keys and nums (as strings) as digits
# =>  split the string
# =>  iterate over the hash (map)
# =>    replace instances of the hash keys with tier values
# =>    join the array

# WORDS_HASH = {  'zero'=>'0',
#                 'one'=>'1',
#                 'two'=>'2',
#                 'three'=>'3',
#                 'four'=>'4',
#                 'five'=>'5',
#                 'six'=>'6',
#                 'seven'=>'7',
#                 'eight'=>'8',
#                 'nine'=>'9'   }

# def word_to_digit(str)
#   WORDS_HASH.each_key do |key|
#     str.gsub!(/\b#{key}\b/, WORDS_HASH[key])
#   end
#   str
# end



# #test case
# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'











#Fibonacci Numbers (Recursion)
#problem
# =>  write a recursive method computing the nth fibonacci number
#input: integer reprsenting nth fib num
#output: integer representing caluclation of nth fib number
#rules
# =>  explicit  - must use recursion
# =>              1 is 1 and 2 is also 1
#data structure
# =>  recursion
#algorithm
# =>  given int
# =>  break case is n <= 2
# =>    you return 1 in this case
# =>  other wise
# =>    fib(n-1) + fib(n - 2)

# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# #test cases

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765











#Fibonacci Numbers (Procedural)
#problem
# =>  rewrite the recursive fibonacci so it computes wihtout recursion
#data structure
# =>  loop?
#algorithm
# =>  if n == 1, return 1, if n == 2, return 1
# =>  initiatlize arr = [1, 1]
# =>  initialize counter 1 = 0
# =>  initialize counter 2 = 1
# =>  loop
# =>    arr << (arr[counter1] + arr[counter1])
# =>    counter1 += 1
# =>    counter2 += 1
# =>    break if arr.size == n 
# =>  return sum of last two digits from array

# def fibonacci(n)
#   return 1 if n <= 2
#   arr = [1, 1]
#   counter1 = 0
#   counter2 = 1
#   loop do
#     arr << (arr[counter1] + arr[counter2])
#     counter1 += 1
#     counter2 += 1
#     break if arr.size == n
#   end
#   arr.last
# end




# p fibonacci(20) == 6765
# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501








#Fibonacci Numbers (Last Digit)

#get last digits



def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last.to_s.chars.last
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4