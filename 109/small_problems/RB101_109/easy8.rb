#Sum of Sums

#problem
# =>  given an array of numbers, returns the sums of the sums of the leading subsequence 
#input: array of integers
#output: integer
#rules:
# =>  explicit  - sum the first number, then add to sum of first two nums, then add to sum
# =>                first three numbers etc until you add the whole array sum to the total
# =>              array always contains at least one number
# =>  implicit  - array w one number only returns the number
#data structure
# =>  array, then a variable total
#algorithm
# =>  initiate sum variable
# =>  initiate counter variable
# =>  initiate loop
# =>    get sum of numbers between 0 and counter , add to sum variable
# =>    increase counter
# =>    break if counter >= arr.size
# =>  return sum
#code

# def sum_of_sums(arr)
#   sum = 0
#   counter = 0
#   loop do
#     sum += arr[0..counter].sum
#     counter += 1
#     break if counter >= arr.size
#   end
#   sum 
# end


# #test cases
# p sum_of_sums([3, 5, 2])        == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3])     == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4])              == 4
# p sum_of_sums([1, 2, 3, 4, 5])  == 35



#another way 

# def sum_of_sums(arr)
#   sum = 0
#   arr.each_with_index do |int, idx|
#     sum += int * (arr.size - idx)
#   end
#   sum
# end

# #test cases
# p sum_of_sums([3, 5, 2])        == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3])     == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4])              == 4
# p sum_of_sums([1, 2, 3, 4, 5])  == 35







#Madlibs

#problem
# =>  ask user for 4 words, uses those words in a sentence
#input: user words
#output: sentence

# print "Enter a noun: "
# noun = gets.chomp
# print "Enter a verb: "
# verb = gets.chomp
# print "Enter a adjective: "
# adjective = gets.chomp
# print "Enter a adverb: "
# adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!" 





#Leading Substrings

#problem
# =>  given a string, return an array of all possible substrings that start at teh begining 
# =>    of the string
#input: string
#output: array of strings (substrings)
#rules:
# =>  explicit  - must include all possible substrings starting w beginning
# =>              return value arranged in order from shortest to longest
# =>  implicit  - string w a single letter returns an array w one index, with that letter
#data structure
# =>  string, pushing to array
#algorithm
# =>  initiate empty arr
# =>  counter = 0
# =>  loop (through string letters)
# =>    get string char starting at 0 to counter, push to arr
# =>    increase counter
# =>    break if counter == arr.size
# =>  return arr

# def leading_substrings(str)
#   arr = []
#   counter = 0
#   loop do 
#     arr << str[0..counter]
#     counter += 1
#     break if counter >= str.length
#   end
#   arr
# end

# #test cases
# p leading_substrings('abc')   == ['a', 'ab', 'abc']
# p leading_substrings('a')     == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']




#another way

# def leading_substrings(str)
#   arr = []
  
#   str.chars.each_with_index do |char, idx|
#     arr << str[0..idx]
#   end
  
#   arr
# end


# #test cases
# p leading_substrings('abc')   == ['a', 'ab', 'abc']
# p leading_substrings('a')     == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']








#All Substrings
#problem
# =>  given a string, return a list of all possible substrings
#input: string
#output: list of substrings in an array
#rules:
# =>  explicit  - returned list ordered by where the string begins (ie index 0 or 1)
# =>              within the list ordered by where it begins, should then be ordered by 
# =>                shortest to longest
# =>              use method from last problem
#data structure
# =>  strings and arrays
#algorithm
# =>  initiate empty array
# =>  initiate starter variable
# =>  loop (number of times is # of char in string)
# =>    pass in str[starter..] in to leading_substrings method
# =>    add what it returns to the empty array
# =>    inc starter
# =>    break if starter >= str.length
# =>  return arr

# def leading_substrings(str)
#   arr = []
  
#   str.chars.each_with_index do |char, idx|
#     arr << str[0..idx]
#   end
  
#   arr
# end

# def substrings(str)
#   arr = []
#   starter = 0
#   loop do
#     arr << leading_substrings(str[starter..])
#     starter += 1
#     break if starter >= str.length
#   end
#   arr.flatten
# end


# #test cases
# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]





#another way

# def leading_substrings(str)
#   arr = []
  
#   str.chars.each_with_index do |char, idx|
#     arr << str[0..idx]
#   end
  
#   arr
# end

# def substrings(str)
#   arr = []
#   str.chars.each_with_index do |char, idx|
#     arr.concat(leading_substrings(str[idx..]))
#   end
#   arr
# end


#test cases
#p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]





#Palindromic Substrings
#problem
# =>  given a string, return a list of all substrings that are palindromic
#input: string
#output: array of substrings
#rules:
# =>  explicit  - palindome is a substring that consists of the same sequence forward and back
# =>              return value arranged in same sequence that palindrom appears
# =>              duplicate palindromes should be included multiple times
# =>              use the substrings method from before
# =>              case matters AbA is but Aba is not
# =>              can include dashes 
# =>              single characters are not palindromes
# =>  implicit  - if no palindromes, return empty array
#data strucutre
# =>  arrays
#algorithm
# =>  accept string, 
# =>  call substrnigs with string arguemnt
# =>  save return value to variable
# =>  iterate over array returning only values that are palindromes

# def leading_substrings(str)
#   arr = []
  
#   str.chars.each_with_index do |char, idx|
#     arr << str[0..idx]
#   end
  
#   arr
# end

