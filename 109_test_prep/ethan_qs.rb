#Triangle Sides, Medium 2
#https://launchschool.com/exercises/7fe5eaf8
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater 
# than the length of the longest side, and all sides must have lengths greater than 0:
# if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether 
# the triangle is equilateral, isosceles, scalene, or invalid.


#examples
# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid





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
















#my solution
#prob
# =>  given 3 arguments representing three sides of a triangle, return a symbol specifying invalid or the type of triangle
#input: 3 integers
#output: symbol
#rules
# =>  explicit  - equilateral all sides are equal
# =>              isos two sides are equal
# =>              scalene, no sides are equal
# =>              invalid if two shortest sum is not greater than longest
# =>              invalid if any side is 0
#data structure
# =>  control flow
# =>  array with all sides
# =>  array with two smallest sides
#algorithm
# =>  initialize array with all sides
# =>  initialize array with smallest two sides
# =>  initialize variable that references longest side
# =>  initialize case statement without an argument
# =>    when one side is zero OR two smallest are not larger than largest
# =>      return teh symbol invalid
# =>    when all sides are equal -- return symbol equil
# =>    when no sides are equal -- return symbol scalene
# =>    default value -- isos

# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3].sort
#   case 
#   when sides.any?{ |s| s == 0 }, sides[0..1].sum <= sides[2]
#     :invalid
#   when sides.all?{ |s| s == sides[0]}
#     :equilateral
#   when sides.uniq == sides
#     :scalene
#   else
#     :isosceles
#   end
  
# end

# p triangle(3, 3, 3)   == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5)   == :scalene
# p triangle(0, 3, 3)   == :invalid
# p triangle(3, 1, 1)   == :invalid







#https://www.codewars.com/kata/57eb8fcdf670e99d9b000272/train/ruby


# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.


# describe "Basic Tests" do
#   it "should pass basic tests" do
#     Test.assert_equals(high('man i need a taxi up to ubud'), 'taxi')
#     Test.assert_equals(high('what time are we climbing up the volcano'), 'volcano')
#     Test.assert_equals(high('take me to semynak'), 'semynak')
#     Test.assert_equals(high('aa b'), 'aa')
#     Test.assert_equals(high('b aa'), 'b')
#     Test.assert_equals(high('bb d'), 'bb')
#     Test.assert_equals(high('d bb'), 'd') 
#     Test.assert_equals(high('aaa b'), 'aaa')
#   end
# end








# You task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
# Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
# If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

# Examples


# p sortme("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
# p sortme("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
# p sortme("") ==  ""





#my solution


# **Problem**
# =>	objective: sort a string made up of words (but possible empty string given) where one character in each word (separated by spaces) 
# =>    is a number 

# =>	input: a string of words separated by a space

# =>  	output: a string of words sorted (in ascending order starting with 1) based on the number inside of each word 

# =>	rules:

# =>		explicit	-	numbers start from 1 - 9 , so only 1 digit
# =>                empty string returns empty string

# =>		implicit	-

# =>	questions:  are all words separated by 1 space?
# =>              

# **Data Structure**
# =>  array

# **Algorithm**
# =>  separate words into an array of strings
# =>  sort array by number inside of word
# =>  join array with a space between all words and return it

# **Sub-Problems**
# =>  extract number from a string 
# =>    iterate over characters in teh string
# =>    if the character is a number, return it 

# **Edge Cases**

# **Implementation Notes**
# =>  sort by, helper method

# def extract_number(string)
#   chars = string.chars
#   chars.select { |char| char.to_i != 0 }
# end

# def sortme(str)
#   arr_of_words = str.split
#   arr_of_words.sort_by do |word|
#     extract_number(word)
#   end.join(" ")
# end

# # **Test Cases**

# p sortme("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
# p sortme("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
# p sortme("") ==  ""





#https://www.codewars.com/kata/578aa45ee9fd15ff4600090d/train/ruby

# You will be given an array of numbers. 
# You have to sort the odd numbers in ascending order while 
# leaving the even numbers at their original positions.


# **Problem**
# =>	objective: sort an array, leaving the even numbers in their original positions (or indexes)
# =>                sorting the odd numbers into ascending order around the indexes with even integers

# =>	input: array

# =>  output: sorted array, with even numbers still in teh same index positions, but odd numbers sorted 

# =>	rules:

