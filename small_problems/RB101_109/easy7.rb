#Combine Two Lists

#problem
# =>  given two arrays, combine the arrays alternating 
#input: 2 arrays
#output: 1 array with the elements from both given arrays alternating
#rules:
# =>  explicit  - both input arrays are non-empty and same num of elements
# =>  implicit  - start with first element in first array
# =>              return one flattened array
#data structure
# =>  arrays
#algorithm
# =>  initialize variables counter 1 and counter 2
# =>  initialize new arr
# =>  loop through each array, pushing elements to the new arr
# =>  return array

# def interleave(arr1, arr2)
#   new_arr = []
#   counter1 = 0
#   counter2 = 0
  
#   loop do 
#     new_arr << arr1[counter1]
#     new_arr << arr2[counter2]
#     counter1 += 1
#     counter2 += 1
#     break if counter1 == arr1.size
#   end
  
#   new_arr
# end


# #test cases
# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end


# #test cases
# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']




#Lettercase Counter

#problem
# =>  takes a string, returns a hash that counts lowercase, uppercase, and neither
#input: string, can be empty, can have spaces, can have symbols
#output: hash with lowercase, uppercase, and neither counts
#rules:
# =>  explicit  - must return the specified hash
# =>  implicit  - if empty string, return hash with zeroes
# =>              numbers are neither
# =>              symbols and spaces are neither
#data structure
# =>  array for iterating over string, hash for output
#algorithm
# =>  initialize hash with lower, upper and neither set to 0
# =>  turn string into array 
# =>  iterate over each element in array
# =>    if lowercase, + 1 to lowercase in hash 
# =>    if uppercase, +1 to uppercase in hash 
# =>    else, +1 to neither in hash 
# =>    return the hash 

# def letter_case_count(str)
#   count = { lowercase:  0,
#             uppercase:  0,
#             neither:    0  }
#   str.chars.each do |letter|
#     if letter == letter.upcase && letter.downcase.between?('a','z')
#       count[:uppercase] += 1
#     elsif letter == letter.downcase && letter.downcase.between?('a','z')
#       count[:lowercase] += 1
#     else 
#       count[:neither] += 1
#     end 
#   end
#   count
# end

# #FIND A WAY TO TEST FOR A LETTER



# #test case

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef')   == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123')        == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('')           == { lowercase: 0, uppercase: 0, neither: 0 }



#another way

# def letter_case_count(str)
#   letters, symbols = str.chars.partition{|char| char.between?('A','z')}
#   uppercase, lowercase = letters.partition{|char| char.upcase == char}
#   count = { lowercase:  lowercase.size,
#             uppercase:  uppercase.size,
#             neither:    symbols.size  }
  
# end



# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef')   == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123')        == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('')           == { lowercase: 0, uppercase: 0, neither: 0 }





#Capitalize Words

#problem
# =>  takes a single string, returns new string with all words capitalized
#input: string
#output: string with all words capitalized
#rules:
# =>  explicit  - capitalized all words
# =>              a word is a sequence of non blank characters
# =>  implicit  - if a word starts with a symbol, it doesnt get capitalized
#data structure
# =>  arrays and symbols
#algorithm
# =>  accept str, split string at spaces
# =>  iterate through array of words, capitalize each word without changing orig 
# =>  join words back together into a string and return

# def word_cap(str)
  
#   str.split.map{|word| word.capitalize}.join(" ")
  
# end

# #test cases
# p word_cap('four score and seven')    == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


#Ruby conveniently provides the String#capitalize method to capitalize strings. 
#Without that method, how would you solve this problem? Try to come up with at least
#two solutions.

# def word_cap(str)
#   str.split.map do |word|
#     word[0].upcase + word[1..-1].downcase
#   end.join(" ")
  
# end


# #test cases
# p word_cap('four score and seven')    == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# def word_cap(str)
  
  
# end




# #test cases
# p word_cap('four score and seven')    #== 'Four Score And Seven'
# p word_cap('the javaScript language') #== 'The Javascript Language'
# p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'







#Swap Case
#problem
# =>  takes a string, returns new string, switcing lower to upper case and vice versa
#input: string
#output: string
#rules:
# =>  explicit  - all letters reversed cases
# =>              no String#swapcase
# =>              other characters should be unchanged
# =>  implicit  - 
#data structure
# =>  array, strings
#algorithm
# =>  separate characters
# =>  iterate and transform elements of the array
# =>  if symbol, return symbol
# =>  if uppercase, return lower case
# =>  if lowercase, return uppercase
# =>  join new array into a string

# def swapcase(str)
  
#   str.chars.map do |char|
#     if !char.between?('a','z')
#       char
#     elsif char.between?('A','Z')
#       char.downcase
#     else
#       char.upcase
#     end 
#   end.join
# end

# #test cases
# p swapcase('CamelCase')         == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


#another way

# UPPERCASE = ('A'..'Z').to_a
# LOWERCASE = ('a'..'z').to_a

