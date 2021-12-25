#WELCOME stranger
#problem
# =>  given two args, an array (of a name) and a hash (with key value pairs giving information
# =>    about the person's title and occupation, return a greeting that metnions all info from the
# =>    array and hash 
#input: an array (of three elements) and a hash (with 2 key value pairs)
#output: A string greeting that access and combines all the info in the array and hash 
#rules
# =>  explicit  - needs to return a string, not necessarily print it 
#data strucutre
# =>  index retrieval from arrays and hashs, arrays to combine the elements
#algorithm
# =>  combine name array with spaces and assign the variable name to it
# =>  combine string (using string interpolation) by accessing the necessary information from
# =>    the array and hash 

# def greetings(name_arr, job_hsh)
#   name = name_arr.join(" ")
#   "Hello, #{name}! Nice to have a #{job_hsh[:title]} #{job_hsh[:occupation]} around."
# end



# #test cases
# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == 'Hello, John Q Doe! Nice to have a Master Plumber around.'





#Double Doubles
#problem
# =>  given an integer, write a method that returns 2* the number provided unless the arg is
# =>    a double number, return double nums
#input: integer
#output: integer, same as given or double depending on whether it is a double num or not
#rules
# =>  explicit  - a double number has an even number of digits
# =>              a double number left side is exactly the same as right side
#data structure
# =>  array for comparing right and left side of number
#algorithm
# =>  subproblem (possible helper method)
# =>    determine whether number is double num or not
# =>    turn int to string, get length, right side, left side
# =>    test that length is even AND the left side is equal to the right side

# def double?(int)
#   int_as_str = int.to_s
#   length = int_as_str.length
#   left_side = int_as_str[ 0 .. ( (length/2) - 1) ]
#   right_side = int_as_str[ (length/2) .. -1]
  
#   length.even? && left_side == right_side
# end


# def twice(int)
#   if double?(int)
#     int
#   else
#     int * 2
#   end
# end



# # #test cases
# p twice(37)     == 74
# p twice(44)     == 44
# p twice(334433) == 668866
# p twice(444)    == 888
# p twice(107)    == 214
# p twice(103103) == 103103
# p twice(3333)   == 3333
# p twice(7676)   == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5)      == 10


















#Always Return Negative
#problem
# =>  given an integer, return the negative of that number if the number is positive
# =>                    return the original number if the number is 0 or negative
#input: integer
#output: integer, positive or negative depending on the input
#rules
# =>  explicit  - if the argument is positive, return the negative of that number
# =>              if the argument is 0 or negative, return the original number
#data strucutre
# =>  control flow
#algorithm
# =>  test if the argument is greater than 0
# =>    if its true, multiply the number by -1
# =>    otherwise, keep the number as is

# def negative(int)
#   return int * -1 if int > 0
#   int
# end





# #test cases
# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby















#counting up
#problem
# =>  given an integer argument, return an array of all integers in a row between 1 - arg
#input: integer
#output: array of integers from 1 to the given integer (in sequence)
#rules
# =>  explicit  - argument will always be a valid integer greater than 0
#data structure
# =>  range, array
#algorithm
# =>  create a range from 1 to the given integer
# =>  turn the range into an array and return it

# def sequence(int)
#   (1..int).to_a
  
# end



# #test cases
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]



#further exploration -- what to return if int is -1


# def sequence(int)
#   return (1..int).to_a if int > 0
#   (int .. 0).to_a
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
# p sequence(-1) == [-1, 0]












































#Uppercase Check
#problem
# =>  given a string argument, return a boolean true if ALL of alphabetic char are uppercase
# =>    return false if otherwise
# =>  input: string, can be empty
# =>  output: boolean true or false
# =>  rules: 
# =>        explicit  - only return true if ALL of the alphabetic characters in the string are
# =>                      uppercase, 
# =>                    ignore the numbers and the symbols
# =>        implicit  - return true if the argument is an empty string
# =>  questions: 
# =>              what about a string with only punctuation?
# =>              Or only nums?
# =>              can I get something other than a string? 
#data structure
# =>  array, 
#algorithm
# =>  test if string is empty, 
# =>    if is is, return true
# =>    otherwise, continue with the rest of the lines in the method
# =>  initialize a new array and assign to it all of the characters in the string, separated
# =>  iterate over each element (character) in the array,
# =>    for each iteration, test to see if the character is upppercase
# =>    if all of the characters are uppercase, return true
# =>    if even one of the characters is lowercase, return false