# =>		explicit	-	the even numbers need to stay in the same position
# =>              - the odd numbers need to be sorted in ascending order then placed back into the 
# =>                  array filling the gaps between the even numbers 

# =>		implicit	- array is the same size at the end

# =>	questions: new array or mutate array? new array
# =>              empty array?
# =>              args other than array?

# **Data Structure**
# =>  array

# **Algorithm**
# =>  remove all the odd numbers from the given array
# =>  store them in a new array and replace their old position with nil
# =>  sort the odd numbers
# =>  iterate through original array
# =>    replace the gaps in the given array with the numbers from the array of odd numbers
# =>    if the elemnt is nil, remove first element from sorted odds array, and transform the element
# =>  return the array 

# **Sub-Problems**

# **Edge Cases**
# =>  empty array given or non array

# **Implementation Notes**
# =>  pop from aodd number array to add to new one 

# **Test Cases**

# def sort_array(arr)
  
#   odd_numbers = []
#   arr_wo_odds = arr.map do |num|
#     if num.even?
#       num
#     else
#       odd_numbers << num 
#       nil
#     end
#   end
  
#   odd_numbers.sort!
  
#   arr_wo_odds.map do |num|
#     if num == nil
#       odd_numbers.shift
#     else
#       num
#     end
#   end
  
# end


#another one
# def sort_array(arr)
#   odd_numbers_sorted = arr.select { |num| num.odd? }.sort 
#   result = []
  
#   arr.each do |num|
#     num.even? ? (result << num) : (result << odd_numbers_sorted.shift)
#   end
#   result  
# end



# # Examples
# p sort_array([7, 1])                          ==  [1, 7]
# p sort_array([5, 8, 6, 3, 4])                 ==  [3, 8, 6, 5, 4]
# p sort_array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])  ==  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]







---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------


# equal sides of an array
# https://www.codewars.com/kata/5679aa472b8f57fb8c000047

# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. 
#If there is no index that would make this happen, return -1.
# Let's say you are given the array {1,2,3,4,3,2,1}:
# Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.
# Last one:
# You are given the array {20,10,-80,10,10,15,35}
# At index 0 the left side is {}
# The right side is {10,-80,10,10,15,35}
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.
# Input:
# An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.
# Output:
# The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.
# Note:
# If you are given an array with multiple answers, return the lowest correct index.

# **Problem**
# =>	objective: given an array, find the index where the sum of the elements to the left equal the sum of the elements to the right

# =>	input: array of integers, positive and negative, up to 1000 integers

# =>  	output: lowest index where sum to the left (non inclusive) is equal to the sum of the right  

# =>	rules:

# =>		explicit	-	return lowest index if given multiple answers, 
# =>                at index 0, left side is 0, etc 
# =>                if there is no index , return -1

# =>		implicit	-  

# =>	questions: can teh array be mutated?

# **Data Structure**
# =>  array

# **Edge Cases**
# =>  no index ==> return -1
# =>  multiple indexes ==> return lowest

# **Implementation Notes**
# =>  indexed reference
# =>  each w index method, adding to array

# **Algorithm**
# =>  check 0 index, see if sum of all int (excluding 0 index),  are equal to 0
# =>    if so, return 0
# =>  initialize empty arr
# =>  iterate over all other indexes, check if sum of elements to the left == right
# =>    if it is, append to arr
# =>  if arr is empty, return -1
# =>    else return first element

# **Sub-Problems**
# =>  getting sum of left and right elements

# **Code**
# def find_even_index(arr)
#   results = []
#   arr.each_with_index do |int, idx|
#     results << idx if arr[0...idx].sum == arr[(idx + 1)..-1].sum
#   end
  
#   return -1 if results.empty?
#   results.first
# end


# # **Test Cases**


# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1 
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index(Array(1..100)) == -1
# p find_even_index([0,0,0,0,0]) == 0 
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
# p find_even_index(Array(-100..-1)) == -1 









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




# Combine Two Lists, Easy 7
# https://launchschool.com/exercises/3b64283e
# Write a method that combines two Arrays passed in as arguments, and returns a new Array 
# that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number 
# of elements.

# Example:

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']














#my solution
#problem
# =>  given two arrays, return a new array that combines and alternates the arrays from both
# =>    given arrays
#input: two arrays
#output: one array, new array, 
#rules
# =>  explicit  - return new array
# =>              all elements from both arrays, nothing extra
# =>              elements alternate
# =>  implicit  - start with first element from first array
#data structure
# =>  arrays
#algorithm
# =>  initialize new empty array
# =>  iterate through the first array, with each element's index
# =>    push the element to the empty array, and push the element in the same index from 
# =>    the second array argument to the empty array
# =>  return the new_arr