# def swapcase(str)
#   str.chars.map do |char|
#     #char if !UPPERCASE.include?(char) && !LOWERCASE.include?(char) 
#     if LOWERCASE.include?(char)
#       char.upcase 
#     elsif UPPERCASE.include?(char)
#       char.downcase
#     else
#       char
#     end
#   end.join
# end


# #test cases
# p swapcase('CamelCase')         == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


#rewriting their answer for regex practice

# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end

# #test cases
# p swapcase('CamelCase')         == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'






#Staggered Caps (Part 1)

#problem
# =>  takes a string as an arg, returns a new string that alternates upper and lower case
#input: string
#output: string with char alternating cases
#rules:
# =>  explicit  - characters that are not letters shouldn't be changed
# =>              not letters should count as char when switching between upper and lowr
#data structure
# =>  array
#algorithm
# =>  accept string
# =>  separate characters into an array
# =>  iterate through the string with the index,
# =>    if idx is odd, lowercase
# =>    if idx is even, uppercase
# =>  join array

# def staggered_case(str)
#   str.chars.map.with_index do |char, idx|
#     if idx.odd?
#       char.downcase
#     else
#       char.upcase
#     end
#   end.join
# end


# #test cases
# p staggered_case('I Love Launch School!')     == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS')                  == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'



#Can you modify this method so the caller can request that the first character be 
#downcased rather than upcased?

# def staggered_case(string)
#   result = ''
#   need_upper = false
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end


# #test cases
# p staggered_case('I Love Launch School!')     #== 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS')                  #== 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'





#Staggered Caps (Part 2)

#modify the method above so it ignores the non-alphabetic characters when alternating
#between upper and lowercase


# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper if char.between?('A','z')
#   end
#   result
# end




# p staggered_case('I Love Launch School!')     == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS')                  == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'





#Multiplicative Average

#problem
# =>  GIVEN ARRAY , multiplies all integers together, divides by number of entries in array
# =>    then prints the result rounded to 3 decimal places
#input:array
#output: float rounded to three decimals
#rules:
# =>  explicit  - assume array is non empty
# =>              return answer rounded to three decimal places
#data structure
# =>  array to float
#algorithm
# =>  get arr size
# =>  multiply all elements of array
# =>  divide answer by arr size
# =>  format answer to be rounded to 3 decimals

# def show_multiplicative_average(arr)
#   divisor = arr.size.to_f
#   product = arr.reduce {|product, num| product * num}
#   result = (product / divisor).round(3)
#   format("%.03f", result)
# end


# #test cases
# p show_multiplicative_average([3, 5])                # => The result is 7.500
# p show_multiplicative_average([6])                   # => The result is 6.000
# p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667





#multiply lists

#problem
# =>  given two arrays of integers, return a new array with products of numbers in the same
# =>    index
#input: two arrays
#output: one array of products from inputs
#rules:
# =>  explicit  - both args have same size / are integers
#data structure
# =>  array
#algorithm
# =>  iterate through the first array with the indexes
# =>    mulitply each number by the corresponding number in the other array
# =>    return that number

# def multiply_list(arr1, arr2)
  
#   arr1.map.with_index {|num, idx| num * arr2[idx]}
  
  
# end



# #test cases
# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]



#The Array#zip method can be used to produce an extremely compact solution to this method.
#Read the documentation for zip, and see if you can come up with a one line solution 
#(not counting the def and end lines).

# def multiply_list(arr1, arr2)
#   arr1.zip(arr2) {|sub_arr| sub_arr[0] * sub_arr[1]}
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]


#not sure about this because zip returns nil






#Multiply All Pairs

#problem
# =>  given two arrays, return new array with product of every pair sorted by increasing value
#input: 2 arrays
#output: one array sorted by inc value of all possible products
#rules:
# =>  explicit  - sorted by increasing value, non empty arrays
# =>  implicit  - include duplicates, diff sizes of arrays
#data strucuture
# =>  arrays
#algorithm
# =>  initialize new array
# =>    set it equal to the product of the two array args
# =>  call map on the array
# =>    iterate through each pair returning the product
# =>  return the array sorted

# def multiply_all_pairs(arr1, arr2)
  
#   new_arr = arr1.product(arr2)
#   new_arr.map{|pair| pair[0] * pair[1]}.sort
# end




# #test cases
# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]



#another way




# def multiply_all_pairs(arr1, arr2)
  
#   arr1.product(arr2).map{|pair| pair[0] * pair[1]}.sort
# end




# #test cases
# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]










#The End Is Near But Not Here

#problem
# =>  given a string, return the second to last word
#input: string
#output: second to last word as a string
#rules: 
# =>  explicit  - words are any sequence of non-blank char
#                 str value will always have two words or more
#data strucutre
# =>  string, array
#algorithm
# =>  split at spaces
# =>  return second to last array item

# def penultimate(str)
#   str.split[-2]
# end


# #test cases
# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'





#Suppose we need a method that retrieves the middle word of a phrase/sentence. 
#What edge cases need to be considered? How would you handle those edge cases without 
#ignoring them? Write a method that returns the middle word of a phrase or sentence. 
#It should handle all of the edge cases you thought of.


#edge cases
# =>  strings that contain one word
# =>  strings that contain no words
# =>  strings that contain and even amount of words


