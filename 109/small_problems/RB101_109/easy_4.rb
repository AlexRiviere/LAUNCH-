#Short Long Short
#problem
#input: two strings
#output: string (made up of three strings, the shorter, the longer, the shorter again)
#rules
# => requirements :
# =>          explicit: return a string that concatenates the shorter string, then longer, then short
# =>          implicit: if one of the strings is empty, return just the longer string

#data structure
#these can stay as strings, be concatenating and then return a string

#algorithm
#determine which string is the largest
#determine which string is the shortest
#concatenate the long to the short
#take that value and concatenate the short again

# def short_long_short(str1, str2)
#   arr_of_words = [str1, str2]
#   arr_of_words.sort_by!{|word| word.length}
  
#   if arr_of_words[0].empty?
#     return arr_of_words[1]
#   end 
  
#   arr_of_words[0] + arr_of_words[1] + arr_of_words[0]
  
# end



#test cases
# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

#trying out another way

# def short_long_short(*args)
#   arr_of_words = [*args]
#   arr_of_words.sort_by!{|word| word.length}
#   p arr_of_words
  
#   if arr_of_words[0].empty?
#     return arr_of_words[1]
#   end 
  
#   arr_of_words[0] + arr_of_words[1] + arr_of_words[0]
  
# end


# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"


#What Century is That?

#problem
#takes a year and outputs a string that gives you the century 
#input: year(integer)
#output: string(century number iwth ending )
#rules
# =>    explicit: must return the number and the ending(st,nd, rd, or th)
# =>              century goes from 01 to 00 so 1901-2000 is 20th century
# =>    implicit: can go up to any year, not only years that have happened

#data strucutre
#maybe use a string and an array to break up the integer,
#bring it back to a string at the end

#algorithm
#SET century = take year, divide by 100
#separate year digits, check last one (you may have to turn into a string/integer)
# =>      if its > '1', + 1 to the year , else nothing
#check century number with an if statement
# =>        if 4-20, then concat 'th' 
#then case statement 0, 1, 2, 3 separately
#check if num of digit is higher than 
#return number + ending


# def get_cardinal_ending(num)
#   case num 
#   when 0
#     'th'
#   when 1
#     'st'
#   when 2
#     'nd'
#   when 3
#     'rd'
#   when 4..20
#     'th'
#   end
# end

# def century(year)
#   century = year / 100
#   century += 1 if year % 100 > 0
#   if century <= 20
#     ending = get_cardinal_ending(century)
#   elsif century <= 100
#     ending = get_cardinal_ending(century.to_s[-1].to_i)
#   else
#     ending = get_cardinal_ending(century.to_s[-2..-1].to_i)
#   end
#   century.to_s + ending
# end

# p century(2000)   == '20th'
# p century(2001)   == '21st'
# p century(1965)   == '20th'
# p century(256)    == '3rd'
# p century(5)      == '1st'
# p century(10103)  == '102nd'
# p century(1052)   == '11th'
# p century(1127)   == '12th'
# p century(11201)  == '113th'



#Leap Years (Part 1)

#problem
#take a year and return true or false as to whether it is a leap year
#input: year greater than 0
#output: boolean 
#rules: 
# =>    explicit: leap year is every year that is divisible by 4
# =>              if the year is also divisible by 100, it is only a leap year if it is also 
# =>                    divisible by 400

#data structure
# =>conditionals with intgers, make sure return value is boolean

#algorithm
# => if divisble by 100, 
# =>  check if divisble by 400
# =>    if true, return true, otherwise false 
# => if divisible by 4, return true, otherwise false


# def leap_year?(year) 
  
#   if year % 100 == 0
#     if year % 400 == 0
#       return true
#     else
#       return false
#     end
#   end
  
#   if year % 4 == 0
#     return true 
#   else 
#     return false
#   end
# end  
  
  
# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true


#another way

# def leap_year?(year) 
#   return true if year % 400 == 0
#   return true if year % 4 == 0 && year % 100 != 0
#   false
  
# end  
  
  
# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true



#Leap Years (Part 2)

# def leap_year?(year) 
#   if year < 1752
#     year % 4 == 0
#   else
#     return true if year % 400 == 0
#     return true if year % 4 == 0 && year % 100 != 0
#     false
#   end
# end 

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true



#Multiples of 3 and 5

#problem
#given an integer, compute the sum of all teh multples of 3 and 5 taht lie between 1 and the int
#input- integer
#output- integer- sum of multiples
# rules
# =>  explicit- calculate the sum of 3 multiples bewteen 1 and int
# =>            calculate the sum of 5 multiples between 1 and int
# =>            sum both together
# =>  implicit - inclusive of the integer, if it is a multiple of 5 or 3, include it
# =>              if a number is both a mutplie  of 3 and 5, include it only once in the sum

#data structure
# =>  range for all nums between 1 and int given
# =>  array to collect multiples

#algorithm
# =>  initialize multiple array
# =>  get a range of nums from 1 to int 
# =>  check each num to see if it is a multiple of 3, 
# =>    if true, add to mulitple array
# =>  check each num to see if it is a multiple of 5, 
# =>    if true, add to mulitple array
# =>  rid multiple array of duplicate values
# =>  sum multiple array and return it or make sure it is the last line executed

#code


# def multisum(int)
#   multiple = []
  
#   (1..int).each do |num|
#     if num % 3 == 0
#       multiple << num
#     elsif num % 5 == 0
#       multiple << num
#     end
#   end
#   multiple.sum
# end




# #test cases

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168



#another way