# def interleave(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |el, idx|
#     new_arr << el
#     new_arr << arr2[idx]
#   end
#   new_arr
# end




#another solution
# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end



# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
















#Uppercase check
#Write a method that takes a string argument, and returns true if all of the alphabetic 
#characters inside the string are uppercase, false otherwise. Characters that are not 
#alphabetic should be ignored.


# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true









#my solution 

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












#Rotation (Part 1)
#Write a method that rotates an array by moving the first element to the end of the array. 
#The original array should not be modified.

#Do not use the method Array#rotate or Array#rotate! for your implementation.



# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true





#my solution
#Rotation (Part 1)
#problem
# =>  given an array, rotate the array, without mutating it, by moving the first element to the
# =>    end of the array
# =>  input: array (that is not to be modified/mutated)
# =>  output: rotated array (that points to a different object that the one passed in)
# =>  rules:
# =>    explicit  - do not modify the array passed in as an argument, return a new array
# =>              - no rotate method
# =>              - first element is last element, and the rest of the elements move up one idx
# =>    implicit  - an array of one element should return an array that looks exactly the same
#data structure
# =>  array
#algorithm
# =>  initialize new empty arr called result
# =>  iterate over each element in the array passed in
# =>    if its the first index, skip it
# =>    all other indexes, push to new arr
# =>  once finished with the iterations, push the first element from the given arr to the
# =>    result array
# =>  return the result array

#this worked
# def rotate_array(arr)
#   result = []
#   arr.each_with_index do |el, idx|
#     result << el unless idx == 0
#   end
#   result << arr[0]
# end




# #test cases
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true










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






# 61. Find the missing letter
# (https://www.codewars.com/kata/5839edaa6754d6fec10000a2)
# 6 kyu
# #Find the missing letter

# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# ['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'

# ["a","b","c","d","f"] -> "e"
# ["O","Q","R","S"] -> "P"
# (Use the English alphabet with 26 letters!)








# 62. Who likes it?
# (https://www.codewars.com/kata/5266876b8f4bf2da9b000362)
# 6 kyu
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:

# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
# =end









# 50. Equal Sides Of An Array
# (https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby)
# Equal sides of an array
# 6 kyu
# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

# For example:

# Let's say you are given the array {1,2,3,4,3,2,1}: Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

# Let's look at another one.
# You are given the array {1,100,50,-51,1,1}: Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

# Last one:
# You are given the array {20,10,-80,10,10,15,35}
# At index 0 the left side is {}
# The right side is {10,-80,10,10,15,35}
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.

# Note: Please remember that in most programming/scripting languages the index of an array starts at 0.

# Input:
# An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.

# Output:
# The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.

# Note:
# If you are given an array with multiple answers, return the lowest correct index.
# =end
# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index(Array(1..100)) == -1
# p find_even_index([0,0,0,0,0]) == 0
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
# p find_even_index(Array(-100..-1)) == -1





#ethan solution for 

# There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

# Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

# In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

# Requirement
# return a string where:

# 1) the first and last characters remain in original place for each word
# 2) characters between the first and last characters must be sorted alphabetically
# 3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

# Assumptions

# 1) words are seperated by single spaces
# 2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
# 3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
# 4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
# 5) ignore capitalisation

# for reference: http://en.wikipedia.org/wiki/Typoglycemia

# def scramble_words(string)
#   string.split.map { |word| transform_word(word) }.join(' ')  
# end

# def transform_word(word)
#   word.length >= 0 && word.length <= 2 ? word : scramble_word(word)
# end

# def scramble_word(word)
#   letters = word.chars.select { |char| char =~ /[a-z]/ }
#   sorted_letters = [letters[0]] + letters[1..-2].sort + [letters[-1]] # Letters sorted
#   insert_punctuation(sorted_letters, word)
# end

# def insert_punctuation(letters, word)
#   word.chars.reduce('') do |string, char|
#     if char =~ /[a-z]/
#       string + letters.shift
#     else
#       string + char
#     end
#   end
# end

# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words('card-carrying') == 'caac-dinrrryg'
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') == '-dbca'
# p scramble_words('dcba.') == 'dbca.'
# p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