# def uppercase?(str)
#   return true if str.empty?
#   str.chars.all?{ |char| char == char.upcase}
# end





# #test cases

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true











































#How long are you?
#problem
# =>  given a string argument, return an array of words from the string with a space 
# =>    and word length appended
# =>  input: string
# =>  output: array of strings
# =>  rules: 
# =>          explicit  - the returned array must be an array of strings
# =>                      each element of the array must start with a different word from 
# =>                        the string argument with a space and the length of the word
# =>                        appended
# =>                      assume that words in the string are separated by one space
# =>                      any substring of non-spaces is a character
# =>          implicit  - for an empty string, return an empty array
# =>  questions: can I recieve any other type of argument than a string?
# =>            is punctuation part of the word length?
# =>            does the order of the array matter?
#data structure
# =>  array
#algorithm
# =>  return an empty array if the string is empty
# =>  split the string into an array of words
# =>  iterate over the array and return the word with its length in a string together

# def word_lengths(str)
#   return [] if str.empty?
#   str.split.map { |word| "#{word} #{word.length}" }
# end





# #test cases
# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []










































#Name Swapping
#problem
# =>  given a string made up of first name, space and last name, return a str that reads
# =>    last name, comma space, first name
# =>  input: string
# =>  output: string
# =>  rules :
# =>        explicit  - return a string
# =>  questions: return a new string or should I mutate the string passed in to the method?
#data structure
# =>  string, array
#algorithm
# =>  split the string into two words which are elements of an array
# =>  return a string in the proper order using string interpolation

# def swap_name(str)
#   arr_of_names = str.split
#   "#{arr_of_names[1]}, #{arr_of_names[0]}"
# end


# #test cases
# p swap_name('Joe Roberts') == 'Roberts, Joe'

#The swap_name method is define between lines 413 - 416, it accepts one argument. 
#on line 420, we are calling the swap_name method and passing in the string 'Joe Roberts'
#the argument binds to the local variable str. On line 414, we are initializing the variable
#arr_of_names and assigning to it the return value of calling the split method on the 
#variable str. Arr_of_names is only accessible inside the scope of this method because it
#was initialized in this scope. On line 415, we are defining a string object by using string
#interpolation. We pass in the object at the second index of the arr_of_names array. then we 
#add a comma, a space and another string interpolation by passing in the object at the 
#first index of arr__of_names


















































































#Sequence Count
#problem
# =>  given two integers as arguments, return an array that contains the same number of elements
# =>    as the count argument (first argument) while value will be multiples of the first number
# =>    argument (second argument)
# =>  input: two integers
# =>  output: array of (first argument) elements, starting with (second argument) and incrementing
# =>            by (second argument)
# =>  rules: 
# =>          explicit  - count argument will always have a value of 0 or greater
# =>                      starting number is any integer value
# =>                      if the count is 0, return an empty array
# =>          implicit  -  if the first num is 0, return an array of zeroes
# =>  Questions: Will I always get integers?
#Data Structure
# =>  array, range 
#Algorithm
# =>  return an empty array if the first argument is 0
# =>  create a new array with the specified number of elements
# =>  iterate over array with indexes
# =>    return the second argument multiplied by the index

# def sequence(count, first_num)
#   return [] if count == 0
#   arr = Array.new(count)
#   arr.map.with_index { |_, idx| (idx + 1) * first_num }
# end
# The sequence method is defined on lines 535 - 539, it accepts two parameters. 
# if the value bound to 'count' is equal to zero, the method will return an empty array
# the local variable arr is initialzied and we assign to it the return value from creating a
# new array by calling the new method of the Array class and passing in the count variable
# as an argument. We then call the map method on arr, and call the with_index method, this 
# will iterate over the elements of the array, returning a new array that consists of return
# values from running the block. In the block, we take the index plus one and mulitply it by the 
# first_num variable that was passed into the method. 



# #test case

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

# try to do this with a range and the step functionx
#cant work w negative steps or 0, it would take too much converting

# def sequence(count, first_num)
#   return [] if count == 0
#   arr = []
#   (first_num .. (first_num * count)).step(first_num.abs) { |x|  arr << x}
#   arr
# end







# p sequence(5, 1)        == [1, 2, 3, 4, 5]
# p sequence(4, -7)       == [-7, -14, -21, -28]
# p sequence(3, 0)        == [0, 0, 0]
# p sequence(0, 1000000)  == []










