# def multisum(int)
#   (1..int).to_a.select {|num| num % 3 == 0 || num % 5 == 0}.inject(:+)
# end



# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168




#Running Totals
#problem
#given an array of numbers, return an array with the running total from original array
#input: array
#output: array with running totals replacing each index after the first
#rules
# =>  explicit- same number of elements as the 
# =>            each index represents running total (from index 0 to that index) 
# =>  implicit- if empty array or array of size 1, return empty array
#data structure
# =>  arrays all around
#algorithm
# =>  initialize total arr, put first element in total array
# =>  iterate through original array
# =>      get sum for index 0 to current index
# =>      push sum to total array
# =>  return total array

#code

#   def running_total(arr)
#     total = []
    
#     arr.each_with_index do |_, idx|
#       total << arr[0..idx].sum
#     end
    
#     total
#   end




# p running_total([2, 5, 13])           == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20])  == [14, 25, 32, 47, 67]
# p running_total([3])                  == [3]
# p running_total([])                   == []

#another

#   def running_total(arr)
#     arr.map.with_index{|num, idx| arr[0..idx].sum}
#   end




# p running_total([2, 5, 13])           == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20])  == [14, 25, 32, 47, 67]
# p running_total([3])                  == [3]
# p running_total([])                   == []


#Convert a String to a Number!

#problem
#convert a string of numbers to an integer
#input: string of numbers
#output: integer
#rules: 
# =>  explicit--  no using to_i or Integer()
# =>              don't worry about leading + or - signs
# =>              all characters will be numeric
# =>              calculate the result by analyzing the numbers in the string
#data structure
# =>  getting string, 
# =>  using array
# =>  returning integer
#algorithm
# =>  split the string so each digit is by itselfs
# =>  now you have an array of single numbers presenting as strings
# =>  make helper method with case statement 0 - 9 converting strings to int
# =>  iterate through array of strings, calling helper method on each
# =>  join array without any spaces and return it or make sure it is the last line executed

# def convert_string_to_int(str)
#   case str
#   when '0' 
#     0
#   when '1' 
#     1
#   when '2'
#     2
#   when '3'
#     3
#   when '4'
#     4
#   when '5'
#     5
#   when '6'
#     6
#   when '7'
#     7
#   when '8'
#     8
#   when '9'
#     9
#   end
# end

# def string_to_integer(str)
#   str.chars.map{|str| convert_string_to_int(str)}.inject{|a,i| a*10 + i}
# end




#test cases
# p string_to_integer('4321') == 4321
# p string_to_integer('570')  == 570

#https://medium.com/@terrancekoar/inject-method-explained-ed531eff9af8
#didn't know why inject could work like that, still havent looked at the answer
# i think it get it, it takes the sum * 10 then plus the next numer so 4 * 10 + 3 = 43
#43 * 10 + 2, 432 * 10 + 1


#Convert a String to a Signed Number!

# def convert_string_to_int(str)
#   case str
#   when '0' 
#     0
#   when '1' 
#     1
#   when '2'
#     2
#   when '3'
#     3
#   when '4'
#     4
#   when '5'
#     5
#   when '6'
#     6
#   when '7'
#     7
#   when '8'
#     8
#   when '9'
#     9
#   end
# end

# def string_to_integer(str)
#   str.chars.map{|str| convert_string_to_int(str)}.inject{|a,i| a*10 + i}
# end

# def string_to_signed_integer(str)
#   num_split = str.split("")
  
#   if num_split[0] == '+' || num_split[0] == '-' 
#     sign = num_split.shift
#   end
  
#   final_num = string_to_integer(num_split.join)
  
#   if sign == '-'
#     final_num *= -1
#   end 
  
#   final_num
  
# end



#test cases
# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100



#Convert a Number to a String!

#problem
# =>  take a number/integer and convert it to a string
# =>  input - positive integer
# =>  output - string of integer
#rules
# =>  implicit -  can't use to_s or anuything built in
# =>              only receive positive numbers 
#data structure
# =>  will need array
#algorithm
# =>  accept integer, save to local variable (this will be mutated)
# =>  create a counter variable at 10 and start a loop,
# =>    while int / 10 > 0, increase the counter by * 10
# =>    get the counter variable, divide it by 10, now we know how many digits and 
# =>    where to start the dividing
# =>  initialize empty array (this is where we push remainders)
# =>  another loop, while int / counter > 0
# =>    divide int / counter, push answer to array 
# =>    subtract counter * answer from int
# =>    divide counter by 10
# =>    loop again (this may not get the last digit but lets check that, makybe use an if statement)
# =>  now we have an array of digits, 
# =>  join the array


# def integer_to_string(int)
#   local_int = int 
#   counter = 10
#   until local_int / counter == 0
#     counter *= 10
#   end
#   counter /= 10
  
#   arr_of_digits = []
  
#   loop do #local_int / counter == 0
#     digit = local_int / counter
#     arr_of_digits.push(digit)
#     local_int = local_int - (digit * counter)
#     counter /= 10
#     break if counter == 0
#   end
  
#   arr_of_digits.join
  
# end

# #test cases
# p integer_to_string(4321) == '4321'
# p integer_to_string(0)    == '0'
# p integer_to_string(5000) == '5000'



#Convert a Signed Number to a String!

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  case number
  when (...0)
    number *= -1
    "-" + integer_to_string(number)
  when (1..) 
    "+" + integer_to_string(number)
  when 0
     "0"
  end
end


#test cases

p signed_integer_to_string(4321)  == '+4321'
p signed_integer_to_string(-123)  == '-123'
p signed_integer_to_string(0)     == '0'