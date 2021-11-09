#Cute angles

#problem
# =>  takes a floating point number , returns string that represents the angle in degrees
# =>    minutes and seconds. 
#rules: 
# =>  explicit  - use a degree symbol to represent degrees, 
# =>              a single quote to rep minutes
# =>              double quotes to rep seconds
# =>              a degree has 60 mins 
# =>              a min has 60 secs
# =>              two digit numbers when formatting the minutes and seconds
# =>  implicit  - 0 should return (0°00'00")
# =>              ex of conversion
# =>              take whole units, those are degress
# =>              take decimal * 60 = the whole num of result = minutes
# =>              take decimal from ^^^ * 60  result = seconds
# =>              put those nums together in the proper format
#data structure
# =>  arrays and strings
#algorithm
# =>  accept float, turn it to a string
# =>  extract numbers before the decimal, store in degrees variable
# =>  extract numbers from after decimal and convert to float, 
# =>    multiply by 60
# =>    convert result to string, extract nums before decimal = minutes
# =>  extract nums from after decimal, turn to float * 60
# =>    extract nums from before decimal = seconds

# DEGREE = "\xC2\xB0"

# # def nums_before_decimal(float)
# #   str = float.to_s
# #   index_of_decimal = str.index(".")
# #   str[0...index_of_decimal].to_f
# # end

# def nums_after_decimal(float)
#   str = float.to_s
#   index_of_decimal = str.index(".")
#   str[index_of_decimal..-1].to_f
# end

# def dms(float)
#   degrees = float.to_i 
#   minutes = ((float - degrees) * 60).to_i
#   seconds = (nums_after_decimal((float - degrees) * 60) * 60).to_i
#   arr = [degrees, minutes, seconds]
#   arr.map! {|num|   format("%02i", num)}
#   "#{arr[0]}#{DEGREE}#{arr[1]}'#{arr[2]}\""
# end


# #test cases

# p dms(30)           
# p %(30°00'00")
# p dms(76.73)        
# p %(76°43'48")
# p dms(254.6)        
# p %(254°36'00")
# p dms(93.034773)    
# p %(93°02'05")
# p dms(0)            
# p %(0°00'00")
# p dms(360) 
# p %(360°00'00") 





#Delete vowels

#problem
# =>  takes array of strings, returns array with vowels removed
#input: array of strings
#output: array of strings with vowels removed
#rules
# =>  explicit  - remove all voewls from strings
# =>  implicit  - can receieve array with multiple elements, remove vowels from each element 
# =>                and return them without vowels
# =>              must remove all uppercase and lowercase vowels
#data structure
# =>  arrays of strings, return the same
#algorithm
# =>  receive array
# =>  iterate over elements in array
# =>    for each one, remove vowels upper and lowercase
# =>  return array

# def remove_vowels(arr)
#   arr.map{|word| word.gsub(/[AEIOUaeiou]/, "")}
# end


# #test cases
# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white))   == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ))              == ['BC', '', 'XYZ']


#solved it, trying another way

# def remove_vowels(arr)
#   arr.map{|word| word.delete('AEIOUaeiou')}
# end



# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white))   #== %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ))              #== ['BC', '', 'XYZ']

#also worked lets try it with voewls in a constant

# VOWELS = "AEIOUaeiou"

# def remove_vowels(arr)
#   arr.map{|word| word.delete(VOWELS)}
# end



# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white))   == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ))              == ['BC', '', 'XYZ']




#Fibonacci Number Location By Length

#problem
# =>  accept a number of digits, return the index of the first fibonacci number iwth thtat 
# =>    many digits
#input: integer rep number of digits
#output: intgeer representing index of fibonacci number matching the given num of digits
#rules: 
# =>  explicit  - return index of FIRST fib num that has those digits
# =>              first fibonacci num has index 1 (so if you use array, index + 1)
# =>              argument will always be greater than or equal to 2
# =>  implicit    
#data structure
# =>  array, in order
#algorithm
# =>  initialize array with 1 and 1 in first and second index
# =>  make a loop
# =>    add the last and second to last numbers in the array, get the result
# =>    add the result to the array
# =>    test if the result has the same number of digits as the specified input
# =>        this may have to be turned into a string then length used on it
# =>      if true, return array size + 1
# =>      else, loop again


# def find_fibonacci_index_by_length(digits)
#   fib = [1, 1]
  
#   loop do
#     result = fib[-1] + fib[-2]
#     fib << result
#     break if result.to_s.length == digits 
#   end
#   fib.size
# end






# #test cases

# p find_fibonacci_index_by_length(2)     == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3)     == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10)    == 45
# p find_fibonacci_index_by_length(100)   == 476
# p find_fibonacci_index_by_length(1000)  == 4782
# p find_fibonacci_index_by_length(10000) == 47847




#Reversed Arrays (Part 1)

#problem
# =>  take an array as arg, reverse its contents in place
#input: an array 
#output: the array reversed
#rules:
# =>  explicit  - no array#reverse
# =>              reverse the elements in the array, do not reverse the elements themselves
#                 reverse elements in place, id should match before and after 
# =>  implicit  - empty array returns empty array
# =>              array with one items returns same array
#data structure
# =>  array with same ID
#algorithm
# =>  accept array
# =>  loop through elements backwards, push onto array
# =>  delete first half of the indices

# def reverse!(arr)
#   return arr if arr.empty? || arr.size == 1
#   counter = arr.size - 1
#   loop do
#     arr << arr[counter]
#     counter -= 1
#     break if counter < 0
#   end
#   arr.slice!(0, (arr.size / 2))
#   arr
# end


# #test cases