#Grade book
#problem
# =>  given three integer test scores, return the letter value associated with the average
# =>  input: three integers
# =>  output: one string consisting of a captial letter
# =>  rules :
# =>      explicit  - return the letter associated with the average
# =>                - no need to check for negative values or values > 100
# =>      implicit  - Each letter goes from lower tens to upper 9s, so B is 80 - 89
# =>  questions:  Anything other than the letters? no A- or A+?
# =>              Two methods? one method?
# =>              Are global variables allowed? 
#Data Structure
# =>  array to hold the scores? case statement to hold the grades
#Algorithm
# =>  Main method
# =>    accept scores into array 
# =>    get average of array
# =>    analyze average 
# =>    pass average to helper function 
# =>    return the return value from the helper function
# =>  Helper function
# =>    a series of conditional statements that test whether the average is between two limits
# =>    return letter when its true

# def get_letter(avg)
#   case avg
#   when (0   ... 60) then "F"
#   when (60  ... 70) then "D"
#   when (70  ... 80) then "C"
#   when (80  ... 90) then "B"
#   when (90  .. 100) then "A"
#   end
# end


# def get_grade(score1, score2, score3)
#   average = [score1, score2, score3].sum / 3
#   get_letter(average)
# end



#test cases
# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"










































#grocery list
#problem
# =>  given a grocery list in the form of a nested array (with fruits and quantities)
# =>    return an array with the correct number of each fruit as strings
# =>  input: nested array
# =>  output: flattened array with multiples of names of fruit
# =>  rules: 
# =>    explicit  - needs to be strings
# =>              - has to be the correct number of times which corresponds to the input
# =>  questions:  New array or mutate array? gunna do both
#Data structure
# =>  array
#algorithm -- non-mutating
# =>  initialize empty arr
# =>  iterate over the given array destructively
# =>    using the second element from the array
# =>    return a string of the first element and push to empty arr ^^ that many times


# def buy_fruit(list)
#   arr = []
#   list.map do |item|
#     item[1].times{ |x| arr << item[0]}
#   end
#   arr
# end





# #test cases
# grocery_list = [["apples", 3], ["orange", 1], ["bananas", 2]] 
# p buy_fruit(grocery_list) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
# p grocery_list            #== ["apples", "apples", "apples", "orange", "bananas","bananas"]






#mutating
# =>  iterate over array destructively 
# =>  return array of fruit
# =>  destructively flatten the array




# def buy_fruit(list)
#   list.map! do |item|
#     [item[0]] * item[1]
#   end.flatten!
# end





# #test cases
# grocery_list = [["apples", 3], ["orange", 1], ["bananas", 2]] 
# p buy_fruit(grocery_list) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
# p grocery_list            == ["apples", "apples", "apples", "orange", "bananas","bananas"]










































#Group Anagrams
#problem
# =>  given an array of potential anagrams, write a method that prints arrays of words (strings)
# =>    that are anagrams.
# =>  input: an array of strings 
# =>  output: printing arrays of words
# =>  rules: 
# =>    explicit  - anagrams are words that have the same letters but different order
# =>    implicit  - printing, not returning, will need printing mechanism
# =>  questions:  mutating array? Leave it alone? I will assume leaving it untouched
# =>              Only words from the array , correct? 
#Data Structure
# =>  array, maybe hash?
#Algorithm
# =>  initialize empty result array
# =>  iterate over the array
# =>    for each element, get an array of words in teh list that are anagrams
# =>    helper method for this?
# =>    Sort the list and add the list to the result array

# =>  rid the result array of duplicate arrays

# =>  iterate through result array
# =>    print every element

# => HELPER METHOD- get arr of anagrams
#problem
# =>  given a list and a word, return a sorted and uniq array of words that are anagrams
# =>    to the given word
# =>  iterate over the array
# =>    select the words that are anagrams to the word selected

# def get_arr_of_anagrams(word_needed, word_arr)
#   word_arr.select do |str|
#     word_needed.chars.sort == str.chars.sort
#   end.sort
# end


# def anagrams(word_arr)
#   result = []
#   word_arr.each do |word|
#     result << get_arr_of_anagrams(word, word_arr)
#   end
#   result.uniq.each { |arr| p arr }
# end





# #test case
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# anagrams(words)

#this worked but lets clean it