# def substrings(str)
#   arr = []
#   str.chars.each_with_index do |char, idx|
#     arr.concat(leading_substrings(str[idx..]))
#   end
#   arr
# end

# def palindromes(str)
#   arr = substrings(str)
#   arr.select {|sub_str| sub_str.length > 1 && sub_str == sub_str.reverse}
# end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]












#fizzbuzz
#problem
# =>  method takes two arguemnts, startinga nd ending number, print out all nums between, 
# =>      if num is divis by 3, print fizz, if 5 print buzz, both? print Fizzbuzz
#input: two integers
#output: list of numbers with fizz and buzz on those divis by 3 and 5
#rules: 
# =>  explicit  - print out all numbers between including the nums
# =>              if num is divis by 3 and 5 , print FizzBuzz in its place
# =>              if num is divis by 3, print Fizz
# =>              if num is divis by 5, print Buzz
#data structure
# =>  loop w print
#Algorithm
# =>  counter = first number
# =>  loop 
# =>    if num is divis by 3 and 5 , print FizzBuzz in its place
# =>    if num is divis by 3, print Fizz
# =>    if num is divis by 5, print Buzz
# =>    else print num
#				counter plus 1
# =>    break if counter > second num

# def fizzbuzz(start, finish)
# 	counter = start
# 	arr = []
# 	loop do
# 		if (counter % 3 == 0) && (counter % 5 == 0) 
# 			arr << "FizzBuzz"
# 		elsif counter % 3 == 0
# 			arr << "Fizz"
# 		elsif counter % 5 == 0
# 			arr << "Buzz"
# 		else
# 			arr << counter
# 		end
# 		counter += 1
# 		break if counter > finish
# 	end
# 	print arr
# end



# #test cases
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz








#Double Char (Part 1)

#problem
#		given a string, return the string where every character is doubled
#input: string
#ouptut: string with all characters doubled
#rules
#			implicit	-	case stays the same
#									spaces and special characters count
#									if empty, return empty
#data structure
#		array
#algorithm
#		initiate new arr
#		split string into chars
#		iterate over each char
#			add it to arr twice
#		return new arr joined
#code

# def repeater(str)
# 	arr = []
# 	str.chars.each do |char|
# 		2.times {|i| arr << char}
# 	end
# 	arr.join
# end



# #test cases
# p repeater('Hello') 		== "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') 					== ''




#another way 

# def repeater(str)
# 	str.chars.map do |char|
# 		char * 2
# 	end.join
# end




# #test cases
# p repeater('Hello') 		== "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') 					== ''









#Double Char (Part 2)
#problem
#		given a string, return a new string with every CONSONANT doubled
#input: string
#output: string w every consonant doubled
#rules
#		explicit	-	vowels, digits, punctuation and whitespace should not be 
#										doubled
#data structure
#		arrray
#algorithm
#		create consonant constant
#		initiate new arr
#		split str into chars, iterate over chars
#			if char is a consonant
#					double it and put into arr
#			else
#				put into arr
#			return arr joined
# CONSONANT = %w(B C D F G H J K L M N P Q R S T V W X Y Z)

# def double_consonants(str)
# 	arr = []
# 	str.chars.each do |char|
# 		if CONSONANT.include?(char.upcase)
# 			arr << char << char 
# 		else
# 			arr << char 
# 		end
# 	end
# 	arr.join
# end


# #test cases
# p double_consonants('String') 			== "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") 		== "JJullyy 4tthh"
# p double_consonants('') 						== ""





#another way

# CONSONANT = %w(B C D F G H J K L M N P Q R S T V W X Y Z)

# def double_consonants(str)
# 	str.chars.map do |char|
# 		if CONSONANT.include?(char.upcase)
# 			char * 2
# 		else
# 			char
# 		end
# 	end.join 
# end

# #test cases
# p double_consonants('String') 			== "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") 		== "JJullyy 4tthh"
# p double_consonants('') 						== ""






#Reverse the Digits In a Number
#problem
#		accept pos integer, returns that number with digits reversed
#input: integer
#output: integer with reversed digits
#rules
#		explicit -	dont worry about leading zeroes
#data strucutre
#		strings and ararys
#algorithm
#		turn number to string
#		reverse string
#		turn reversed string to number

# def reversed_number(int)
# 	int.to_s.reverse.to_i
# end




# #test cases
# p reversed_number(12345) 	== 54321
# p reversed_number(12213) 	== 31221
# p reversed_number(456) 		== 654
# p reversed_number(12000) 	== 21 # No leading zeros in return value!
# p reversed_number(12003) 	== 30021
# p reversed_number(1) 			== 1









#Get The Middle Character

#problem
#		given string, return the middle character
#input: string
#output: string of middle char
#rules
#		explicit	-	if odd length, one char
#								if even length, two chars
#		implicit	-	if its a space, return the space
#								if length of one, return char
#data structure
#		string selection
#algorithm
#		if length of str is odd
#			return char at index [str.length / 2] 
#		if even
#			return chars at index [(str.length / 2)- 1, 2]

# def center_of(str)
# 	if str.length.odd?
# 		return str[(str.length / 2)]
# 	else
# 		return str[(str.length / 2) - 1, 2]
# 	end
# end




# #test cases
# p center_of('I love ruby') 		== 'e'
# p center_of('Launch School') 	== ' '
# p center_of('Launch') 				== 'un'
# p center_of('Launchschool') 	== 'hs'
# p center_of('x') 							== 'x'