# p list            = [1,2,3,4]
# p result          = reverse!(list)
# p result          == [4, 3, 2, 1] # true
# p list            == [4, 3, 2, 1] # true
# p list.object_id  == result.object_id # true

# p list            = %w(a b e d c)
# p reverse!(list)  == ["c", "d", "e", "b", "a"] # true
# p list            == ["c", "d", "e", "b", "a"] # true

# p list            = ['abc']
# p reverse!(list)  == ["abc"] # true
# p list            == ["abc"] # true

# p list            = []
# p reverse!(list)  == [] # true
# p list            == [] # true



#Reversed Arrays (Part 2)

#Do not modify the original list.

# def reverse(arr)
#   new_arr = []
#   counter = arr.size - 1
#   loop do
#     new_arr << arr[counter]
#     counter -= 1
#     break if counter < 0
#   end
  
#   new_arr
# end


# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true



#Combining Arrays

#problem
# =>  given two arrays, combine them without any duplicates
#input: two arrays of integers
#output: one array of integers
#rules:
# =>  explicit  - no duplication of values in the returned array
# =>              contains all values from both arrays
#data structure
# =>  array
#algorithm
# =>  initialize new arr
# =>  iterate through each array and push all elements to the new arr
# =>  remove duplicates from new arr and return
#code

# def merge(arr1, arr2)
#   new_arr = []
#   arr1.each{|num| new_arr << num}
#   arr2.each{|num| new_arr << num}
#   new_arr.uniq
# end





# #test cases
# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]




#another way
# def merge(arr1, arr2)
#   arr1.push(arr2).flatten.uniq
# end


# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#another way

# def merge(arr1, arr2)
#   arr1.concat(arr2)
# end


# p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]

# #another way

# def merge(arr1, arr2)
#   (arr1 + arr2).uniq
# end


# p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]




#Halvsies

#problem
# =>  given array, returns two arrays (as a pair of nested arrays) that contain the first 
# =>    and second half of the original array
#input: array
#output: nested array (2 arrays)
#rules:
# =>  explicit  - if the original array contains an odd # of elements , the middle element
# =>                should be included in the first array
# =>              return a nested array
# =>  implicit  - an empty array should return an array with two empty arrays nested within
#data structure
# =>  arrays, 
#algorithm
# =>  initiate two arrs first and second
# =>  iterate through orig array, 
# =>    if the index is <= orig.size + 1, push first
# =>    else, push to second
# =>  return array of arrays

# def halvsies(arr)
#   first = []
#   second = []
#   arr.each_with_index do |int, idx|
#     first << int if idx <= ((arr.size - 1) / 2)
#     second << int if idx > ((arr.size - 1)/ 2)
#   end
  
#   final_arr = [first, second]
# end


# #test cases

# p halvsies([1, 2, 3, 4])      == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3])   == [[1, 5, 2], [4, 3]]
# p halvsies([5])               == [[5], []]
# p halvsies([])                == [[], []]


#another way

# def halvsies(arr)
#   arr.partition.with_index do |int, idx|
#     idx <= ((arr.size - 1) / 2)
#   end
# end






# p halvsies([1, 2, 3, 4])      == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3])   == [[1, 5, 2], [4, 3]]
# p halvsies([5])               == [[5], []]
# p halvsies([])                == [[], []]



#Find the Duplicate
#problem
# =>  given array of integers, return the int that occurs twice in teh array
#input: array of integers
#output: int that occurs twice in the array
#rules:
# =>  explicit  - exactly one value occurs twice, all others occur once
# =>              return an array
#data structure
# =>  array
#algorithm
# =>  iterate through array
# =>  detect which number occurs twice and return it

# def find_dup(arr)
#   arr.detect{|int| arr.count(int) == 2} 
# end





# #test cases
# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73







#Does My List Include This?
#problem
# =>  takes an array and an integer, returns tru =e if integer is in the array, false otherwise
#input: array and search value
#output: true or false if the search value is in the array
#rules:
# =>  explicit  - can't use include
# =>  implicit  - if array is empty, return false
# =>              if nil is an element in the array and nil is the search value, true
# =>              if arr is empty and search value is nil, false
#data structure
# =>  arrays
#algorithm
# =>  set new_arr = to array iteration, iterate through array
# =>  select elements that match search value
# =>  if new_arr is empty, return false, otherwise, true

# def include?(arr, search_val)
#   new_arr = arr.select{|el| el == search_val}
#   !new_arr.empty?
# end





# #test cases
# p include?([1,2,3,4,5], 3)  == true
# p include?([1,2,3,4,5], 6)  == false
# p include?([], 3)           == false
# p include?([nil], nil)      == true
# p include?([], nil)         == false


#another way

# def include?(arr, search_val)
#   arr.any?(search_val)
# end



# p include?([1,2,3,4,5], 3)  == true
# p include?([1,2,3,4,5], 6)  == false
# p include?([], 3)           == false
# p include?([nil], nil)      == true
# p include?([], nil)         == false






#Right Triangles
#problem
# =>  given pos integer, display a right triangle
#input: integer
#output: right triangle made out of stars
#rules:
# =>  explicit  - hypot has one at lower left and one at upper right
# =>  implicit  - bottom row has the int amount of stars, no spaces
# =>              each row moving up has one less star, one more space
#data structure
# =>  loop w puts
#algorithm
# =>  set spaces to int - 1
# =>  set stars = 1
# =>  loop 
# =>  print space * spaces + stars
# =>  increment stars, decrement spaces
# =>  end loop

def triangle(int)
  spaces = int - 1
  stars = 1
  loop do
    puts " "*spaces + "*"*stars
    spaces -= 1
    stars += 1
    break if stars > int
  end
end

#test case

triangle(5)
triangle(9)