# def anagrams(word_arr)
#   uniq_words = word_arr.map { |word| word.chars.sort.join }.uniq
#   uniq_words.each_with_object([]) do |word, result|
#     result << word_arr.select { |anag| word.chars.sort == anag.chars.sort }
#   end.each { |arr| p arr }
# end





# #test case
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# anagrams(words)









#Reverse or rotate?
# The input is a string str of digits. Cut the string into chunks 
# (a chunk here is a substring of the initial string) of size sz (ignore the last chunk 
# if its size is less than sz).

# If a chunk represents an integer such that the sum of the cubes of its digits is 
# divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. 
# Put together these modified chunks and return the result as a string. 

# **Test Cases**
# p revrot("1234", 0)               == ""
# p revrot("", 0)                   == ""
# p revrot("1234", 5)               == ""
# p revrot("", 8)                   == ""
# p revrot("123456779", 0)          == ""
# p revrot("123456987653", 6)       == "234561356789"
# p revrot("733049910872815764", 5) == "330479108928157"
# p revrot("123456987654", 6)       == "234561876549"
# p revrot("66443875", 4)           == "44668753"
# p revrot("66443875", 8)           == "64438756"
# p revrot("664438769", 8)          == "67834466"
# p revrot("123456779", 8)          == "23456771"
# p revrot("563000655734469485", 4) == "0365065073456944"

#my solution

# **Problem**
# =>	objective: given a string of digits and a chunk size, split the string into the specified size, removing any leftover nums that dont make a full chunk. 
# =>              analyze each chunk. reversing the chunks if the sum of the digits's cubes is divisible by 2 (aka even)
# =>              or rotating the chunk if ^^ is not true
# =>              join the modified chunks and return the result as a string

# =>	input: string of integers, and a chunk size

# =>  	output: string of integers modified

# =>	rules:

# =>		explicit	-	remove any not full chunks
# =>              - any chunk whose sum of its digits' cubes (each digit cubed, then add all those nums) is even, reverse it
# =>              - otherwise rotate the digits int the chunk to the left (first digit becomes last digit)

# =>		implicit	- if sz is 0, return empty string
# =>              - if str input is empty string, return empty string
# =>              - if you can't make even one full chunk, return empty string

# =>	questions: ignore a chunk that is not the full specified sz? Like don't even return it? or don't modify it. GET RID OF IT
# =>              can i ever get a non-string input?
# =>              can i modify the str? do I return the same string or new string? No modifying string, must return new str

# **Data Structure**
# =>  input and output are strings of integers
# =>  array of chunks

# **Edge Cases**
# =>  - if sz is 0, return empty string
# =>  - if str input is empty string, return empty string
# =>  - if you can't make even one full chunk, return empty string


# **Implementation Notes**
# =>  reduce
# =>  array of chunks?
# =>  transform ^^ with conditional statemnet

# **Algorithm**
# =>  test for edge cases and return empty string if its true
# =>  split str into specified chunks, add to array `arr_of_chunks`
# =>  transform `arr_of_chunks`
# =>    on each iteration, test whether the sum of the digit's cubes is even 
# =>          split string, convert each to integer, cube it, add to sum
# =>    if true, return reversed string 
# =>    if false, send chunk (in str type) to rotate helper method which will return the chunk rotated
# =>  array of rotated or reversed chunks, join it into one string and return it

# **Sub-Problems**
# =>  valid helper method that tests for edge cases
# =>  sum_of_cubes_even?
# =>  split string, convert each to integer, cube it, add to sum, test if the sum is even
# =>  rotate helper method
# =>    remove first character, append to end of string, return changed string

# **Code**

# def valid?(str, sz)
#   case 
#   when str.empty?
#     false
#   when sz == 0
#     false
#   when str.size < sz
#     false
#   else
#     true
#   end
# end

# def sum_of_cubes_even?(chunk)
#   chunk.split("").map!{|num| num.to_i}.reduce(0) {|sum, num| sum + num**3 }.even?
# end

# def rotate(chunk)
#   chunk[1..-1] + chunk[0]
# end

# def revrot(str, sz)
#   return "" unless valid?(str, sz)
#   arr_of_chunks = []
#   current_chunk = ""
#   counter = 0
  
#   loop do 
#     current_chunk << str[counter]
#     if current_chunk.size == sz
#       arr_of_chunks << current_chunk
#       current_chunk = ''
#     end
#     counter += 1
#     break if counter == str.size
#   end
  
#   chunks_modified = arr_of_chunks.map do |chunk|
#     if sum_of_cubes_even?(chunk)
#       chunk.reverse
#     else
#       rotate(chunk)
#     end
#   end
  
#   chunks_modified.join
# end

# **Test Cases**
# p revrot("1234", 0)               == ""
# p revrot("", 0)                   == ""
# p revrot("1234", 5)               == ""
# p revrot("", 8)                   == ""
# p revrot("123456779", 0)          == ""
# p revrot("123456987653", 6)       == "234561356789"
# p revrot("733049910872815764", 5) == "330479108928157"
# p revrot("123456987654", 6)       == "234561876549"
# p revrot("66443875", 4)           == "44668753"
# p revrot("66443875", 8)           == "64438756"
# p revrot("664438769", 8)          == "67834466"
# p revrot("123456779", 8)          == "23456771"
# p revrot("563000655734469485", 4) == "0365065073456944"












# 29. Split Strings
# (https://www.codewars.com/kata/515de9ae9dcfc28eb6000001)
# 6 kyu
# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
# =end

# p solution('abc') == ['ab', 'c_']
# p solution('abcdef') == ['ab', 'cd', 'ef']
# p solution("abcdef") == ["ab", "cd", "ef"]
# p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
# p solution("") == []





# 63. Find The Parity Outlier
# (https://www.codewars.com/kata/5526fc09a1bbd946250002dc)
# 6 kyu
# You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even 
# integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)
# =end


# **Problem**
# =>	objective: return the outlier, if most are even, return the odd integer, if most are odd, return the even integer

# =>	input: an array of integers, at least 3 long

# =>  	output: an integer, the integer that is not like the others

# =>	rules:

# =>		explicit	-	return the actual integer, not the index of the outlying integer
# =>                input will have at least 3 elements
# =>                input will be an array 

# =>		implicit	- can have negative numbers

# =>	questions: can i mutate the array? 
# =>              will I ever get anything other than integers in the array?
# =>              will there ever be no outliers? or more than 1 outlier?

# **Data Structure**
# =>  array

# **Edge Cases**

# **Implementation Notes**
# =>  select method to return odd or even integer

# **Algorithm**
# =>  if array has more than one even integer
# =>    look for and return the odd integer
# =>  otherwise 
# =>    look for and return the even integer


# **Sub-Problems**

# **Code**

# def find_outlier(arr)
#   if arr.count { |int| int.even? } > 1
#     outlier = arr.select{ |int| int.odd? }[0]
#   else
#     outlier = arr.select{ |int| int.even? }[0]
#   end
  
#   outlier
# end


# # **Test Cases**

# p find_outlier([0, 1, 2])                       == 1
# p find_outlier([1, 2, 3])                       == 2
# p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
# p find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160



#integer reduction
# https://www.codewars.com/kata/59fd6d2332b8b9955200005f/ruby

# In this Kata, you will be given two integers n and k and your task is to remove k-digits from n and return the lowest number possible, without changing the order of the digits in n. 
#Return the result as a string.
# Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 and return the lowest possible number. 
#The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.
# Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', because we have removed 8 and 9.

# **Problem**
# =>	objective: given two intgers, n and k, remove k digits from n and return the lowest number possible, you cannot change the order of the digits 

# =>	input: two integers

# =>  	output: one integer, the lowest number possible from removing k nums from the n input

# =>	rules:

# =>		explicit	-	order must remain the same, must remove k digits 

# =>		implicit	- 

# =>	questions: 0 digits? two possibilities? 

# **Data Structure**
# =>  array to remove numebrs

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
# =>  initialize local var
# =>  separate digits, iterate over digits, transforming each return value to be the number without the digit being iterated over
# =>  assign to results array
# =>  convert strings to integers, find the min, find which num is missing 
# =>  do until you have removed the specified nums



# **Sub-Problems**

# **Code**
def solve(int, digits)
  int_as_str = int.to_s
  results = int_as_str.chars.map do |num|
    int_as_str.delete(num)
  end
  results.min_by { |int| int.to_i}
end


# **Test Cases**

p solve(123056,1)   #== '12056'
# p solve(123056,2)   == '1056'
# p solve(123056,3)   == '056'
# p solve(123056,4)   == '05'
# p solve(1284569,1)  == '124569'
# p solve(1284569,2)  == '12456'
# p solve(1284569,3)  == '1245'
# p solve(1284569,4)  == '124'