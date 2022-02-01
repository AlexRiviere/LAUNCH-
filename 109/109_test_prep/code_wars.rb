=begin

1.Count letters in string 
(https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d/train/ruby)
6 kyu


Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. 
The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

# **Problem**
# =>	objective: given a string, count how many times a letter occurs, store the count in a hash. In the hash, the key is the letter, and the number of times it occurs in the string is the value. The key 
representing the letter needs to be a symbol data type. 

# =>	input: string

# =>  	output: hash with keys symbols representing letters, and value integers representing number of occurences

# =>	rules:

# =>		explicit	-	the key must be symbol

# =>		implicit	- don't worry about capital letters

# =>	questions: can I mutate the given string? Spaces/punctuation? empty string given?

# **Data Structure**
  - hash 
# **Edge Cases**

# **Implementation Notes**
  - if you add a key/value pair to a hash , and that key already exists in the hash, the newly added pair replaces the old
  - if you try to reference a key in a hash that does not exists,you get nil

# **Algorithm**
  - initialize an empty hash
  - arr_of_char = split the given string into characters, each occupying an element of an array
  - iterate over the array of characters
    - if the key does not exist in the hash
      - create a new key/value pair with the char as a symbol key and 1 as the value integer
    - otherwise
      - reference the current key/value pair, and increment the value by one

# **Sub-Problems**

# **Code**

# **Test Cases**

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
=end


# def letter_count(str)
#   arr_of_char = str.chars
#   arr_of_char.each_with_object({}) do |char, hsh|
#     if hsh[char.to_sym].nil?
#       hsh[char.to_sym] = 1
#     else
#       hsh[char.to_sym] += 1
#     end
#   end
# end

# p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
# p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
# p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}






# def letter_count(str)
#   arr_of_char = str.chars
#   arr_of_char.each_with_object({}) do |char, hsh|
#     hsh[char.to_sym] ? hsh[char.to_sym] += 1  :  hsh[char.to_sym] = 1  
#   end
# end

# p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
# p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
# p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}












# 2.Find all pairs 
# (https://www.codewars.com/kata/5c55ad8c9d76d41a62b4ede3/train/ruby)
# 7 kyu
=begin
Find all pairs

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

# **Problem**
# =>	objective: given an array, count the number of pairs in the array. pair is when there are two occurences of the same number

# =>	input: array of integers

# =>  	output: integer representing the number of pairs in the given array

# =>	rules:

# =>		explicit	-	if given an empty array or an array with only one value, return 0
                  - if extra pairs, count each pair once, but there can be extra pairs of the same number

# =>		implicit	- 

# =>	questions: can i mutate the array? will i ever get anything other than an integer

# **Data Structure**
  - array
# **Edge Cases**
  - given 0 integers or 1
# **Implementation Notes**

# **Algorithm**
  - initialize array `uniq` to the unique values of the given array
  - initialize array `pairs` = iterate over `uniq` using transformation
  -   return a count of the occurences, divided by 2
  - get the sum of the array `pairs`
  
# **Sub-Problems**

# **Code**

# **Test Cases**
=end

# def pairs(arr)
#   arr.uniq.map do |int|
#     arr.count(int) / 2
#   end.sum
# end


# p pairs([1, 2, 5, 6, 5, 2])             == 2
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])  == 4
# p pairs([0, 0, 0, 0, 0, 0, 0])          == 3 
# p pairs([1000, 1000])                   == 1
# p pairs([])                             == 0
# p pairs([54])                           == 0














# 3.Return substring instance count
# (https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby)
# 7 kyu
=begin
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1


# **Problem**
# =>	objective: given a string and a search_text, return the number of times the search text is found within the string

# =>	input: string and search text

# =>  	output: integer representing how many times the search text is found within the string

# =>	rules:

# =>		explicit	-	

# =>		implicit	-

# =>	questions:

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - get size of search 
  - create list of all 
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# def solution(str, search)
#   str.scan(search).size
# end

# p solution('abcdeb','b')  == 2
# p solution('abcdeb', 'a') == 1
# p solution('abbc', 'bb')  == 1
















# 4.Alphabet symmetry
# (https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0)
# 7 kyu
=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode 
occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.


# **Problem**
# =>	objective: given an array of words, return an array with the number of letters that match their position in the alphabet for each word

# =>	input: an array of strings with upper and lowercase letters

# =>  	output: an array of integers where each integer represents how many letters in the repsective word matches the position it is in in the alphabet

# =>	rules:

# =>		explicit	-	can have lower and uppercase letters, no spaces are given

# =>		implicit	- the position of the letter in the alphabet matches the index of the letter + 1 

# =>	questions: can I receive any non alphabetic arguments? blank args? empty strings? 

# **Data Structure**
# =>  array

# **Edge Cases**

# **Implementation Notes**
  - calling #ord gives you the position + 96 so subtract 96 from it to get the position, This goes for lowercase only

# **Algorithm**
  - iterate over the given array with the intention of transforming
    - pass each word to the #how_many_matches method which takes a word and returns the number of letters that match their position in the alphabet
  

# **Sub-Problems**
  - count how many matches? 
    - given a word, return the number of letters that match their position in the alphabet
    - initialize `sum` variable, assign to 0
    
    -initialize `lowercase_chars` and assign it to calling #downcase and #chars on the word argument, iterate over the letters with their indexes
      - if the index + 1 matches the ASCII order value minus 96, add 1 to sum
    - return sum
    
    
# **Code**

# **Test Cases**


=end

# def how_many_matches(word)
#   sum = 0
#   lowercase_chars = word.downcase.chars
#   lowercase_chars.each_with_index do |letter, idx|
#     sum += 1 if (idx + 1) == letter.ord - 96
#   end
#   sum
# end


# def solve(arr_of_words)
#   arr_of_words.map do |word|
#     how_many_matches(word)
#   end
# end

# p solve(["abode","ABc","xyzD"])                       == [4,3,1]
# p solve(["abide","ABc","xyz"])                        == [4,3,0]
# p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])  == [6,5,7]
# p solve(["encode","abc","xyzD","ABmD"])               == [1, 3, 1, 3]

















# 5.Longest vowel chain 
# (https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby)
# 7 kyu
=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. 
Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

# **Problem**
# =>	objective: given a string, return the longest consecutive substring of vowels

# =>	input: string

# =>  	output: integer representing the longest substring of vowels

# =>	rules:

# =>		explicit	-	given lowercase string that has alphabetic char only and no spaces

# =>		implicit	-

# =>	questions:

# **Data Structure**
  - array to collect consecutive substrings
  
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
- initialize constant vowels
  - initialize empty array `vowel_substrings`
  - initialize empty string `current_substring`
  - split the given strings, iterate over the letters
    - if the current letter is a consonant, append the `current_substring` to the `vowel_substrings` array, and empty the string  `current_substring`
    - if its a vowel (aka it is included in the vowel constant), append to `current_substring`
  - return the integer value of the longest length element in the array `vowel_substrings`
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# VOWELS = ['a', 'e', 'i', 'o', 'u']

# def solve(string)
#   vowel_substrings = []
#   current_substring = ''
  
#   string_chars = string.chars
  
#   string_chars.each_with_index do |letter, idx|
#     if VOWELS.include?(letter)
#       current_substring << letter 
#     else
#       vowel_substrings << current_substring
#       current_substring = ''
#     end
    
#     if idx == string_chars.size - 1
#       vowel_substrings << current_substring
#     end
#   end
  
#   vowel_substrings.max_by{ |substring| substring.length}.length
# end

# p solve("codewarriors")           == 2
# p solve("suoidea")                == 3
# p solve("iuuvgheaae")             == 4
# p solve("ultrarevolutionariees")  == 3
# p solve("strengthlessnesses")     == 1
# p solve("cuboideonavicuare")      == 2
# p solve("chrononhotonthuooaos")   == 5
# p solve("iiihoovaeaaaoougjyaw")   == 8







# 5.Longest vowel chain 
# (https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby)
# 7 kyu
=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. 
Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

# **Problem**
# =>	objective: given a string, return the longest consecutive substring of vowels

# =>	input: string

# =>  	output: integer representing the longest substring of vowels

# =>	rules:

# =>		explicit	-	given lowercase string that has alphabetic char only and no spaces

# =>		implicit	-

# =>	questions:

# **Data Structure**
  - array to collect consecutive substrings
  
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
- initialize constant VOWELS
- initialize `current_high` assign to 0
- initialize `chars` to the characters of the given string
- initialize current_substring
- iterate over `chars`
  - if the letter is a vowel, add it to the current_substring
  - if the letter is a consonant or the last letter of the word
    - compare the current substring length to the current high
    - if the current high is higher, do nothing
    - other wise, set the current high to the length of the current substring
- return the current high
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# VOWELS = ['a', 'e', 'i', 'o', 'u']

# def solve(string)
#   current_high = 0
#   chars = string.chars
#   current_substring = ''
#   chars.each_with_index do |letter, idx|
#     current_substring << letter if VOWELS.include?(letter)
#     if !VOWELS.include?(letter) || idx == chars.size - 1
#       current_high = current_substring.length if current_high < current_substring.length
#       current_substring = ''
#     end
#   end
#   current_high
# end


# p solve("codewarriors")           == 2
# p solve("suoidea")                == 3
# p solve("iuuvgheaae")             == 4
# p solve("ultrarevolutionariees")  == 3
# p solve("strengthlessnesses")     == 1
# p solve("cuboideonavicuare")      == 2
# p solve("chrononhotonthuooaos")   == 5
# p solve("iiihoovaeaaaoougjyaw")   == 8





























# 6.Non-even substrings
# (https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/train/ruby)
# 6 kyu
=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

# **Problem**
# =>	objective: given a string of numbers, return the number of odd-numbered substrings that can be formed from those numbers

# =>	input: string of numbers

# =>  	output:integer representing the number of odd numbers you can make from the given number

# =>	rules:

# =>		explicit	-	has to be odd numbers, input always given in a string, number can be one digit 

# =>		implicit	- must be kept in order but doesn't have to start from the first number

# =>	questions:

# **Data Structure**
  - array of all the possible substrings that can be made from the given string
  
# **Edge Cases**

# **Implementation Notes**
  - upto
# **Algorithm**
  high level
  - get all possible substrings of given string
  -count how many are odd
  
  low level
  - initialize empty arr
  - initialize counter var
  - loop
    - upto the last letter, starting at first letter in string, append chunk to arr
    -  from index letter counter to upto param
    -increment counter
  - count strings in arr that are odd after being converted to an integer

# **Sub-Problems**

# **Code**

# **Test Cases**


=end


# def solve(str)
#   arr = []
#   counter = 0
  
#   loop do
#     counter.upto(str.length - 1) do |letter_index|
#       arr << str[counter..letter_index]
#     end
#   counter += 1
#   break if counter == str.size 
#   end
  
#   arr.count { |substring| substring.to_i.odd?}
  
# end


# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28























# 7.Substring fun
# (https://www.codewars.com/kata/565b112d09c1adfdd500019c/train/ruby)
# 7 kyu
=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.


# **Problem**
# =>	objective: given a list of n words, extract the letter that corresponds to the position that each word is in in the given array. then return a new word with all those letters joined

# =>	input: an array of words, can be empty 

# =>  	output: a string with all extracted letters joined

# =>	rules:

# =>		explicit	-	if you receive empty array, return empty string

# =>		implicit	- 

# =>	questions: does punctuation count? what if there are not enough letters?

# **Data Structure**
  - array
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - iterate over the list of words, with the intention of transformation, with the index
    - extract the letter (from the string being iterated over) at the index (that comes from the element in the array)
    - join the array of letters to form a string
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end


# def nth_char(arr)
#   arr.map.with_index { |word, idx| word[idx] }.join
# end

# p nth_char(['yoda', 'best', 'has'])     == 'yes'
# p nth_char([])                          == ''
# p nth_char(['X-ray']) == 'X'
# p nth_char(['No', 'No']) == 'No'
# p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'



























# 8.Repeated Substring
# (https://www.codewars.com/kata/5491689aff74b9b292000334/train/ruby)
# 6 kyu
=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. 
The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string

s = "ababab"
the answer is

["ab", 3]
Example #2:

for string

s = "abcde"
the answer is

because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

# **Problem**
# =>	objective: given a string, return an array. The first is a substring, the second is an integer representing how many times you have to multiply the substring to create the  original string

# =>	input: string

# =>  	output: array with substring as first element and integer as second element

# =>	rules:

# =>		explicit	-	need to find teh smallest possible substring to repeat the most amount of times

# =>		implicit	- no matter what, the first element * the second element of the returned array needs to be equal in value to the given string

# =>	questions: assuming that we will always receive a valid argument

# **Data Structure**
  - array
  
# **Edge Cases**

# **Implementation Notes**
  - find index
  
# **Algorithm**
  high level
  - get all possible substrings
  - sort by length
  - return the first one that, multiplied by whatever number will make it equal to the whole string, it matches the OG string arg
  
  low level'

    

  
  
# **Sub-Problems**
  - given a string, return all possible substrings, all starting with the first letter only
  - get_all_substrings
    - initiate empty array
  - initiate counter var
  - loop `get_all_substrings`
    - from 0 upto string.size - 1
      - append to arr, slice of string from [0 to upto counter]
    - increment counter
    - break if the coutner is equal to the string length
  - return arr
  
  
# **Code**

# **Test Cases**


  - find the index of the number that 
    - get length of substring
    - mulitplier = divide string length by length of num
    - multiply length of substring by multiplier, see if that is equal to OG string arg

=end

# def get_all_substrings(string)
#   arr = []
#   counter = 0
#   0.upto(string.length - 1) do |num|
#     arr << string[0..num]
#   end
#   arr
# end

# def f(string)
#   length = string.length
#   array_of_substrings = get_all_substrings(string)
#   index_of_answer = array_of_substrings.find_index do |substring|
#     mulitplier = length / substring.length
#     (substring * mulitplier) == string 
#   end
#   substring = array_of_substrings[index_of_answer]
#   multiplier = length / substring.length
#   [substring, multiplier ]
# end



# # p get_all_substrings('abcdef')

# p f("ababab") == ["ab", 3]
# p f("aabaab") == ["aab", 2]
# p f("abcde") == ["abcde", 1]
# p f("abcabc") == ["abc", 2]










#another try









# def get_all_substrings(string)
#   chars = string.chars
#   arr = []
#   chars.each_with_index do |char, idx|
#     arr << string[0..idx]
#   end
#   arr
# end

# def f(string)
#   length = string.length
#   array_of_substrings = get_all_substrings(string)
#   index_of_answer = array_of_substrings.find_index do |substring|
#     mulitplier = length / substring.length
#     (substring * mulitplier) == string 
#   end
#   substring = array_of_substrings[index_of_answer]
#   multiplier = length / substring.length
#   [substring, multiplier ]
# end



# p get_all_substrings('abcdef')

# p f("ababab") == ["ab", 3]
# p f("aabaab") == ["aab", 2]
# p f("abcde") == ["abcde", 1]
# p f("abcabc") == ["abc", 2]













# 9.Typoglycemia Generator
# (https://www.codewars.com/kata/55953e906851cf2441000032/train/ruby)
# 5 kyu

=begin
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled,
as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia

# **Problem**
# =>	objective: given a string, return a new string with the same first and last letter, and all letters in between sorted alphabetically

# =>	input: string

# =>  	output: string with punctuation in the same place, first and last letters in the same place, all letters in between sorted alphabetically

# =>	rules:

# =>		explicit	-	words are separated by single spaces
                  - keep special char in their spot, only 4 special char will be included (-, ', , , .)
                  - ignore capitalization 

# =>		implicit	- 0, 1, 2, or 3 char words return themselves

# =>	questions: 

# **Data Structure**
  - array 
  
# **Edge Cases**
  - see implicit line
# **Implementation Notes**

# **Algorithm**
  high level
  - take word, remove anything that is not the first and last letter or punctuation
  - sort the removed letters, return them back to the array in order
  
  low level
  -constant with only letters
  -constant with only punctuation
  
  # - split the given sentence into words
  # - iterate over each word,  
  #   - return the same string if it has 0, 1 2 or 3 characters
  #   - otherwise, 
  #     -  initialize letters_n_punct = send each word to the punct_n_firstlast method which returns an array
  #     -  initialize middle_chars_sorted = send each word to the `get_middle_chars_sorted` method which returns an array of all the middle characters
  #     - iterate over letters_n_punct
  #       - if the char is nil, replace it with the first letter from the middle_chars_sorted array (destructively removed)


# **Sub-Problems**
- punct_n_firstlast method
  - given a word, return an array with only the punctuation, first and last letter in their respective indexes, everything else is `nil`
  - turn word into array
  - init empty array = result
  - first_index = 
  - last_index =  
  - iterate over chars with index
    - if the index is less than or equal to first index, append to empty result arr
    - if char is a punctuation, append to result arr
    - if index is >= last index, append to result arr
    - otherwise, append nil
    
- `get_middle_chars_sorted`
  - given a word, return an array with only the middle characters SORTED, not punctuation 

# **Code**

# **Test Cases**


=end

# PUNCTUATION = ["-", "'", ",", "." ]
# LETTERS = ('a'..'z').to_a

# def get_middle_chars_sorted(word)
#   chars = word.chars
#   middle_chars = []
  
#   first_index = chars.find_index { |char| LETTERS.include?(char) }
#   last_index = chars.rindex { |char| LETTERS.include?(char) }
  
#     chars.each_with_index do |char, idx|
#     if idx <= first_index || PUNCTUATION.include?(char) || idx >= last_index
      
#     else
#       middle_chars << char 
#     end
#   end
  
#   middle_chars.sort
# end

# def punct_n_firstlast(word)
#   return word.split if word.size <= 3
#   chars = word.chars
#   result = []
  
#   first_index = chars.find_index { |char| LETTERS.include?(char) }
#   last_index = chars.rindex { |char| LETTERS.include?(char) }
  
#   chars.each_with_index do |char, idx|
#     if idx <= first_index || PUNCTUATION.include?(char) || idx >= last_index
#       result << char
#     else
#       result << nil
#     end
#   end
  
  
#   result
# end

  


# def scramble_words(sentence)
#   words = sentence.split
  
#   words_arr_result = words.map do |word|
#   # word if word.size <= 3
    
#     letters_n_punct = punct_n_firstlast(word)
#     middle_chars_sorted = get_middle_chars_sorted(word)
    
#     letters_n_punct.map do |char|
#       char == nil ? middle_chars_sorted.shift : char
#     end
  
#   end
  
#   if words_arr_result.size > 1
#     words_arr_result.map { |word| word.join }.join(" ")
#   else
#     words_arr_result.join
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
 















=begin
12. Detect Pangram
(https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby)
6 kyu
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.


# **Problem**
# =>	objective: given a string, return boolean object true or false depending on if every letter of the alphabet is included

# =>	input: a string

# =>  	output: true or false if sentence is a pangram or not

# =>	rules:

# =>		explicit	-	ignore case, numbers, punctuation
                  - pangram contains every letter at least once

# =>		implicit	-

# =>	questions: empty strings? invalid input?

# **Data Structure**
  - array
  
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - uniq_downcase_char = make string downcase, get array of char from the downcase string, get uniq values from this
  - letters_only = use selection to remove the punctuation
  - count how many, if 26, true, else false

# **Sub-Problems**

# **Code**

# **Test Cases**

=end


# def panagram?(string)
#   uniq_downcase_char = string.downcase.chars.uniq
#   letters_only = uniq_downcase_char.select{ |char| char =~ /[a-z]/ }
#   letters_only.size == 26 ? true : false
# end

# p panagram?("The quick brown fox jumps over the lazy dog.") == true
# p panagram?("This is not a pangram.") == false























=begin
13. Kebabize
(https://www.codewars.com/kata/57f8ff867a28db569e000c4a/train/ruby)
6 kyu
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters



# **Problem**
# =>	objective: given a word in camel case (every new word is an uppercase letter), return the word in kebab case with hyphens between words and all letters lowercase

# =>	input: a word in camel case

# =>  	output: the given word in kebab case

# =>	rules:

# =>		explicit	-	returned string needs to eb lower caes

# =>		implicit	-

# =>	questions: given invalid? or empty string?

# **Data Structure**
  - array
  
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  high leve
  - split the word at the uppercase letters
  - make all letters lowercase
  - join the words with hyphens
  
  low level
  - chars = word separated into characters, numbers removed
  - new word = empty string
  - iterate over chars
    - if the letter is lower case, add it to the `new_word` string
    - otherwise add " " + char
  - split new word at the spaces
  - make all lowercase
  - join with hyphens
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# def kebabize(word)
#   chars = word.chars.select{ |char| char =~ /[a-zA-Z]/}
#   new_word = ''
  
#   chars.each do |char|
#     if char == char.downcase
#       new_word << char
#     else
#       new_word << (" " + char)
#     end
#   end
  
#   new_word.downcase.split(" ").join("-")
# end








# p kebabize('myCamelCasedString') == 'my-camel-cased-string'
# p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'











# def kebabize(word)
#   letters_only = word.chars.select{ |char| char =~ /[A-Za-z]/}.join
#   letters_only.split(/(?=[A-Z])/).join("-").downcase
# end




# p kebabize('myCamelCasedString') == 'my-camel-cased-string'
# p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'






















=begin
14. Dubstep
(https://www.codewars.com/kata/551dc350bf4e526099000ae5/train/ruby)
6 kyu
Polycarpus works as a DJ in the best Berland nightclub, and he often uses dubstep music in his performance. 
Recently, he has decided to take a couple of old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain WUB).
To make the dubstep remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song (the number may be zero), 
after the last word (the number may be zero), and between words (at least one between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", 
in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided to find out what was the initial song that Polycarpus remixed.
Help Jonny restore the original song.

Input
The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters

Output
Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.

Examples

# **Problem**
# =>	objective: given a string with uppercase letters, return the initial song, removing all WUBs from the string, and and putting spaces between the words

# =>	input: string, only caps, 

# =>  	output: string with spaces ebtween the words that are not WUB

# =>	rules:

# =>		explicit	-	There can be one WUB between words or more, and zero or more WUBS before or after the first and last word 

# =>		implicit	- return with single space between words

# =>	questions: can i mutate the string? or new string?

# **Data Structure**
  - 
# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize local var `words_and_empty_strings`, assign it to the given string split at the 'WUB's
  - initialize local var `words_only`, assign it to the return value from removing the empty strings from `words_and_empty_strings`
  - join `words_only` with spaces
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**



=end

# def song_decoder(string)
#   words = string.split("WUB").reject(&:empty?).join(" ")
# end

# p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") ==  "WE ARE THE CHAMPIONS MY FRIEND"
# p song_decoder("AWUBBWUBC") == "A B C"
# p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
# p song_decoder("WUBAWUBBWUBCWUB") == "A B C"






























=begin
15. Take a Ten Minute Walk
(https://www.codewars.com/kata/54da539698b8a2ad76000228/train/ruby)
6 kyu
You live in the city of Cartesia where all roads are laid out in a perfect grid. 
You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their 
phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). 
You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives
you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk,
that's standing still!).



# **Problem**
# =>	objective: given an array of directions, return true if the walk will take 10 minutes and you return to your same exact location

# =>	input: an array of directions

# =>  	output: boolean object true or false

# =>	rules:

# =>		explicit	-	never receive empty array, always receive valid letters

# =>		implicit	-

# =>	questions:

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - return false if the given array size is not exactly 10
  - initialize var 'south_count`, assign to count the number of 's'
  - etc 
  - etc
  - check if the north is in balance with the south, and west/east are in balance
  
  
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# def is_valid_walk(arr)
#   return false if arr.size != 10
  
#   south_count = arr.count("s")
#   north_count = arr.count("n")
#   east_count = arr.count("e")
#   west_count = arr.count("w")
  
#   south_count == north_count && east_count == west_count
# end

# p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
# p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
# p is_valid_walk(['w']) == false
# p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false











































=begin

16. Stop gninnipS My sdroW!
(https://www.codewars.com/kata/5264d2b162488dc400000001)
6 kyu
Write a function that takes in a string of one or more words, and returns the same string, 
but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. 
Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"


# **Problem**
# =>	objective: gien a string of one or more words, return the same string, first word normal, all other words reversed

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	returns the same string
                  - strings passsed in have only letters and spaces
                  - spaces included only when 5 or more words
# =>		implicit	- if given one word, return same word

# =>	questions: punctuation?

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize local var `words`, assign to array of words from the given string
  - initialize local var `char`, assign to array of all letters of given string
  - remove all letters from the given string by mutating
  - iterate over `words` with their indexes
    - if the size of the word is >= 5, reverse it and append it
    - otherwise, append it 
  - return the given string without extra spaces
  
# **Sub-Problems**

# **Code**

# **Test Cases**


=end

# def spinWords(str)
#   words = str.split
#   chars = str.chars
  
#   (0).upto(str.size) do |num|
#     str.delete!(chars[num])
#   end
  
#   words.map.with_index do |word, idx|
#     if word.size >= 5
#       str << "#{word.reverse} "
#     else
#       str << "#{word} "
#     end
#   end
  
#   str.strip!
# end

# a = "Hey fellow warriors"
# p a.object_id
# p spinWords(a) == "Hey wollef sroirraw"
# p a.object_id

# p spinWords("This is a test") == "This is a test" 
# p spinWords("This is another test") == "This is rehtona test"
# p spinWords('test') == 'test'






# def spinWords(str)
#   words = str.split
  
#   words.each do |word|
#     str.gsub!(word, word.reverse) if word.size >= 5
#   end
  
#   str
# end




# p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
# p spinWords("This is a test") == "This is a test" 
# p spinWords("This is another test") == "This is rehtona test"
# p spinWords('test') == 'test'





























=begin

17. Write Number in Expanded Form
(https://www.codewars.com/kata/5842df8ccbd22792a4000245)
6 kyu
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.


# **Problem**
# =>	objective: given an integer, return a string in expanded form

# =>	input: given an integer whole number, greater than 0 

# =>  output: string in expanded form

# =>	rules:

# =>		explicit	-	

# =>		implicit	- return a string where it looks like each digit is being added together with its whole value

# =>	questions:

# **Data Structure**

# **Edge Cases**

# **Implementation Notes**

# **Algorithm**
  - initialize local var `digits`, assign to array of the digits of the given int, reversed
  - initialize local var `numbers`, map digits, transform to num * (idx * 10)
  - 


# **Algorithm**
  - initialize local var `digits`, assign to array of the digits of the given int
  - initialize local var `size`, assign to number of digits in int
  - initialize local var `result`, assign to empty string
  - loop from 0 to (size - 1), parameter `n`
    - initialize local var `num`, assign to pop last num from `digits' turn to string
    - unshift `num` to `result` 
  - initialize local var `result`, empty string
  - iterate over `numbers` array, with index
    - convert num to string, 
    - append with '+' if idx is not last one 
    - append to `result`
    
# **Sub-Problems**

# **Code**

# **Test Cases**

=end

# require 'pry'

# def expanded_form(int)
  
#   digits = int.digits
  
#   numbers = digits.map.with_index do |num, idx|
#     idx == 0 ? num : (num * (10**idx))
#   end
  
#   result = ''
  
#   numbers.reverse.each_with_index do |num, idx|
#     next if num == 0
#     num = num.to_s
#     num << " + " if idx != numbers.size - 1
#     result << num 
#   end
  
#   result.chomp(" + ")
  
# end


# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'
# p expanded_form(90000)

# def expanded_form(int)
#   digits = int.digits
#   size = digits.size
#   numbers = []
  
#   0.upto(size - 1) do |n|
#     num = digits.shift
#     num *= (10*n) if n > 0
#     numbers << num
#   end
  
#   result = ''
  
#   numbers.each_with_index do |num, idx|
#     num = num.to_s
#     num <<" + " if idx != numbers.size - 1
#     result << num 
#   end
  
#   result
# end




















=begin
18. Persistent Bugger.
(https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/ruby)
6 kyu
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence,
which is the number of times you must multiply the digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number



# **Problem**
# =>	objective: given a number, return the number of times you must multiply its digits to get to a single digit

# =>	input: int

# =>  	output: int, representing how many times you multiplied until you got a single digit

# =>	rules:

# =>		explicit	-	will be given a positive parameter

# =>		implicit	- take number, split the digits, multiply the digits, you get a new number, its that new number that needs to be a single digit

# =>	questions:

# **Data Structure**
- looping and arrays

# **Edge Cases**
 - one digit number returns 0
 
 
# **Implementation Notes**

# **Algorithm**
  - initialize local var `digits`, assign to given int's digits in an array
  
  - return 0 if `digits` is only 1 element
  
  - initialize local var `counter`, assign to 1
  - initialize `new_num`, assign to the product of `digits` elements
  
  - loop 

    - if `new_num` product is a single digit
      - break 
    - otherwise, 
      - increment `counter`
      -  reassign `new_num` to the product of its elements
    
  
  -return counter
  
# **Sub-Problems**
- mult_dig_in_arr
- given an array of digits, return them all multiplied (reduce)

# **Code**

# **Test Cases**

=end

# def get_product_of_digits(num)
#   num.digits.reduce(1) {|product, num| product * num}
# end

# def persistence(int)
#   return 0 if int < 10
#   counter = 1
#   new_num = get_product_of_digits(int)
  
#   loop do 
#     if new_num < 10 
#       break
#     else
#       counter += 1
#       new_num = get_product_of_digits(new_num)
#     end
#   end
  
#   counter
  
# end

# p persistence(39) == 3
# p persistence(4) == 0
# p persistence(25) == 2
# p persistence(999) == 4





# def get_product_of_digits(num)
#   num.digits.reduce(1) {|product, num| product * num}
# end

# def persistence(int)
  
#   return 0 if int < 10
#   counter = 1
#   new_num = get_product_of_digits(int)
  
#   while new_num >= 10 
#     counter += 1
#     new_num = get_product_of_digits(new_num)
#   end
  
#   counter
  
# end



# p persistence(39) == 3
# p persistence(4) == 0
# p persistence(25) == 2
# p persistence(999) == 4


































=begin
19. Title Case
(https://www.codewars.com/kata/5202ef17a402dd033c000009)
6 kyu
A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) 
or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). 
The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string --
it should behave in the same way even if the case of the minor word string is changed.



# **Problem**
# =>	objective: given a title (string) and an option second string (minor words), convert the given title into title case, and return it. If no second string is given, each word 
in the title should be capitalized. If it is given, each word in the second string should be lower case, except if it is the first word. The first word of the title is always capitalized. Completely
ignore the case of the minor_words string. 

# =>	input: title and optional second string with minor words

# =>  	output: the title in title case, with requirements depending on the secodn string. First word is capitalized no matter what

# =>	rules:

# =>		explicit	-	title and second args given in words separated by space

# =>		implicit	-

# =>	questions: empty string? invalid input? 

# **Data Structure**
- array for both title and second string

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
  - initiate local var `exceptions`, assign to `minor_words`, split at the spaces, transforming all words to lower case
  - if `exceptions` is empty, return `title` all words split, capitalized, then joined togeter with spaces  
  - initialize local var `title_words_arr`, assign to `title` words separated at spaces
  
  - initialize local var `result_words_arr`, assign to iteration over `title_words_arr` with indexes
    - if the index is 0
      - capitalize the word
    - if the word exists in the `exceptions` array, 
      - lowercase
    - otherwise, 
      - capitallized
  - join `result_words_arr` with spaces

=end

# def title_case(title, minor_words = '')
#   exceptions = minor_words.split.map(&:downcase)
  
#   if exceptions.empty? 
#     return title.split.map(&:capitalize).join(" ")
#   end
  
#   title_words_arr = title.split.map(&:downcase)
  
#   result_words_arr = title_words_arr.map.with_index do |word, idx|
#     if idx == 0
#       word.capitalize
#     elsif exceptions.include?(word)
#       word.downcase
#     else
#       word.capitalize
#     end
#   end
  
#   result_words_arr.join(" ")
# end


# p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
# p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
# p title_case('the quick brown fox') == 'The Quick Brown Fox'

# def regular_title(title)
#   title.split.map(&:capitalize).join(" ")
# end


# def title_case(title, minor_words = '')
#   exceptions = minor_words.split.map(&:downcase)
  
# return regular_title(title) if exceptions.empty? 

#   title_words_arr = title.split.map(&:downcase)
  
#   result_words_arr = title_words_arr.map.with_index do |word, idx|
    
#     if idx == 0
#       word.capitalize
#     elsif exceptions.include?(word)
#       word.downcase
#     else
#       word.capitalize
#     end
#   end
  
#   result_words_arr.join(" ")
# end


# p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
# p title_case('THE WIND IN THE WILLOWS', 'The in') == 'The Wind in the Willows'
# p title_case('the quick brown fox') == 'The Quick Brown Fox'
# p title_case('') == ''






































=begin
20. Count and Group Character Occurrences in a String
(https://www.codewars.com/kata/543e8390386034b63b001f31)
6 kyu
Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.


# **Problem**
# =>	objective: given a string, count how many times each letter appears (irrespective of upper or lower case) ignoring spaces and special chars, store in a hash where keys are numbers and 
values are arrays of letters (strings)

# =>	input: string

# =>  	output: hash wtih counts as keys and arrays with letters for values

# =>	rules:

# =>		explicit	-	count uppercase as lowercase, ignore spaces and special char

# =>		implicit	-

# =>	questions:

# **Data Structure**
- array
- hash

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- initialize local var `cleaned_up_word`, assign to array with all lowecase and no specail char or spaces from the string
- initialize local var `uniq_letters`, assign to `cleaned_up_word` with only uniq letters
- initialize local var `result_hash`, assign to empty hash 
- iterate over `uniq_letters`
  - initialize local var `letter_count`, assign to  how many times that letter occurs in the word
  - if the key `letter_count` exists already, append letter to the value in `result_hash`
  - otherwise, create a new key (`letter_count`) with value `letter` in an array
- return `result_hash`


=end

# def get_char_count(string)
#   cleaned_up_word = string.chars.map(&:downcase).select { |char| char =~ /[a-z0-9]/ } 
#   uniq_letters = cleaned_up_word.uniq 
#   result_hash = {}
  
#   uniq_letters.each do |letter|
#     letter_count = cleaned_up_word.count(letter)
#     if result_hash.key?(letter_count)
#       result_hash[letter_count] << letter
#     else
#       result_hash[letter_count] = [letter]
#     end
#   end
  
#   result_hash = result_hash.sort {|a, b| b <=> a}.to_h
#   result_hash.each { |key, value| value.sort! }
#   result_hash
# end

# p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
# p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}



















=begin
21. Find the Mine!
(https://www.codewars.com/kata/528d9adf0e03778b9e00067e/train/ruby)
6 kyu
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer 1 in the 2D array. 
Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array (Tuple<int, int> in C#) where the first element is the row index,
and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.

# **Problem**
# =>	objective: given an nxn grid (in array form), return the row and column index that has a 1

# =>	input: array, square(nested)

# =>  	output: array (2 elements)

# =>	rules:

# =>		explicit	-	mine is 1, all others are zero
                  - given 2d array, rows and columns
                  - return an array, first element is row index, second is column index of bomb (1)
                  - all arrays passed in will be sqaure, and only one bomb in array
          
# =>		implicit	- rows and columns start with 0 index
                  - size of the given array is the number of rows
                  - size of the first element of the given array is the number of columns
                  

# =>	questions:

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**
- .find_index {|row| row.include?(1) }

# **Algorithm**
  - initialize local var `row`, assign to the row (element) in the given `grid` that includes 1
  - initialzie local var `row_with_bomb`, assign to the row with the index `row`
  - initialize local var `column`, assign to the index that has the 1
  - return an array with `row` as first element and `column` as second 

=end

# def mineLocation(grid)
#   row = grid.find_index {|row| row.include?(1) }
#   row_with_bomb = grid[row]
#   column = row_with_bomb.find_index(1)
#   [row, column]
# end

# p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
# p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
# p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
# p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
# p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
# p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]








# def mineLocation(grid)
#   row = grid.find_index {|row| row.include?(1) }
#   column = grid[row].find_index(1)
#   [row, column]
# end

# p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
# p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
# p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
# p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
# p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
# p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

































=begin
22. Scramblies
(https://www.codewars.com/kata/55c04b4cc56a697bb0000048/train/ruby)
5 kyu
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.


# **Problem**
# =>	objective: given two strings, return boolean true if a portion of the first string can spell the complete second string

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	need a portion of the first args chars, to match str 2 , str 2 is the goal, str2 is what you want to spell
                  - only lower case letters given, no punctuation or digits

# =>		implicit	-

# =>	questions: needs all the letters? not just one
                can i mutate the given string?

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**
- .delete!('t') will return the word without all 't'
- .delete_at(1) will return removed letter 
- find_index returns nil if nothing found

# **Algorithm**
- intialize local var `letters_needed`, chars of the second arg
- initialize local var `letters_available`, chars of the first arg
- iterate over `letters_needed`
  - find the index of the letter in the `letters_available` array,
  - if no index, return false fromthe method
  - if there is an index, delete the letter at that index
- return true from the method if it makes it through the iteration

=end


# def scramble(str1, str2)
#   letters_needed = str2.chars
#   letters_available = str1.chars
  
#   letters_needed.each do |char|
#     idx_of_letter = letters_available.find_index(char)
#     idx_of_letter.nil? ? (return false) : letters_available.delete_at(idx_of_letter)
#   end
  
#   true
# end


# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true




# def scramble(str1, str2)
#   letters_needed = str2.chars
#   letters_available = str1.chars.select { |char| letters_needed.include?(char) }
  
#   enough_of_each = (letters_available.size >= letters_needed.size) 
#   all_letters = letters_needed.all? { |char| letters_available.include?(char)}
#   enough_of_each && all_letters ? true : false

# end


# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true































=begin

23. Longest alphabetical substring
(https://www.codewars.com/kata/5a7f58c00025e917f30000f1)
6 kyu
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.


# **Problem**
# =>	objective: given a string, return the longest substring that maintains alphabetical order, can be multiple same letters 

# =>	input: string

# =>  	output: substring of the given string

# =>	rules:

# =>		explicit	-	return the longest alphabetical substring, the letters in the substring must be in alphabetical order
                  - only lowercase letters, always at least one letter long
                  - if there are multiple solutions, choose the one that appears first
                  

# =>		implicit	- if one letter is given, return that letter

# =>	questions: 

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- high level
- get the substring from each letter that maintains alphabetical order, add all to any array, return the longest one

low level
- initialize local var `chars`, assign to characters of given string
- initialize local var `arr_of_alpha_substrings`, assign to empty array
- iterate over chars with indexes
  - initialize local var`substring`,  assign to extract longest alphabetical substring that starts from that char, send substring startin from char to the end of the word to a helper method
  - append `substring` to `arr_of_alpha_substrings`
- find max_by size in `arr_of_alpha_substrings`
- `longest_substring_index`, find index of substring with ^^ max
- return substring at ^^ `index`


sub problem 
- extract longest alphabetical substring that starts from that char
- given a substring, return the longest alphabetical substring
  - initialize local var `result`, assign to empty string
  - iterate over chars of given string with indexes
    - if first, append to `result`
    - else , 
      - append to `result` if it comes after the last letter in `result`
      - otherwise, return `result`
- return `result`

=end

# def alpha_substring(str)
#   result = ''
#   str.chars.each_with_index do |char, idx|
#     if idx == 0
#       result << char
#     else
#       char >= result.chars.last ? (result << char) : (return result)
#     end
#   end
#   result
# end

# def longest(str)
#   chars = str.chars
#   arr_of_alpha_substrings = []

#   chars.each_with_index do |char, idx|
#     substring = alpha_substring(str[idx..-1]) 
#     arr_of_alpha_substrings << substring
#   end


#   max_length = arr_of_alpha_substrings.max_by { |substring| substring.size }

# end



# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'



#algorithm
# get all indexes where this char is < last char
# =>  - 


# def longest(str)

# end


# p longest('nab') #== 'ab'
# p longest('asd') #== 'as'
# p longest('abcdeapbcdef') #== 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') #== 'aaaabbbbctt'
# # p longest('asdfbyfgiklag') =='fgikl'
# # p longest('z') == 'z'
# # p longest('zyba') == 'z'































=begin

24. The Hashtag Generator
(https://www.codewars.com/kata/52449b062fb80683ec000024)
5 kyu
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false


# **Problem**
# =>	objective: given a string, return false or a hashtag

# =>	input: string

# =>  	output: string, starting with #, all words capitalized, or false

# =>	rules:

# =>		explicit	-	all words must have first letter capitalized, join them together, , capitalize them all, even if they are given lowercase
                  - if the input is empty, return false
                  - if the result, after getting rid of the spaces, is empty or > 140 char, return false

# =>		implicit	- " " * 200 returns false because the result is empty, '' returns false because the input is empty

# =>	questions:

# **Data Structure**
 - array

# **Edge Cases**
- given empty or given all spaces

# **Implementation Notes**


# **Algorithm**
- if the given input is an empty string, return false
- initialize local var `words`, assign to the string given, separated at the spaces, with spaces removed, all words capitalized, joined with no spaces
- initialize local var `result`, assign to "#"
- append `words` to `result`
- if the `result` is just "#" OR the `result` size > 140, return false


=end


# def generateHashtag(str)
#   words = str.split(" ").map(&:capitalize).join
#   result = "#" + words
#   (result == "#") || (result.size > 140) ? (return false) : result
# end

# p generateHashtag("")                     == false
# p generateHashtag(" " * 200)              == false
# p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
# p generateHashtag("Codewars")             == "#Codewars"
# p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
# p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
# p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
# p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
# p generateHashtag("a" * 139) == "#A" + "a" * 138
# p generateHashtag("a" * 140) == false





































=begin
25. Pete, the baker
(https://www.codewars.com/kata/525c65e51bf619685c000059/train/ruby)
5 kyu
Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. 
Can you help him to find out, how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer).
For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). 
Ingredients that are not present in the objects, can be considered as 0.

Examples:

// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
// must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}); 



# **Problem**
# =>	objective: given two hashes, recipe and ingredients avail, return an integer representing how many cakes can be baked with the ingredient available

# =>	input: 2 hashes

# =>  	output: 1 integer

# =>	rules:

# =>		explicit	-	first hash is recipe, or needed ingredients/amounts, second is available ingredients 
                  - return max number of cakes that can be made with the given ingredients
                  - ingredients not present in ingredients are 0

# =>		implicit	- return the number of max cakes that can be made, which will be the minimum of the ingredients available, so if we have eggs for 3 cakes, flour for 2 cakes, we can make 2 cakes

# =>	questions:

# **Data Structure**
- array to hold total possible cakes per ingredient

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- initialize local var `total_cakes_possible` , assign to result from iterating over the `recipe` given argument, first one
  - initalize local var `amount_avail`, assign to the corresponding amount in the `available` (second given argument)
  - if `amount_avail` is nil
    - 0
  - else, divide `amount_avail` by the amount being iterated over, aka the value from the current iteration
- return the min from `total_cakes_possible`


=end


# def cakes(recipe, available_ingredients)
#   total_cakes_possible = []
  
#   recipe.map do |ingred, amount|
#     amount_avail = available_ingredients[ingred]
#     amount_avail.nil? ? (return 0) : (total_cakes_possible << amount_avail / amount)
#   end
  
#   total_cakes_possible.min
# end


# p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
# p cakes({"eggs"=>4, "flour"=>400},{}) == 0
# p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1
































=begin
26. Mean Square Error
(https://www.codewars.com/kata/51edd51599a189fe7f000015/train/ruby)
Complete the function that

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2



# **Problem**
# =>	objective: given two array, find the difference between corresponding elements, take the absolute value, square it, then get the avg of the squared differences and return it

# =>	input: two arrays of equal length

# =>  	output: an integer

# =>	rules:

# =>		explicit	-	two integer array given will be of equal length/szie
                  - compares values at the same indexes in both arrays
                  - squares abs value difference 
                  - returns avg of those differences

# =>		implicit	- need to find teh difference, THEN take the abs value

# =>	questions:

# **Data Structure**
- arrays, 

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- initialize local var `squared_differences`, assign to iterating over the first given arr `arr1`, transformation, with indexes
  - initialize local var `difference`, assign to the element at this idx minus the element at this idx in the `arr2`
  - initialize local var `abs_val_diff_squared`, assign to taking the abs value of `difference` and squaring it 
- initialize local var `sum`, assign to sum of `squared_differences`
- initailzie local var `remainder`, assign it to `sum` div mod by the size of `squared_differences`
  - if the `remainder` is 0
    - divide the `sum` by the size of `squared_differences`
 - otherwise
    - divide the `sum` by the size of `squared_differences` as a float

=end

# def solution(arr1, arr2)
  
#   squared_differences = arr1.map.with_index do |int, idx|
#     (int - arr2[idx]) ** 2
#   end
  
#   sum = squared_differences.sum
#   remainder = sum % squared_differences.size
  
#   remainder == 0 ? (sum / squared_differences.size)
#     : (sum / squared_differences.size.to_f)
  
# end

# p solution([1, 2, 3], [4, 5, 6])              == 9
# p solution([10, 20, 10, 2], [10, 25, 5, -2])  == 16.5
# p solution([-1, 0], [0, -1])                  == 1




































=begin
27. Exponent method
(https://www.codewars.com/kata/5251f63bdc71af49250002d8)
5 kyu
Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

Examples:



# **Problem**
# =>	objective: 

# =>	input: given two integers

# =>  	output: integer or nil if the second argument is negaitve

# =>	rules:

# =>		explicit	-	given two integers, raise the first argument to the power of the second
                  - can't use ** operator
                  - return nil if the second argument is negative

# =>		implicit	- 2 ** 3 == 2 * 2 * 2
                  - 4 ** 5 = 4 * 4 * 4 * 4 * 4

# =>	questions:

# **Data Structure**
- array to store the number of first args 

# **Edge Cases**


# **Implementation Notes**
- times method

# **Algorithm**
- initailize local var `arr_of_bases`, assign it to a new array with 'exponent' elements, and all elements are `base`
- return the result of multiplying all the elements of `arr_of_bases`


=end

# def power(base, exponent)
#   return nil if exponent < 0
#   arr_of_bases = Array.new(exponent, base)
#   arr_of_bases.reduce(1) {|product, base| base * product }
# end

# p power(2, 3) == 8
# p power(10, 0) == 1
# p power(-5, 3) == -125
# p power(-4, 2) == 16
# p power(10, 0) == 1
# p power(2, 3) == 8
# p power(3, 2) == 9
# p power(-5, 3) == -125
# p power(-4, 2) == 16
# p power(8, -2) == nil







































=begin
28. Where my anagrams at?
(https://www.codewars.com/kata/523a86aa4230ebb5420001e1)
5 kyu
What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. 
You should return an array of all the anagrams or an empty array if there are none. For example:

# **Problem**
# =>	objective: given a string (word) and an array (list of words), return an array with all the words from the array that are anagrams of the given string (first arg)

# =>	input: a word and a list of words

# =>  	output: an array (possibly empty) of anagrams

# =>	rules:

# =>		explicit	-	anagrams contain the same letters
                  - given a word and an array of words, return an array
                  - return an array of all the anagrams, words that have the same letters as the first arg, or an empty array if there are none

# =>		implicit	- can i be given anything invalid? empty arrays? empty strings? 

# =>	questions:

# **Data Structure**
- array

# **Edge Cases**
- no matches returns an empty array

# **Implementation Notes**


# **Algorithm**
- iterate over the given `list_of_words` using selection
  - selection criteria will be if the element being iterated over, sorted, matches the given `word`, sorted
  - if yes, add it to the array, if not, don't add it


=end

# def anagrams(word, list_of_words)
#   word_sorted = word.chars.sort
#   list_of_words.select { |element| element.chars.sort == word_sorted }
  
# end

# p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
# p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
# p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []











































=begin
23. Longest alphabetical substring
(https://www.codewars.com/kata/5a7f58c00025e917f30000f1)
6 kyu
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	find the LONGEST ALPHABETICAL substring in the given string
                  - input will only be lowercase letters, always one char long
                  - if many solutions, return the first one

# =>		implicit	-

# =>	questions:

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**
- each with object? 

# **Algorithm**
- initialize local var `chars`, assign to cahrs of given string
- initialize lcoal var `substrings`, assign to empty array
- initailize local var `substrings_starts`iterate over `chars` with indexes, transformation
  - if its the last index, 0 
  - elsif this `char` is greater than the next, 1
  - otherwise, 0
- initialize local var `num_of_words`, assign to count of 1s in `substring_starts` + 1
- `num_of_words` times, 
  - initialize local var `index` find the index of 1 in `substring_starts`
  - if there is no 1, or if `index` is nil, append 0 to end of `substring_starts` to `substrings`
  - remove the slice from 0 to that `index`, append to substrings
  
- we have an array of substrings, return the max_by length


=end

# def longest(str)
#   chars = str.chars
#   substrings = []
  
#   substring_starts = chars.map.with_index do |char, idx|
    
#     if idx == (chars.size - 1)
#       0
#     elsif char > chars[idx + 1]
#       1
#     else
#       0
#     end
  
#   end
  
#   num_of_words = substring_starts.count(1) + 1
#   num_of_words.times do |num|
#     index = substring_starts.find_index(1)
#     if index.nil? 
#       (substrings << chars)
#     else 
#       (substrings << chars.slice!(0..index))
#       substring_starts.slice!(0..index)
#     end
#   end
  
#   substrings.max_by { |substring| substring.size }.join
  
# end

# p longest('nab')  == 'ab'
# p longest('naba') == 'ab'
# p longest('asd') == 'as'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'



# def longest(str)
#   str.chars.slice_when {|a, b| a > b}.max_by(&:size).join
# end


# p longest('nab')  #== 'ab'
# p longest('naba') #== 'ab'
# # p longest('asd') == 'as'
# # p longest('abcdeapbcdef') == 'abcde'
# # p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# # p longest('asdfbyfgiklag') =='fgikl'
# # p longest('z') == 'z'
# # p longest('zyba') == 'z'






























=begin
29. Split Strings
(https://www.codewars.com/kata/515de9ae9dcfc28eb6000001)
6 kyu
Complete the solution so that it splits the string into pairs of two characters. 
If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').



# **Problem**
# =>	objective: given a string, return an array of pairs of characters, supplementing with an underscore if there are an odd number

# =>	input: string

# =>  	output: array of strings, pairs of characters, possibly 

# =>	rules:

# =>		explicit	-	given a string, split the string every two characters, 
                  - if it has an odd number of char, replace the last one with an underscore
                  - return an array of the pairs

# =>		implicit	- if you get an empty string, return an empty array

# =>	questions:

# **Data Structure**
- array

# **Edge Cases**


# **Implementation Notes**
- .scan(/(..)/ ).flatten 
- dont forget last char

# **Algorithm**
- initailize local var `result`, assign to an array that is returned from scanning the given string for 2 character pairs
- if teh given `str` is odd, append one more pair to `result`, the last char from `str` + '_'
- return `result`
=end


# def solution(str)
#   result = str.scan(/(..)/ ).flatten
#   result << (str[-1] + "_") if str.size.odd?
#   result
# end


# p solution('abc') == ['ab', 'c_']
# p solution('abcdef') == ['ab', 'cd', 'ef']
# p solution("abcdef") == ["ab", "cd", "ef"]
# p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
# p solution("") == []

































=begin
30. Anagram difference
(https://www.codewars.com/kata/5b1b27c8f60e99a467000041)
6 kyu
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given two words, how many letters need to be removed (from each word) in order to make them anagrams (contain the same letters)
                  - all inputs are lowercase
                  - 

# =>		implicit	- difference is total letters of the two words, minus the final word you end up with 
                  - in the end, each word needs to contain only the letters that the other words has 

# =>	questions:

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- initialize local var `chars1`, assign to arrray of chars from the first arg
- initialize local var `chars2`, assign to arrray of chars from the second arg
- initialize local var `final_word`, assign to empty string
- iterate over `chars1`, 
  - if the char is in `chars2`, append it to the `final_word` str
- initailize local var `total_letters`, assign to size of both args
- return `total_letters` minus `final_word`'s size


=end

# def anagram_difference(str1, str2)
#   chars1 = str1.chars
#   chars2 = str2.chars
#   final_word1 = ''
#   final_word2 = ''
  
#   chars1.each do |char|
#     final_word1 << char if chars2.include?(char)
#   end
  
#   chars2.each do |char|
#     final_word2 << char if chars1.include?(char)
#   end
  
#   final_word = [final_word1, final_word2].min_by(&:length)
#   total_letters = chars1.size + chars2.size
#   total_letters - (final_word.size * 2)
# end

# p anagram_difference('codewars', 'hackerrank') == 10
# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('hackerrank', 'codewars') == 10





























=begin
31. Anagram Detection
(https://www.codewars.com/kata/529eef7a9194e0cbc1000255)
7 kyu
An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"

"Buckethead" is an anagram of "DeathCubeK"

# **Problem**
# =>	objective: given two string arguments, return boolean object true or false depending if the two arguments are anagrams

# =>	input: two strings

# =>  	output: boolean true or false

# =>	rules:

# =>		explicit	-	checking for anagrams
                  - anagrams are case insensitive, just make everything lowercase
                  - return true if they are anagrams, two args, false if not

# =>		implicit	- empty strings? only one string? 

# =>	questions:

# **Data Structure**
- 

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- conditional statment
  -  does the first string, lowercase and sorted match the second argument, lowercase and sorted

=end


# def is_anagram(str1, str2)
#   str1.downcase.chars.sort == str2.downcase.chars.sort
# end

# p is_anagram('Creative', 'Reactive') == true
# p is_anagram("foefet", "toffee") == true
# p is_anagram("Buckethead", "DeathCubeK") == true
# p is_anagram("Twoo", "WooT") == true
# p is_anagram("dumble", "bumble") == false
# p is_anagram("ound", "round") == false
# p is_anagram("apple", "pale") == false



























=begin
32. Highest Scoring Word
(https://www.codewars.com/kata/57eb8fcdf670e99d9b000272)
6 kyu
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

# **Problem**
# =>	objective: given a string of words, return the word with the highest score (scores coming from letters position in alphabet, a= 1)

# =>	input: string of words

# =>  	output: string of one word, w highest score

# =>	rules:

# =>		explicit	-	given string of words, find highest scoring word
                  - each letter is position in alphabet
                  - return highest scoring word as a stirng
                  - if two words score the same, return the one that appears first
                  - all letters lowercase, all inputs valid

# =>		implicit	-

# =>	questions:

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**
- .ord - 96

# **Algorithm**
- initailize local var `words`, assign to an array of the given string's words
- initailize local var `scores`, assign to return value from iteration over `words` (transform)
  - break `word` into characters, `#reduce` to get a sum of the value of each letter
- initialize local var `max_score`, assign to max of `scores` array
- initialize local var `index`, assign to finding the index of the max score in `scores`
- use `index` to return the word in `words` at that particular index

=end


# def high(str)
#   words = str.split
#   scores = words.map do |word|
#     word.chars.reduce(0) { |sum, letter| sum + (letter.ord - 96) }
#   end
#   max_score = scores.max
#   index = scores.find_index(max_score)
#   words[index]
# end


# p high('man i need a taxi up to ubud') == 'taxi'
# p high('what time are we climbing up the volcano') == 'volcano'
# p high('take me to semynak') == 'semynak'
# p high('aaa b') == 'aaa'








# def high(str)
#   words = str.split.max_by {|word| word.chars.reduce(0) { |sum, letter| sum + (letter.ord - 96) } }
# end


# p high('man i need a taxi up to ubud') == 'taxi'
# p high('what time are we climbing up the volcano') == 'volcano'
# p high('take me to semynak') == 'semynak'
# p high('aaa b') == 'aaa'































=begin
33. Replace With Alphabet Position
(https://www.codewars.com/kata/546f922b54af40e1e90001da)
6 kyu
In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

# **Problem**
# =>	objective: given a string, return only the letter's position in the alphabet, with a space in between 

# =>	input: string

# =>  	output: string of numbers 

# =>	rules:

# =>		explicit	-	given a string, replace every letter with its position in the alphabet
                  - anything non alphabetic, ignore it
                  - a= 1, b = 2

# =>		implicit	- use lowercase and .ord - 96, that is how you'll get the right position

# =>	questions: case?

# **Data Structure**
- array

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- initialize local var `letters_only`, assign to the given string's chars, with only letters (iterate and pick out the letters) and LOWERCASE
- initialize local var `order_nums`, assign to return of iteration (transformation) over `letters_only`
  - return the position of the `letter`
- join with spaces `order_nums`


=end


# def alphabet_position(str)
#   letters_only = str.downcase.chars.select { |letter| letter =~ /[a-z]/ }
#   order_nums = letters_only.map { |letter| letter.ord - 96 }
#   order_nums.join(" ")
# end

# p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# p alphabet_position("-.-'") == ""











































=begin
34. Sherlock on pockets
(https://www.codewars.com/kata/53bb1201392478fefc000746)
6 kyu
Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

 

Write amethod which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

# **Problem**
# =>	objective: given `pockets` variable and a list of allowed items (nums), return an array of people in the `pockets` hash who have any items that are not on the allowed list

# =>	input: hash, array 

# =>  	output: array of people or nil

# =>	rules:

# =>		explicit	-	suspect is a person who has something not allowed in the pocket? what is allowed?
                  - allowed items are an array of numebrs 
                  - pocket contents are hash entries, keys are people, value is an array of nums
                  - pockets are fixed in the `pocket` variable
                  - if no suspect or no pockets, return nil
                  

# =>		implicit	- arguments are the fixed `pockets` var depicting what everyone has in their pockets. 
                  - second arg is a list of allowed items
                  - anyone (jane, tom, or bob) who has something in their pocket (aka their value) should be returned in an array (the key value (a symbol) should be returned in the array)
                  - if you go to return an empty array, return nil

# =>	questions:

# **Data Structure**
- array 

# **Edge Cases**
- empty pocket, or nothing found returns nil

# **Implementation Notes**


# **Algorithm**
- initialize local var `suspects`, assign to return value after iterate over the `pockets` argument (selection)
  - iterate over the `person` ' s `items`
    - are all of the `items` included in the given `allowed_items` array, return true/false
    - negate this because we are looking for the person who does NOT have all their items in the `allowed_items` array
- if `suspects` is empty, return nil, else return `suspects`





=end


# def find_suspects(pockets, allowed_items)
#   suspects = pockets.select do |person, items|
#     if items.nil?
#       false
#       next
#     end
    
#     !items.all?{|item| allowed_items.include?(item) }
#   end.keys
  
#   suspects.empty? ? nil : suspects
  
# end



# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# }

# p find_suspects(pockets, [1, 2]) == [:tom, :jane]
# p find_suspects(pockets, [1, 7, 5, 2]) == nil
# p find_suspects(pockets, []) == [:bob, :tom, :jane]
# p find_suspects(pockets, [7]) == [:bob, :tom]









# def find_suspects(pockets, allowed_items)
#   excess_items = pockets.values.flatten - allowed_items
#   people = pockets.keys
#   suspects = people.select do |person|
#     pockets[person].any?{ |item| excess_items.include?(item) }
#   end
  
#     suspects.empty? ? nil : suspects
  
# end



# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# }

# p find_suspects(pockets, [1, 2]) == [:tom, :jane]
# p find_suspects(pockets, [1, 7, 5, 2]) == nil
# p find_suspects(pockets, []) == [:bob, :tom, :jane]
# p find_suspects(pockets, [7]) == [:bob, :tom]











































=begin

35. Mexican Wave
(https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/ruby)
6 kyu

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. 
You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
Rules
 	1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	turn string into a mexican waves
                  - given a string, return an array, with the string's # of letters # of elements
                  - input will always be lowercase but may be empty
                  - each element in the returned array will have the character at the index the element sits capitalized
                  - if the character is whitespace, pass over it

# =>		implicit	- empty string returns empty array

# =>	questions: punctuation? dealt with the same as whitespace

# **Data Structure**
- array

# **Edge Cases**
- empty array or string with whitespcaes

# **Implementation Notes**


# **Algorithm**
- initailize local var `result`, assign to empty array
- initialize local var `chars`, assign to characters of given `string`
- separate the given `str` into its chars, iterate over the characters, with their indexes
  - for each `char`, if the `char` is a letter
    - capitalize `chars` at the same index, destructively
    - join `chars`, append it to the result array
    - reassign `chars` to an array with the given `string`'s characters
- return the result array 


=end

# def wave(str)
#   result = []
#   chars = str.chars
  
#   str.each_char.with_index do |char, index|
    
#     if char =~ /[a-z]/
#       chars[index].upcase!
#       result << chars.join
#       chars = str.chars
#     end
  
#   end
  
#   result
# end

# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

  
  
  
  
  
  
  
  
  
  
  
  
  
=begin
36. Delete a Digit
(https://www.codewars.com/kata/5894318275f2c75695000146/train/ruby)
6 kyu
Task
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer


# **Problem**
# =>	objective: given a number, greater than or equal to 10 less than 1mm, return the highest num you can get by deleting one num

# =>	input: int

# =>  	output: int

# =>	rules:

# =>		explicit	-	given an integer
                  - find the max number you can get by deleting one num

# =>		implicit	- 

# =>	questions:

# **Data Structure**
- array of all possible substrings that come from deleting one num

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- initialize local var `digits`, assign to digits of given `int`, in order 
- initialize local var `digits_as_strings`, assign to array of the digits as strings from given `int`
- initialize local var `possible_outcomes`, assign to empty array
- iterate over `digits_as_strings` with indexes
  -  delete_at this `index` in `digits`, append `digits to `possible_outcomes`
  - reassign `digits` to digits of given `int`
- reassign `possible_outcomes` to a transformed version,  
  - joining and converting each element to an integer
- get the max of `possible_outcomes`



=end
# require 'pry'

# def delete_digit(int)
#   digits = int.digits.reverse
#   digits_as_strings = int.digits.map(&:to_s).reverse
#   possible_outcomes = []

#   digits_as_strings.each_with_index do |dig, idx|
    
#     digits.delete_at(idx)
#     possible_outcomes << digits
#     digits = int.digits.reverse
#   end
  
#   possible_outcomes.map! { |array| array.join.to_i}.max
  
# end

# p delete_digit(152) == 52
# p delete_digit(1001) == 101
# p delete_digit(10) == 1























=begin
37. Multiples of 3 or 5
(https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby)
6 kyu
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

# **Problem**
# =>	objective: given an integer, return an integer, the sum of all the numbers below the given number that are multiples of 3 or 5

# =>	input: integer

# =>  	output:integer, that is the sum of all the multiples of 3 / 5 below the number given 

# =>	rules:

# =>		explicit	-	given an integer, return the sums of the multiples of 3 or 5 below the given number
                  - if a number is a multiple of 3 or 5, count it only once
                  - 

# =>		implicit	-

# =>	questions: if given a negative number? float? what if there are no multiples? return 0

# **Data Structure**
- array

# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
  - initialize local var `all_nums`, that lists all the numbers between 1 and the given `int`
  - initialize local var `multiples`, assign to result from iterate over `all_nums` (selection) that only keeps the `num`s that are multiples of 5 or 3
  - return sum of `multiples`




=end

# def solution(int)
#   all_nums = (1...int).to_a
#   multiples = all_nums.select { |num| (num % 3 == 0) || (num % 5 == 0)}
#   multiples.sum
# end

# p solution(10) == 23
# p solution(20) == 78
# p solution(200) == 9168
# p solution(2) == 0


















=begin
38. String transformer
(https://www.codewars.com/kata/5878520d52628a092f0002d0/train/ruby)
6 kyu
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:


You may assume the input only contain English alphabet and spaces.

# **Problem**
# =>	objective: given a string, (only english alphabet and spaces), return a string where the words are reversed, and every character's case is reversed

# =>	input: 

# =>  output:

# =>	rules:

# =>		explicit	-	given a string, change the case of every character
                  -  reverse the order of the words
                  - be careful of multiple spaces or leading/trailing spaces, handle this, maintaining the spaces

# =>		implicit	-

# =>	questions:

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**


# **Algorithm**
- initialize local var `reverse_case`, assign to iterating over chars of given `str`, reversing the cases, and joining the string back together
- initialize local var `reversed_words`, assign to an array of the words from the string, reversed
- initialize local var `spaces_count`, assign to the number of spaces in the string
- initialize local var `spaces_indexes`, assign to array of the indexes of `str` that there are spcaes, transformation then #compact
- join `reversed_words` with no spaces `reversed_words_joined`
- `spaces_count` times, insert a space at the popped index from `spaces_index`
- return reversed_words_joined


- split `reverse_case` at the spaces, remove the spaces, reverse the order of the words, join the words together with a space and return it

-somehow, end up with an array of the words and the spaces 
=end

# def string_transformer(str)
#   reverse_case = str.chars.map { |char| char.upcase == char ? char.downcase : char.upcase}.join
#   reversed_words = reverse_case.split.reject(&:empty?).reverse
#   spaces_count = str.count(" ")
#   spaces_index = str.chars.map.with_index { |char, idx| idx if char == " " }.compact  
#   reversed_words_joined = reversed_words.join.chars
#   spaces_count.times do |num|
#     reversed_words_joined.insert(spaces_index.pop, " ")
#   end
#   reversed_words_joined
# end

# p string_transformer("Example Input") #== "iNPUT eXAMPLE"

# p string_transformer("You Know When  THAT  Hotline Bling") #== "bLING hOTLINE  that  wHEN kNOW yOU"












=begin


# **Algorithm**
- initialize local var `reverse_case`, assign to iterating over chars of given `str`, reversing the cases, and joining the string back together
- initialize local var `words_and_spaces_arr`, assign to empty array
- initialize local var `current_word`, assign to empty string
- iterate over the `reverse_case` characters with indexes
  - if `char` is the last index, append `current_word` to `words_and_spaces_arr`
  - if `char` is a letter, append to `current_word`
  - if `char` is a space, append the `current_word` to `words_and_spaces_arr`
    - clear `current_word`
    - append a space to `words_and_spaces`
-somehow, end up with an array of the words and the spaces , reverse it and join it
=end


# require 'pry'

# def string_transformer(str)
#   reverse_case = str.chars.map { |char| char.upcase == char ? char.downcase : char.upcase}.join
#   words_and_spaces_arr = []
#   current_word = ''
#   reverse_case.chars.each_with_index do |char, idx|
  
#     if (idx == reverse_case.length - 1) && (char =~ /[a-zA-Z]/)
#       current_word << char
#       words_and_spaces_arr << current_word
#     elsif (idx == reverse_case.length - 1) && (char == " ")
#       words_and_spaces_arr << " "
#     elsif char =~ /[a-zA-Z]/
#       current_word << char
#     else
#       words_and_spaces_arr << current_word
#       current_word = ''
#       words_and_spaces_arr << " "
#     end
#     binding.pry
#   end
#   words_and_spaces_arr.reverse.join
# end

# # p string_transformer("Example Input") == "iNPUT eXAMPLE"

# # p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"

# p string_transformer(" You Know When  THAT  Hotline Bling") == " bLING hOTLINE  that  wHEN kNOW yOU"














# def string_transformer(str)
#   reverse_case = str.chars.map { |char| char.upcase == char ? char.downcase : char.upcase}.join
#   reversed_words = reverse_case.split.reject(&:empty?).reverse
#   spaces_count = str.count(" ")
#   words_count = reversed_words.size
#   words_and_spaces_arr = 0
#   spaces_index = str.chars.map.with_index { |char, idx| idx if char == " " }.compact 
# end

# # p string_transformer("Example Input") == "iNPUT eXAMPLE"

# # p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"

# p string_transformer(" You Know When  THAT  Hotline Bling") #== " bLING hOTLINE  that  wHEN kNOW yOU"




































=begin

39. Largest product in a series
(https://www.codewars.com/kata/529872bdd0f550a06b00026e/train/ruby)
6 kyu
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.


# **Problem**
# =>	objective: given a number, return the biggest product of 5 consecutive digits

# =>	input: string of numbers

# =>  	output: integer

# =>	rules:

# =>		explicit	-	given a string of numbers, return the greatest product of 5 consecutive digits
                  - string input always has 5 digits

# =>		implicit	-

# =>	questions:

# **Data Structure**
- array of all the 5-letter-consecutive substrings of the given string
- array of all the products

# **Edge Cases**
- two that match? pick the first one? 

# **Implementation Notes**


# **Algorithm**
- initalize local var `substrings`, assign to an empty array
- iterate over the chars in the given `number`, with indexes
  - initialize local var `substring`, assign to a slice from `number` from this current index to 4 plus this index
  - append `substring` to `substrings` unless `substring` 's size is less than 5
- initialize local var `products`, assign to return value of iterating (transformation) over `substrings`
  - for each `substring`, #reduce each converted integer to one product and return the product
- return the max from `products`

=end

# def greatest_product(number) 
#   substrings = []
  
#   number.chars.each_with_index do |char, idx|
#     substring = number[idx..(idx + 4)]
#     substrings << substring unless substring.size < 5
#   end
  
#   products = substrings.map do |substring|
#     substring.chars.reduce(1) {|product, num| product * num.to_i}
#   end
  
#   products.max
# end


# p greatest_product("123834539327238239583") == 3240
# p greatest_product("395831238345393272382") == 3240
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("02494037820244202221011110532909999") == 0

















# def greatest_product(number)
#   product = 0
  
#   (0 .. number.size - 5).each do |idx|
#     current_product = number[idx..(idx + 4)].chars.reduce(1) {|product, char| product * char.to_i}
#     product = current_product unless product > current_product
#   end
  
#   product
# end








# p greatest_product("123834539327238239583") == 3240
# p greatest_product("395831238345393272382") == 3240
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("02494037820244202221011110532909999") == 0
















































=begin
10.Most frequently used words in a text]
(https://www.codewars.com/kata/51e056fe544cf36c410000fb/train/ruby)
4 kyu
=begin
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given a string of text (w punctuation and line-breaks)
                  - return an array of the 3 most occuring words, in descending order
                  - matches are case sensitive
                  - words in the result should be lowercase
                  - if there are less than 3 uniq words, return an array of 1 or two or empty array
                  

# =>		implicit	- a word is a string of letter with possibly an apostrophe, any punctuation that is attached to the word (//wont) doesnt count
                  - ideally, i want to get to an array with all the cleaned up words

# =>	questions:

# **Data Structure**


# **Edge Cases**


# **Implementation Notes**
- .max_by(3) {|num| a.count(num)}
- if it does not include a letter, i dont want it returned

# **Algorithm**
- initialize local var `clean_words`, assign to iteration (transformation) over the words in given `sentence`,
  - each iteration, split the chars, iterate through chars, selecting only letters, apostrophes, hyphen
  - join back the chars and return it from the block
- initialize local var `uniq_words`, assign to the uniq words from `clean_words`
- return an array of the top 3 words occurrences in from `uniq_words` in `clean_words`
  - iterate over this array to filter (select) only those with letters
=end

# def top_3_words(sentence)
#   clean_words = sentence.split.map do |word|
    
#     word.chars.select do |char|
#         true if (char =~ /[a-zA-Z]/) || (char == "'")  || (char == "-")
#     end.join
  
#   end
  
#   uniq_words = clean_words.uniq.reject(&:empty?)
 
# uniq_words.max_by(3) {|word| clean_words.count(word) }.select do |word|
#     word.chars.any?{ |char| char =~ /[a-zA-Z]/ }
#   end
# end


# p top_3_words("a a a  b  c c  d d d d  e e e e e")                      == ["e", "d", "a"]
# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")  == ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ") == ["won't", "wont"]
# p top_3_words("  , e   .. ")  == ["e"]
# p top_3_words("  ...  ")      == []
# p top_3_words("  '  ")        == []
# p top_3_words("  '''  ")      == []
# p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
# mind, there lived not long since one of those gentlemen that keep a lance
# in the lance-rack, an old buckler, a lean hack, and a greyhound for
# coursing. An olla of rather more beef than mutton, a salad on most
# nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]







































=begin

40. Duplicate Encoder
(https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby)
6 kyu
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, 
or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 


# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given a string, return a new string
                  - each char is "(" if that certain char appears once in the original string
                  - or, if it appears more than once ")" 
                  - ignore capitalization, so check the original string in lowercase form

# =>		implicit	- if the string is empty? 
                  - punctuaion counts also

# =>	questions:

# **Data Structure**
- array

# **Edge Cases**


# **Implementation Notes**
- chars, transformation, conditional test

# **Algorithm**
-initiate local var 'new_string', assign to return value from iterating (transformation) over the !lowercase! characters of the original string
  - if the `char` is in the lowercase original string more than once, let the block return ")"
  - else, return "("
  
- join the characters of `new_string`
  
=end

# def duplicate_encode(string)
#   new_string = string.downcase.chars.map do |char|
#     string.downcase.count(char) > 1 ? ")" : "("
#   end.join
# end

# p duplicate_encode("din") == "((("
# p duplicate_encode("recede") == "()()()"
# p duplicate_encode("Success") == ")())())"
# p duplicate_encode("(( @") == "))(("















=begin
41. Backspaces in string
(https://www.codewars.com/kata/5727bb0fe81185ae62000ae3/train/ruby)
6 kyu
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

# **Problem**
# =>	objective: given a string and treating "#" as backspaces, parse and return the clean string

# =>	input: string with "#"

# =>  	output: string

# =>	rules:

# =>		explicit	-	given a string, assume "#" is like a backspace , so it removes the element/char in the index that comes before it
                  - the method must parse the string as if every "#" was a backspace
                  - 

# =>		implicit/edge cases - multiple backspaces? too many backspaces? 

# =>	questions:

# **Data Structure**
- array

# **Implementation Notes**
- "#" as .pop

# **Algorithm**
- initialize local var `result_arr`, assign it to empty array
- iterate over the chars in the given `string`
  - if `char` is not "#", append it to the `result_arr`
  - else, pop the last element of the result array

=end

# def clean_string(string)
#   result_arr = []
  
#   string.chars.each do |char|
#     char == "#" ? result_arr.pop : (result_arr << char)
#   end
  
#   result_arr.join
# end

# p clean_string('abc#d##c') == "ac"
# p clean_string('abc####d##c#') == ""













# def clean_string(string)
#   string.chars.reduce('') { |final_str, char| char == "#" ? (final_str = final_str.chars[0...-1].join) : (final_str + char)   }
# end

# p clean_string('abc#d##c')      #== "ac"
# p clean_string('abc####d##c#')  #== ""












































=begin

42. Sort Arrays (Ignoring Case)
(https://www.codewars.com/kata/51f41fe7e8f176e70d0002b9/train/ruby)
6 kyu
Sort the given strings in alphabetical order, case insensitive. For example:

["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]


# **Problem**
# =>	objective: sort an array of strings (case-insensitive) 

# =>	input: an array of strings

# =>  	output: a new array of strings, sorted

# =>	rules:

# =>		explicit	-	given an array of strings, sort the strings in alphabetical order, case insensitive

# =>		implicit/edge cases - sort the strings based on their case insensitive version, but do not change them , aka make everything lower case

# =>	questions: return the same string?or a new string? new string
                  -  empty array?

# **Data Structure**
- array

# **Implementation Notes**
- #sort_by
- #downcase

# **Algorithm**
- sort the given `arr_of_words` by the lowercase version of the given words


=end

# def sortme(arr_of_words)
#   arr_of_words.sort_by(&:downcase)
# end


# p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
# p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
# p sortme(["CodeWars"]) == ["CodeWars"]








































=begin
43. Transform To Prime
(https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/ruby)
6 kyu
Task :
Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal the closest prime number .

Notes
List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , 
which will make *the sum of the List** equal the closest prime number (7)* .
2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , 
which will make *the sum of the List** equal the closest prime number (37)* .
3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) ,
which will make *the sum of the List** equal the closest prime number (191)* .

# **Problem**
# =>	objective: given a list of integers, return the integer that, when added to the list, makes the sum of the list prime (the closest prime to the first sum)

# =>	input: array of integers

# =>  	output: one integer, can be 0 if the sum is already prime

# =>	rules:

# =>		explicit	-	given an array of integers
                  - find the minimum number to be inserted in the list, so that the sum of the array equals the closest prime number
                  - list size given is at least two 
                  - repetition of nums can occur
                  - new list's sum should equal a prime number, closest prime number

# =>		implicit/edge cases - closest prime number needs to be bigger than the sum, it seems like we are only adding numbers
                            - if the sum is prime, add 0

# =>	questions:

# **Data Structure**


# **Implementation Notes**
- somehow get a list of prime numbers with the last being larger than the sum of the array
- 


# **Algorithm**
- initialize local var `sum`, assign to the sum of the given `list_of_int`
- initialize local var `current_num`, assign to sum
- loop until `current_num` is a prime
  - increment `current_num`
- return `current_num` from the method
  
- **helper method**
- is_prime?
  - given an integer
  - initialize local var `arr_of_factors`, assign to a range from 2 to one less than given `int`, converted to array
  - test to see if `int` is not divisible by any of the elements in `arr_of_factors`
  - if it is, return false, if it isnt, return true


=end


# # def prime?(int)
# #   arr_of_factors = (2...int).to_a
# #   arr_of_factors.none? { |factor| int % factor == 0 }
# # end

# def minimum_number(list_of_int)
#   sum = list_of_int.sum
#   current_num = sum
  
#   loop do
#     arr_of_factors = (2...current_num).to_a
#     break if (arr_of_factors.none? { |factor| current_num % factor == 0 })
#     current_num += 1
#   end
  
#   current_num - sum
  
# end


# p minimum_number([3,1,2]) == 1
# p minimum_number([5,2]) == 0
# p minimum_number([1,1,1]) == 0
# p minimum_number([2,12,8,4,6]) == 5
# p minimum_number([50,39,49,6,17,28]) == 2











# def is_the_int_prime(int)
#   arr_of_factors = (2...int).to_a
#   arr_of_factors.none? { |factor| int % factor == 0 }
# end

# def minimum_number(list_of_int)
#   sum = list_of_int.sum
#   current_num = sum
  
#   until is_the_int_prime(current_num)
#     current_num += 1
#   end
  
#   current_num - sum
  
# end


# p minimum_number([3,1,2]) == 1
# p minimum_number([5,2]) == 0
# p minimum_number([1,1,1]) == 0
# p minimum_number([2,12,8,4,6]) == 5
# p minimum_number([50,39,49,6,17,28]) == 2

































=begin
44. Counting Duplicates 
(https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby)
6 kyu
Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. 
The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

# **Problem**
# =>	objective: given a string, return an integer that represents the number of characters that occur twice

# =>	input: str

# =>  	output: integer, how many char are duplicates

# =>	rules:

# =>		explicit	-	given a string
                  - return an integer that represents the number duplicates in the given stirng
                  - case does not matter, "b" is a duplicate of "B"
                  - string will contain only letters and numebrs

# =>		implicit/edge cases - empty strings? return 0 
                            - only matters that it occurs more than once 

# =>	questions:

# **Data Structure**
- array

# **Implementation Notes**
- start by making everything lowercase
- #count

# **Algorithm**
- initialize local var `lowercase`, assign to the lowercase version of the given `string`
- initialie local var `uniq`, assign to uniq characters in `lowercase`
- initialize local var `duplicates`, assign to return value from (tranformation) iterate over chars in `uniq`
  - if that `char` occurs more than once in `lowercase`, return 1 from the block
  - otherwise, return 0
- return the sum of `duplicates`  array



=end

# def duplicate_count(string)
#   lowercase = string.downcase
#   uniq = lowercase.chars.uniq
  
#   duplicates = uniq.map do |char|
#     (lowercase.count(char) > 1) ? 1 : 0
#   end
  
#   duplicates.sum
# end


# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2









# def duplicate_count(string)
#   duplicate_count = 0
#   duplicate_letters = []
#   lowercase = string.downcase
  
#   string.downcase.each_char do |char|
  
#     if lowercase.count(char) > 1 && !duplicate_letters.include?(char)
#       duplicate_count += 1
#       duplicate_letters << char
#     end
  
#   end
#   duplicate_count
# end


# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2








































=begin
45. Alphabetized
(https://www.codewars.com/kata/5970df092ef474680a0000c9/train/ruby)
6 kyu
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order.
Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing the english alphabet letters.

Example:

alphabetized("The Holy Bible") # "BbeehHilloTy"

# **Problem**
# =>	objective: given a string, return a new string sorted alphabetically (with no regard to case), removing the whitespace and punctuation

# =>	input: string

# =>  	output: new string

# =>	rules:

# =>		explicit	-	given a string
                  - sort the chars of a string, 
                  - return new string
                  - sort according to case insensitive alphabet
                  - remove all whitespace and punctuation

# =>		implicit/edge cases - sort based on lower case
                            - remove whitespace and punctuaion first
                            - empty string returns empty string
                            - string with one space returns empty string

# =>	questions:

# **Data Structure**
- array

# **Implementation Notes**


# **Algorithm**
- initialize local var `chars`, assign to chars of the given `string`, whitespace and punctuation removed
- initialize local var `sorted_chars`, assign to chars of `chars` sorted based on their lowercase value
- join `sorted_chars` and return it


=end

# def alphabetized(str)
#   chars = str.chars.select { |char| char =~ /[a-zA-Z0-9]/ } 
#   sorted_chars = chars.sort_by { |char| char.downcase}.join
# end


# p alphabetized("") == ""
# p alphabetized(" ") == ""
# p alphabetized(" a") == "a"
# p alphabetized("a ") == "a"
# p alphabetized(" a ") == "a"
# p alphabetized("A b B a") == "AabB"
# p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"













































=begin
46. Sum of Digits / Digital Root
(https://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby)
6 kyu
In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. 
Given n, take the sum of the digits of n.
If that value has more than one digit, continue reducing in this way until a single-digit number is produced. 
This is only applicable to the natural numbers.


# **Problem**
# =>	objective: given an integer, return the sum of its integers until its sum is one digit

# =>	input: integer

# =>  	output: integer (digital root)

# =>	rules:

# =>		explicit	-	given an integer, get the sum of the digits
                  - if that value has more than 1 digit (> 9), take the sum of those digits
                  - etc until the sum of the digits is one digit
                  - return the sum that is one digit

# =>		implicit/edge cases - can i be given 0 or negative number? 


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
  - initialize local var `digits_sum`, assign it to the sum of the given `int` 's digits
  - until the `digits_sum` < 10
    - reassign `digits_sum` to the sum of the digits of `digits_sum`
  - return `digits_sum`



=end

# def digital_root(int)
#   digits_sum = int.digits.sum
#   until digits_sum < 10
#     digits_sum = digits_sum.digits.sum
#   end
#   digits_sum
# end

# p digital_root(16) == 7 
# p digital_root(456) == 6 
# p digital_root(942) == 6
# p digital_root(132189) == 6 
# p digital_root(493193) == 2




# def digital_root(int)
#   return int.digits.sum if int.digits.sum < 10
#   digital_root(int.digits.sum)
# end

# p digital_root(16) == 7 
# p digital_root(456) == 6 
# p digital_root(942) == 6
# p digital_root(132189) == 6 
# p digital_root(493193) == 2


















=begin

47. Array.diff
(https://www.codewars.com/kata/523f5d21c841566fde000009/train/ruby)
6 kyu
Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

It should remove all values from list a, which are present in list b.

array_diff([1,2],[1]) == [2]
If a value is present in b, all of its occurrences must be removed from the other:

array_diff([1,2],[1]) == [2]

# **Problem**
# =>	objective: given two lists, return the first without any elements that are also in the second

# =>	input: two arrays

# =>  	output: one array, list `a` without any elements that are in list `b`

# =>	rules:

# =>		explicit	-	given two lists `a` and `b`
                  - remove all values from list `a` which are also in list `b`
                  -

# =>		implicit/edge cases - return list `a` without any values that are also in list `b`
                            - if first list is empty, return an empty array
                            - if second list is empty, return the first array

# **Data Structure**
- arrays

# **Implementation Notes**


# **Algorithm**
  - iterate over the elements in list `a` using selection
    - if the element is in list `b`, return false from the block
    - otherwise, true

=end

# def array_diff(a, b)

#   a.select do |element|
#     b.include?(element) ? false : true
#   end

# end


# p array_diff([1,2], [1]) == [2]
# p array_diff([1,2,2], [1]) == [2,2]
# p array_diff([1,2,2], [2]) == [1]
# p array_diff([1,2,2], []) == [1,2,2]
# p array_diff([], [1,2]) == []




# def array_diff(a, b)

#   a - b

# end


# p array_diff([1,2], [1]) == [2]
# p array_diff([1,2,2], [1]) == [2,2]
# p array_diff([1,2,2], [2]) == [1]
# p array_diff([1,2,2], []) == [1,2,2]
# p array_diff([], [1,2]) == []










































=begin
48. Where is my parent!?(cry)
(https://www.codewars.com/kata/58539230879867a8cd00011c/train/ruby )
Where's my parent?
6 kyu
Mothers arranged a dance party for the children in school.
At that party, there are only mothers and their children. 
All are having great fun on the dance floor when suddenly all the lights went out. 
It's a dark night and no one can see each other. 
But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".

# **Problem**
# =>	objective: given a string of chars, return a string sorted by letters and case, 'AaaBbb', with similar letters next to each other, sorted by case 

# =>	input: string

# =>  	output: string

# =>	rules:

# =>		explicit	-	string contains only letters
                  - uppercase letters are moms, lowercase are kids
                  - place all given letters where uppercase letters are followed by their children 
                  - uppercase letters are uniq

# =>		implicit/edge cases - empty string returns an empty string


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
  - initialize local var `letter_hash`, assign to the letters grouped by their lowercase values, sorted
  - initialize lcoal var `result`, assign to empty array
  - iterate over the values of the `letter_hash`
    - sort each 'arr_of_letters` and append it to the `result` array
  - return the result array, sorteda and joined



=end



# def find_children(string)
#   letter_hash = string.chars.group_by { |char| char.downcase }.sort
  
#   result = []
  
#   letter_hash.each do |_, arr_of_letters|
#     result << arr_of_letters.sort
#   end
  
#   result.flatten.join
# end


# p find_children("abBA")       == "AaBb"
# p find_children("AaaaaZazzz") == "AaaaaaZzzz"
# p find_children("CbcBcbaA")   == "AaBbbCcc"
# p find_children("xXfuUuuF")   == "FfUuuuXx"
# p find_children("")           == ""







# def find_children(string)
#   letters_in_groups = string.chars.group_by { |char| char.downcase }.sort
#   letters_in_groups.map { |arr| arr[1].sort }.flatten.join
# end

# p find_children("abBA")       == "AaBb"
# p find_children("AaaaaZazzz") == "AaaaaaZzzz"
# p find_children("CbcBcbaA")   == "AaBbbCcc"
# p find_children("xXfuUuuF")   == "FfUuuuXx"
# p find_children("")           == ""





# def find_children(string)
#   string.chars.sort_by { |char| [char.downcase, char] }.join
# end

# p find_children("abBA")       == "AaBb"
# p find_children("AaaaaZazzz") == "AaaaaaZzzz"
# p find_children("CbcBcbaA")   == "AaBbbCcc"
# p find_children("xXfuUuuF")   == "FfUuuuXx"
# p find_children("")           == ""







=begin
49. Playing with digits
(https://www.codewars.com/kata/5552101f47fc5178b1000050/train/ruby)
6 kyu
Some numbers have funny properties. For example:

89 --> 8¹ + 9² = 89 * 1

695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2

46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p

we want to find a positive integer k, if it exists, such as the sum of the digits of n taken to the successive powers of p is equal to k * n.
In other words:

Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k

If it is the case we will return k, if not return -1.

Note: n and p will always be given as strictly positive integers.

# **Problem**
# =>	objective: given an integer and a starting exponent, return the number that results in the original number when multiplied by the sum of the given number's digits raised to consecutive 
                    exponents

# =>	input: two integers

# =>  	output: one integers, the needed multiplier or -1 if it is not an integer

# =>	rules:

# =>		explicit	-	given an integer and a starting exponent
                  - with the digits split, the first is raised to the given exponent, the next to given expo + 1, etc
                  - get the sum of this ^^ and divide by the given integer
                  - if the integer does not exist, return - 1
                  - n and p given args will always be integers

# =>		implicit/edge cases - no integer that satifies the requirement, return -1
                            - check for remainders


# **Data Structure**
- array to hold digits
- array to hold exponent


# **Implementation Notes**

dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals 92 * k
dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

# **Algorithm**
- initialize local var `digits`, assign to the digits of the given `int`, in proper order (if you use #digits, need to reverse)
- initialize local var `exponents`, assign to a range, starting from `p`, going to `p + the size of `digits` - 1`
- initialize local var `raised_digits`, iterate over the `digits` array with indexes (transformation)
  - raised the digits at the current array to the corresponding digit in the `exponents` array
- initailize local var `sum`, sum of `raised_digits`
- if `sum` divided by `int` gives a remainder
  - return -1
- otherwise
  -  return `sum` divided by `int`
  





=end

# def dig_pow(int, pow)
#   digits = int.digits.reverse
#   exponents = (pow...(pow + digits.size)).to_a
#   raised_digits = digits.map.with_index do |digit, idx|
#     digit ** exponents[idx]
#   end
#   sum = raised_digits.sum
  
#   if sum % int != 0
#     -1
#   else
#     sum / int
#   end
# end


# p dig_pow(89, 1)    == 1
# p dig_pow(92, 1)    == -1
# p dig_pow(46288, 3) == 51
# p dig_pow(695, 2)   == 2





# def dig_pow(int, pow)
#   digits = int.digits.reverse
#   exponents = (pow...(pow + digits.size)).to_a
#   sum = digits.reduce(0) { |sum, digit| sum + (digit ** exponents.shift) }
#   sum % int != 0 ? -1 : (sum / int)
# end


# p dig_pow(89, 1)    == 1
# p dig_pow(92, 1)    == -1
# p dig_pow(46288, 3) == 51
# p dig_pow(695, 2)   == 2










































=begin

50. Equal Sides Of An Array
(https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby)
Equal sides of an array
6 kyu
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. 
If there is no index that would make this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}: Your function will return the index 3, because at the 3rd position of the array, 
the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

Let's look at another one.
You are given the array {1,100,50,-51,1,1}: Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the 
sum of the right side of the index ({50,-51,1,1}) both equal 1.

Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

Note: Please remember that in most programming/scripting languages the index of an array starts at 0.

Input:
An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.

Output:
The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.

Note:
If you are given an array with multiple answers, return the lowest correct index.
# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given an array of intgers, find the index where the sum of the left is equal to the sum of the integers to the right
                  - return -1 if there is no index for this
                  - at index 0, the left side is 0
                  - given array will have more than 0 elements
                  - 

# =>		implicit/edge cases - the index that is chosen is not counted in any of the sums
                            - what if there are two indexes? 


# **Data Structure**
- array


# **Implementation Notes**
- a[0...0]
- sum of an empty array is 0 #sum

# **Algorithm**
- iterate over the digits of the empty array with indexes
  - if the sum of the digits to the left of the index equals the sum of the right
    - explicit return the current index
- if you get through the iteration, return -1

=end

# def find_even_index(arr)
  
#   arr.each_with_index do |int, idx|
#     return idx if arr[0...idx].sum == arr[(idx+1)..-1].sum
#   end
  
#   -1
# end




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


# def equal_at_this_index(arr, idx)
#   arr[0...idx].sum == arr[(idx+1)..-1].sum
# end

# def find_even_index(arr)
  
#   arr.each_with_index do |int, idx|
#     return idx if equal_at_this_index(arr, idx)
#   end
  
#   -1
# end




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
















=begin
51. Reverse or rotate?
(https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991)
6 kyu
Reverse or rotate?
The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz (ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. 
Put together these modified chunks and return the result as a string.

If

sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".

# **Problem**
# =>	objective: given a string of numbers and a chunk size, separate the string into chunks, evaluate each chunk and reverse/rotate, put them back together and return a string

# =>	input: string and `sz`

# =>  	output: string

# =>	rules:

# =>		explicit	-	input is a string of digits
                  - cut the string into chunks of `sz` (which is the second arg)
                  - evaluate each chunk
                    - if the cubes of all of its digits is even, reverse the chunk
                    - otherwise, rotate it
                  - put together all chunks and return result as a string

# =>		implicit/edge cases - if `sz` is 0 OR str is empty OR you can't make one chunk, return empty string
                            - rotating means move the first char to the back, and shift everything else to the left


# **Data Structure**
- array

# **Implementation Notes**

a = 'asdfasfsdfsafsdf'
result = []
a.chars.each_slice(3) {|cli| result << cli }
p result

# **Algorithm**
- chars
- chars.size / sz times , shift from chars


- initialize local var `chunks_transformed`, iterate over chunks
  - if the cubes of its digits sum to an even number
    - reverse the chunk
  - otherwise
    - rotate it
- join the `chunks_transformed` 


=end

# def revrot(str, sz)
#   return "" if sz == 0 || str.empty? || sz > str.size
#   chars = str.chars
#   chunks = []
  
#   0.upto((str.size / sz)) { |num| chunks << chars.shift(sz) }
#   chunks.select! { |chunk| chunk.size == sz }
  
  
#   chunks_transformed = chunks.map do |chunk|
    
#     if (chunk.reduce(0) { |sum, int| sum + (int.to_i ** 3) }).even?
#       chunk.reverse
#     else
#       chunk[1..-1] + [chunk[0]]
#     end
  
#   end
  
#   chunks_transformed.flatten.join
# end


# p revrot("1234", 0)               == ""
# p revrot("", 0)                   == ""
# p revrot("1234", 5)               == ""
# p revrot("733049910872815764", 5) == "330479108928157"
# p revrot("123456987654", 6)       == "234561876549"
# p revrot("123456987653", 6)       == "234561356789"
# p revrot("66443875", 4) == "44668753"
# p revrot("66443875", 8) == "64438756"
# p revrot("664438769", 8) == "67834466"
# p revrot("123456779", 8) == "23456771"
# p revrot("", 8) == ""
# p revrot("123456779", 0) == ""
# p revrot("563000655734469485", 4) == "0365065073456944"






# def sum_of_cubes_even(chunk)
#   (chunk.reduce(0) { |sum, int| sum + (int.to_i ** 3) }).even?
# end


# def revrot(str, sz)
#   return "" if sz == 0 || str.empty? || sz > str.size
#   chars = str.chars
#   chunks = []
#   str.chars.each_slice(sz) { |chunk| chunks << chunk }
#   chunks.select { |chunk| chunk.size == sz }
  
#   chunks.map do |chunk|
    
#     if sum_of_cubes_even (chunk)
#       chunk.reverse
#     else
#       chunk[1..-1] + [chunk[0]]
#     end
  
#   end.flatten.join
# end


# p revrot("1234", 0)               == ""
# p revrot("", 0)                   == ""
# p revrot("1234", 5)               == ""
# p revrot("733049910872815764", 5) == "330479108928157"
# p revrot("123456987654", 6)       == "234561876549"
# p revrot("123456987653", 6)       == "234561356789"
# p revrot("66443875", 4) == "44668753"
# p revrot("66443875", 8) == "64438756"
# p revrot("664438769", 8) == "67834466"
# p revrot("123456779", 8) == "23456771"
# p revrot("", 8) == ""
# p revrot("123456779", 0) == ""
# p revrot("563000655734469485", 4) == "0365065073456944"












































=begin
51. Decipher this!    
https://www.codewars.com/kata/581e014b55f2c52bb00000f8
Decipher this!
6 kyu
You are given a secret message you need to decipher. Here are the things you need to know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special characters used, only letters and spaces

Examples

decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'

# **Problem**
# =>	objective: given a coded string, uncode the string 

# =>	input: string

# =>  	output: string

# =>	rules:

# =>		explicit	-	given a string that is encoded
                  - return a string in plain english
                  - for each word, the second and last letter are switched, 
                  - the first letter is switched with its character code, case sensitive
                  - no special char, only letters and spaces

# =>		implicit/edge cases - if its one letter, just return the letter
                            - it two, nothing switches, just first letter becomes nums


# **Data Structure**
- hash to hold char codes
- array to hold words

# **Implementation Notes**
- sub problems
- extract number from word
- replace number with letter
- switch second and last letter
- create hash with key/value num/letter pairs

# **Algorithm**
- create hash with letters and numbers, convert range from 'A' to 'z', select only the letters
- zip with ord numbers, then convert to hash 

- `decoder`
  - parallel assign `nums` and `letters` to #partition on the given word
  - initialize lcoal var `first_letter`, assign to value of `nums` in the ORD_HASH
  - initialize local var `rest_of_word`, swap first and last letters in `letters`
  - return a pieced together word `first_letter` + `rest_of_word`

- initialize local var `words`, assign to words in the given `string`
- initialize local var `decoded`, assign to iterate over `words`
    - send each word to helper method `decoder`, return new word
- join `decoded`


=end

# letter_values = ('A'..'z').to_a.select { |let| let =~ /[a-zA-Z]/ }
# ord_keys = letter_values.map {|let| let.ord}
# ORD_HASH = ord_keys.zip(letter_values).to_h

# def decoder(word)
#   nums, letters = word.chars.partition { |char| char =~ /[0-9]/}
  
#   first_letter = ORD_HASH[nums.join.to_i]
  
#   letters[0], letters[-1] = letters[-1], letters[0]
  
#   first_letter + letters.join
# end

# def decipher_this(string)
#   words = string.split.map { |word| decoder(word) }
#   words.join(" ")
# end


# p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
# p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
# p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"







# def decoder(word)
#   nums, letters = word.chars.partition { |char| char =~ /[0-9]/}
  
#   first_letter = nums.join.to_i.chr
  
#   letters[0], letters[-1] = letters[-1], letters[0]
  
#   first_letter + letters.join
# end

# def decipher_this(string)
#   words = string.split.map { |word| decoder(word) }
#   words.join(" ")
# end


# p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
# p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
# p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"







































=begin
38. String transformer
(https://www.codewars.com/kata/5878520d52628a092f0002d0/train/ruby)
6 kyu
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.


# **Problem**
# =>	objective: transform the words in the specified way, keep the number and order of the spaces in place

# =>	input: string

# =>  	output: string

# =>	rules:

# =>		explicit	-	given a string, return a new string that has transformed
                  - change the case of every character
                  - reverse the words from the input
                  - keep the spaces in exactly the same place
                  - there may be multiple spaces

# =>		implicit/edge cases - starting or ending with one or more spaces


# **Data Structure**
- ideally an array with the word reversed in order and letter case
- another array with elements as ' ' and 'word'


# **Implementation Notes**


# **Algorithm**
- `change_case`, receives a word, splits it, iterates over the char, and flips the cases, 
- returns the word joined

- initialize local var `words`, assign to words of the given `string` reversed
- initialize local var `reversed_words`, assign to iterating over `words` passing each to `change_case` 
- initialize local var `spaces_and_words`, assign to iterating over the chars of the given `string`
  - if char is a space, return a space from the block
  - otherwise
    - if its a letter and the previous element was a space, return 'word'
    - if its a lettter and the previous element was a letter, return nil from the block
- get rid of the `nil`s in `spaces_and_words`
- initialize lcoal var `final_sentence`, assign to iterating over `spaces_and_words`
  - if its space, return space
  - if its word, shift from `words`
- join final_sentence
=end

# def change_case(word)
#   changed_word = word.chars.map do |char|
#     if char =~ /[A-Z]/
#       char.downcase
#     else
#       char.upcase
#     end
#   end
#   changed_word.join
# end

# def string_transformer(string)
#   words = string.split.reverse
#   reversed_words = words.map { |word| change_case(word) }
#   chars = string.chars
#   spaces_and_words = chars.map.with_index do |char, idx|
#     if char == " "
#       " "
#     else
#       if chars[idx - 1] == " "
#         'word'
#       elsif idx == 0
#         'word'
#       else
#         nil
#       end    
#     end
#   end
#   spaces_and_words = spaces_and_words.compact
#   final_sentence = spaces_and_words.map do |el|
#     if el == " "
#       " "
#     else
#       reversed_words.shift
#     end
#   end
  
#   final_sentence.join
# end


# p string_transformer("Example Input") == "iNPUT eXAMPLE"

# p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"

# p string_transformer(" You Know When  THAT  Hotline Bling") #== " bLING hOTLINE  that  wHEN kNOW yOU"






=begin

30. Anagram difference
(https://www.codewars.com/kata/5b1b27c8f60e99a467000041)
6 kyu
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given two strings
                  - how many letters need to be removed from each to make them anagrams
                  - so each has the same letters and the same number of letters
                  - 

# =>		implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
=end





# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') == 10


















































=begin
52. Bouncing Balls
(https://www.codewars.com/kata/5544c7a5cb454edb3c000047)
6 kyu
A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

Example:
- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1 
(Condition 2) not fulfilled).

# **Problem**
# =>	objective: given three parameters, h, bounce, window, return the number of times the mother will see the ball bounce

# =>	input: 1 integer, 2 floats

# =>  	output: 1 integer

# =>	rules:

# =>		explicit	-	child has ball on nth floor of building
                  - height is known
                  - he drops the ball and the ball bounces 2/3s of `h`
                  - mother looks out a window 1.5m from the ground, fixed
                  - how many times will the mother see the ball, 
                  - count when it is falling and bouncing
                  - to be valid, h > 0, the bounce needs to be between 0 and 1, window must be less than h
                  - if any of those are not true, return -1
                  - otherwise return a positive integer
                  - ball can only be seen if the height of the bounce is greater than the window height

# =>		implicit/edge cases -


# **Data Structure**
- array to store the number of passes


# **Implementation Notes**


# **Algorithm**
- return -1 if `h` <= 0 
- return -1 if `b` is not between 0 and 1
- return -1 if the `window` is higher than the initial `h`
- initialize local var `results`, assign to an array with one element 1
- initialize local var `height`, assign to `h`
- initialize local var `bounce`, assign to `b`
- start loop
  - reassign `height` to the result that comes from multiplying `height` and `bounce`
  - if `height` is greater than the window, append 2 to the `result` array
  - otherwise, break 
- return the sum of the result array


=end

# def bouncingBall(h, b, window)
#   return -1 if h <= 0
#   return -1 if b <= 0 || b >= 1
#   return -1 if window >= h
#   results = [1]
#   height = h
  
#   loop do
#     height *= b
#     height > window ? (results << 2) : break
#   end
  
#   results.sum
  
# end






# def bouncingBall(h, b, window)
#   return -1 if h <= 0
#   return -1 if b <= 0 || b >= 1
#   return -1 if window >= h
#   results = [1]
#   height = h * b
  
#   while height > window
#     height *= b
#     results << 2
#   end
  
#   results.sum
  
# end




# def bouncingBall(h, b, window)
#   return -1 if h <= 0
#   return -1 if b <= 0 || b >= 1
#   return -1 if window >= h
#   results = [1]
#   height = h * b
  
#   until height <= window
#     height *= b
#     results << 2
#   end
  
#   results.sum
  
# end




# p bouncingBall(3, 0.66, 1.5)  == 3
# p bouncingBall(30, 0.66, 1.5) == 15
# p bouncingBall(30, 0.75, 1.5) == 21
# p bouncingBall(30, 0.4, 10)   == 3
# p bouncingBall(40, 1, 10) == -1
# p bouncingBall(-5, 0.66, 1.5) == -1
# p bouncingBall(1, 0.66, 0.66) == 1
# p bouncingBall(1, 0.66, 1) == -1












































=begin
53. WeIrD StRiNg CaSe
(https://www.codewars.com/kata/52b757663a95b11b3d00062d) 
6 kyu
Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, 
and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').


# **Problem**
# =>	objective: given a string, return the same string with letters uppercased/lowercased at specific indexes, even for uppercase

# =>	input: string

# =>  	output: same string

# =>	rules:

# =>		explicit	-	given a string
                  - return the same string, with all even indexed char upper cased
                  - all odd indexed char lower cased
                  - indexing is zero based, so first char is uppercase
                  - str only has alphabetical char and spaces
                  - spaces only present to separate words
                  - words are separated by single space

# =>		implicit/edge cases - empty string?


# **Data Structure**
- array for the chars

# **Implementation Notes**
- when you split something you create a new string
- a[1] = a[1].upcase

# **Algorithm**
- initialize local var `chars`, assign to the characters of the given string
- iterate over `chars` with indexes 
  - if the index is even
    - index assign the corresponding letter in the given `string` to its uppercase version
  - otherwise, index assign the corresponding letter in the given `string` to its lowercase version
- return the given `string`










- initialize local var `words`, assign to the words of the given string
- delete all contents from `string`
- initialize local var `words_changed`, iterate over `words` with indexes 
  - send each to helper function
- iterate over `words_changed`, append each to `string` with a space except the last one
- return the given `string`


  helper function
  - initialize local var `chars`, assign to characters of the given `word`
  - iterate over `chars`
  - if the index is even
    - change `char` to its uppercase version
  - otherwise, - change `char` to its uppercase version
  - join the chars
=end


# def change_word(word)
#   chars = word.chars
#   changed_chars = chars.map.with_index do |char, idx|
#     idx.even? ? char.upcase : char.downcase
#   end.join
# end

# def weirdcase(string)
#   words = string.split
#   string.delete!('A-Za-z').delete!(" ")
#   string
#   words_changed = words.map do |word|
#     change_word(word)
#   end
  
#   words_changed.each_with_index do |word, idx|
#     if idx == words_changed.size - 1
#       string << word
#     else
#       string << word + " " 
#     end
#   end
  
#   string
# end


# a = "String"
# p a.object_id
# p weirdcase(a) == "StRiNg"
# p a.object_id
# p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"




# def weirdcase(string)
#   chars = string.chars
#   chars.each_with_index do |char, idx|
#     idx.even? ? (string[idx] = char.upcase) : (string[idx] = char.downcase)
#   end
#   string
# end









































=begin
54. Are they the "same"?
(https://www.codewars.com/kata/550498447451fbbd7600041c)
6 kyu
Given two arrays a and b write a function comp(a, b) that checks whether the two arrays have the "same" elements, with the same multiplicities. 
"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

Examples
Valid arrays
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on.
It gets obvious if we write b's elements in terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
Invalid arrays
If we change the first number to something else, comp may not return true anymore:

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 36100 is not the square of any number of a.

Remarks
a or b might be [] (all languages except R, Shell).
a or b might be nil or null or None or nothing (except in Haskell, Elixir, C++, Rust, R, Shell, PureScript).
If a or b are nil (or null or None), the problem doesn't make sense so return false.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given two arrays
                  - return true if they are the same
                  - same means that the elements in b are the elements in a squared, regardless of order
                  - a or b could be nil or an empty array, if b is empty and a is not, return false
                  - if any are nil, return false
                  - if a and b are not the same size, return false

# =>		implicit/edge cases - if there are extra numbers in b, return false
                            - duplicates in `a`?


# **Data Structure**
- arrays


# **Implementation Notes**
- Math.sqrt(144)
- a.delete_at(1)
  - destructive

# **Algorithm**
- return false if a or b is nil
    - b is empty and a is not
    - a and b are not the same size
- initialize local var `squares`, assign to `b` duplicated
- initialize local var `starting_nums`, assign to `a` duplicated
- iterate over the elements in the given `b` array
  - if the element's square root is in `starting_nums`, remove it from `starting_nums`
  - otherwise, return false
- if `starting_nums` is empty, return true
  - otherwise, false


=end
# require 'pry'

# def comp(a, b)
#   return false if a.nil? || b.nil?
#   return false if b.empty? && !a.empty?
#   return false if a.size != b.size
#   starting_nums = a.dup
#   b.each do |num|
#   square_root = Math.sqrt(num) 
#   return false if (square_root - square_root.to_i) != 0.0

#   if starting_nums.include?(square_root.to_i)
#     index = starting_nums.find_index(square_root.to_i)
#     starting_nums.delete_at(index)
#   else
#     return false
#   end
  
#   end
  
#   if starting_nums.empty? 
#     true
#   else
#     false
#   end
# end






# def comp(a, b)
#   return false if a.nil? || b.nil?
#   starting_nums = a.dup
#   b.each do |num|
#     square_root = Math.sqrt(num) 
#     return false if (square_root - square_root.to_i) != 0.0
#     square_root = square_root.to_i
   
#     if starting_nums.include?(square_root)
#       index = starting_nums.find_index(square_root)
#       starting_nums.delete_at(index)
#     else
#       return false
#     end
  
#   end
  
#   starting_nums.empty? ? true : false
# end

# p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) == true
# p comp([121, 144, 19, 161, 19, 144, 19, 11] , [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false
# p comp(nil, [1, 2, 3]) == false
# p comp([1, 2], []) == false
# p comp([1, 2], [1, 4, 4]) == false












































=begin

55. Grouping and Counting
(https://www.codewars.com/kata/53a452dd0064085711001205)
6 kyu
Your goal is to write the group_and_count method, which should receive an array as a unique parameter and return a hash. 
Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}
The following methods were disabled:

Array#count
Array#length

# **Problem**
# =>	objective: given an array, return a ahash with the array's values as keys and their counts as counts

# =>	input: array

# =>  	output: hash

# =>	rules:

# =>		explicit	-	given an array, return a hash
                  - empty or nil must return nil instead of a hash
                  - hash returned needs to have the uniq values of the array as keys, and the counts of those values as the values. 

# =>		implicit/edge cases - empty or nil returns nil 
                            - will the array given only consist of integers?


# **Data Structure**
- array and iteration over the array
- hash to store the result

# **Implementation Notes**
- adding a key/value pair whose key already exists to a hash will override the existing pair 

# **Algorithm**
- initialize local var `result`, assign to an empty hash 
- iterate over the given `arr`, 
  - on each iteration, create a new key/value pair in the `result` hash
    - key => `int`
    - value => count of `int` in the given `arr`
- return the  `result` hash if it 

=end

# def group_and_count(arr)
#   return nil if arr.nil? || arr.empty?
#   result = {}
  
#   arr.each do |int|
#     result[int] = arr.count(int)
#   end
  
#   result
  
  
# end




# def group_and_count(arr)
#   return nil if arr.nil? || arr.empty?
#   result = {}
  
#   arr.each do |int|
    
#     if result[int]
#       result[int] += 1
#     else
#       result[int] = 1
#     end
  
#   end
  
#   result
  
  
# end


# def group_and_count(arr)
#   return nil if arr.nil? || arr.empty?
  
#   arr.each_with_object({}) do |el, result|
#     result[el] ? result[el] += 1 : result[el] = 1  
#   end
  
# end


# p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
# p group_and_count([]) == nil
# p group_and_count(nil) == nil
# p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}






































=begin
given a non-empty string, check if it can be constructed by taking a substring of 
it and appending multiple copies of the substring together. You may assume the given 
string consists of lowercase English letters, only. 

# **Problem**
# =>	objective: given a string, return a boolean object representing whether the given 
                    string can be represented by a repeated substring

# =>	input: string

# =>  	output: boolean object true/false

# =>	rules:

# =>		explicit	-	given a string
                  - string will be nonempty
                  - see if the string can be constructed with a substring repeated
                  - given string has lowercase English letters only

# =>		implicit/edge cases - substring can be repeated an uncertain amount of times
                            - substring will start from the first letter
                            - one letter? 


# **Data Structure**
- array to hold all possible substrings


# **Implementation Notes**
- 'ab' * 2 == 'ab'

# **Algorithm**
high level
- get all substrings
- test each one to see if `substring` * num matches the OG substring

low level
- initialize local var `substrings`, assign to empty array
- from 0 up to the second to the given `string` 's size - 1  
  - extract the substring from index 0 to the `num` and append it to the `substrings` array
- iterate over the substrings
  - initialize local var `multiplier`, assign to given `string` size divided by size 
      of the substring being iterated over
    - explicit return true if `substring` * `multiplier` matches the original substring
- return false if it makes it through the iteration over the `substrings`


=end


# def repeated_substring_pattern(string)
#   substrings = []
#   0.upto(string.size - 2) do |num|
#     substrings << string[0..num]
#   end
#   substrings.each do |substring|
#     mulitplier = string.size / substring.size
#     return true if (substring * mulitplier) == string
#   end
#   false
# end

=begin
  - initialize local var `chars`, assign to the characters in the given `string` (#chars)
  - iterate over `chars`, with #reduce
    - add the current `char` to the `sum`
    - initialize local var `mulitplier`, assign to `string` size divided by `sum` size
    - if mulitplier is 1, skip this 
    - return true if `multiplier` * `sum` matches the original string
  - false if you get through all that
=end

# require 'pry'

# def repeated_substring_pattern(string)
#   substring = ''
  
#   string.chars.each do |char|
#     substring << char
#     multiplier = string.size / substring.size
#     next if multiplier == 1
#     return true if substring * multiplier == string
#   end
  
#   false
# end

# p repeated_substring_pattern('abab')          == true
# p repeated_substring_pattern('aba')           == false
# p repeated_substring_pattern('aabaaba')       == false
# p repeated_substring_pattern('abaababaab')    == true
# p repeated_substring_pattern('abcabcabcabc')  == true




























=begin
Given an array of strings made only from loewrcase letters, return an array of all characters
that show up in all strings within the given array (including duplciates). For example, 
if a character occurs three times in all strings but not 4 times, you need to 
include that character three times in the final answer

# **Problem**
# =>	objective: given an array of strings, return an array of the letters that occur
                  - in all the given strings (with accurate number of occurence)

# =>	input: array of strings

# =>  	output: an array of letters

# =>	rules:

# =>		explicit	-	given an array of strings
                  - only lowercase letters
                  - return an array of the letters that show up in all strings
                  - include duplicates, if it shows up twice in each, add 2 to the final
                      - array
                  

# =>		implicit/edge cases - can i get an empty string?
                            - if there are no matches, return an empty string

# **Data Structure**
- array (for iterating over the first word) 
- an array (to hold the letters needed) 
- empty string (to hold letters needed)?

# **Implementation Notes**
- find a way to test if the letter occurs in all words
- find a way to test how many times the letter occurs in each word, default to the lowest
 - number of times
- 

# **Algorithm**
- initialize local var `result`, assign to an empty string
- initialize local var `first_words_letters`, assign to the first word of the given array's
  - letters split into an array
- initializ elocal var `letters_in_all_words`, iterate over `first_words_letters` (selection)
  - if the letter is included in the rest of the words in the array (#all?)
  - include it in the returned array 
  - else, don't
- destructively make the elements in the `letters_in_all_words` array unique
- iterate over the letters in `letters_in_all_words`
  - see how many times that letter occurs in each word of the given `words` array
  - get the minimum of ^^ and assign it to the var `occurences`
  - append `char` * `occurences` to the `result` string

=end

# def common_chars(words)
#   result = ''
#   first_words_letters = words.first.chars
  
#   letters_in_all_words = first_words_letters.select do |char|
#     words.all? { |word| word.include?(char) } 
#   end.uniq
  
#   letters_in_all_words.each do |char|
#     occurences = words.map { |word| word.count(char) }.min
#     result << char * occurences
#   end
  
#   result.chars
# end


# def get_letters_in_all_words(words)
#   first_words_letters = words.first.chars
  
#   first_words_letters.select do |char|
#     words.all? { |word| word.include?(char) } 
#   end.uniq

# end


# def common_chars(words)
#   result = ''
#   letters_in_all_words = get_letters_in_all_words(words)
  
#   letters_in_all_words.each do |char|
#     occurences = words.map { |word| word.count(char) }.min
#     result << char * occurences
#   end
  
#   result.chars
# end

# p common_chars(["bella", "label", "roller"]) == ['e', 'l', 'l']
# p common_chars(["cool", "lock", "cook"]) == ['c', 'o']
# p common_chars(["hello", "goodbye", "booya", "random"]) == ['o']
# p common_chars(["aabbaaaa", "ccdddddd", "ggrrrrr", "yyyzzz"]) == []











































=begin
Create a method that takes a positive integer number and returns the next bigger number by
the same digits. If no bigger number can be composed using those digits, return -1. 

# **Problem**
# =>	objective: given an integer, return the next bigger number commprised of the same
                  digits

# =>	input: positive integer

# =>  	output: positive integer with the same digits as the given integer, bigger or -1

# =>	rules:

# =>		explicit	-	given a positive integer
                  - return the next bigger number using the same digits
                  - 

# =>		implicit/edge cases - if no bigger number can be composed, return -1


# **Data Structure**
- array to store the digits


# **Implementation Notes**
- #digits returns n array of the digits in reversed order, need to reverse back to get
  the right order

# **Algorithm**
- initialize local var `digits`, assign to an array of digits from the given `num`
- initialize local var `counter`, assign to 0
- loop do
  - compare the first digits in `digits` and the next one, 
    - if the first is greater than the next, switch them, and explicit return the 
      - digits reversed joined and converted to an integer
  - incremement counter
  - break if counter is the `digits` array size minus one
- return -1 if it makes it through the loop

=end

# def next_bigger_number(num)
#   digits = num.digits
#   counter = 0
#   return -1 if digits.size == 1
  
#   loop do 
#     if digits[counter] > digits[counter + 1]
#       digits[counter], digits[counter + 1] = digits[counter + 1], digits[counter]
#       return digits.reverse.join.to_i
#     end
#     counter += 1
#     break if counter == digits.size - 1
#   end
#   -1
# end

# do it another way where you add one to the digits and test if it mathces the digits
# like in the vid

=begin
algo
- initialize local var `biggest_num`, assign to the biggest number that can be made with
  - `nums` digits
- if given `num` matches `biggest_num`, return -1
- initialize local var `test_num`, assign to `num` + 1
- loop 
  - test `test_num`, to see if its digits match the original digits num 
  - if it does, return test_num

=end

# def digits_match(num, test_num)
#   num.digits.sort == test_num.digits.sort
# end

# def next_bigger_number(num)
#   biggest_num = num.digits.sort.reverse.join.to_i
#   return -1 if num == biggest_num
#   test_num = num + 1
  
#   loop do 
#     return test_num if digits_match(num, test_num)
#     test_num += 1  
#   end
  
# end



# def digits_match(num, test_num)
#   num.digits.sort == test_num.digits.sort
# end

# def next_bigger_number(num)
#   biggest_num = num.digits.sort.reverse.join.to_i
#   return -1 if num == biggest_num
  
#   test_num = num + 1
  
#   until digits_match(num, test_num)
#     test_num += 1  
#   end
  
#   test_num
  
# end

# p next_bigger_number(9) == -1
# p next_bigger_number(12) == 21
# p next_bigger_number(513) == 531
# p next_bigger_number(2017) == 2071
# p next_bigger_number(111) == -1
# p next_bigger_number(123456789) == 123456798
# p next_bigger_number(151) == 511










































#example vids 3

=begin



# **Problem**
# =>	objective: find the max sum of a contiguous subsequence in an array of integers

# =>	input: array

# =>  	output: integer

# =>	rules:

# =>		explicit	-	max sum subarray
                  - contiguous subsequence in an array of integers
                  - first step is to find the subsequences
                  - second is to find the max value from adding them up
                  - 

# =>		implicit/edge cases - if the whole array is made up of negative numbers, return 0
                            - empty array has 0 as greatest sum 
                            - sequence has to start with positive number
                            - if the second number is negative, it cant make the 
                            - the numbers have to be next to each other, not sequential in value


# **Data Structure**
- array to whole subsequences

# **Implementation Notes**
- upto

# **Algorithm**
- get all subsequences
- find max sum


- initialize local var `sub_arrays`, assign to empty array
- iterate over the given `arr`, with indexes
  - from 0 to the end of the array (`end_idx`)
    - extract a sub array from the current index, to `end_idx`
    - append the sub array to `sub_arrays`
- iterate over sum arrays with transformation, returning their sums, then return the max
  

=end

# def max_sequence(arr)
#   return 0 if arr.empty? || arr.all?{|num| num < 0}
#   sub_arrays = []
#   arr.each_with_index do |int, idx|
#     0.upto(arr.size - idx) do |ending_idx|
#       sub_arrays << arr[idx..(idx + ending_idx)]
#     end
#   end
#   sub_arrays.max_by(&:sum).sum
# end





# def max_sequence(arr)
#   return 0 if arr.empty? || arr.all?{|num| num < 0}
#   sub_arrays = []
#   arr.each_with_index do |int, idx|
#     0.upto(arr.size - idx) do |ending_idx|
#       sub_arrays << arr[idx..(idx + ending_idx)]
#     end
#   end
#   sub_arrays.max_by(&:sum).sum
# end










# p max_sequence([]) == 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12











































=begin

# **Problem**
# =>	objective: return the longest commmon prefix

# =>	input: array of strings

# =>  	output: string, possiblt empty

# =>	rules:

# =>		explicit	-	write a method
                  - find the longest commons prefix amongst an array of strings
                  - if no prefix, return empty string

# =>		implicit/edge cases - no common prefix, return empty string


# **Data Structure**
- array 
- string for the return value

# **Implementation Notes**
- #all?

# **Algorithm**
  - initialize local var `first_letters`, assign to letters of the first word in the array
  - initialize local var `result`, assign to empty string
  - iterate over the letters in the `first_letters` array with indexes
    - if all the words in the given `array` have the same letter at that index, 
      - add the letter to the `result` string
      - otherwise, break
  - return `result` string

=end

# def common_prefix(array)
#   first_letters = array.first.chars
#   result = ''
#   first_letters.each_with_index do |char, idx|
#     if array.all?{ |word| word[idx] == char }
#       result << char
#     else
#       break
#     end
#   end
#   result
# end



# def common_prefix(array)
#   first_word_letters = array.first.chars
#   result = ''
  
#   first_word_letters.each_with_index do |char, idx|
#     array.all?{ |word| word[idx] == char } ? result << char : break
#   end
  
#   result
# end




# p common_prefix(["flower", "flow", "flight"]) == "fl"
# p common_prefix(["dog", "racecar", "car"]) == ""
# p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# p common_prefix(["throne", "dungeon"]) == ""
# p common_prefix(["throne", "throne"]) == "throne"











































=begin
vid 4 problem 1
# **Problem**
# =>	objective: given two strings, return true if they share a substirng of at least two
                  letters ignoring case

# =>	input: two strings

# =>  	output: boolean true or false

# =>	rules:

# =>		explicit	-	given 2 strings
                  - find out if there is a substring that appears in both strings
                  - return true if true, flase otherwise
                  - substrings are longer than one letter

# =>		implicit/edge cases - case sensitive?
                            - if either string is empty, return flase
                            - case insensitive, start by making both lower case
                            


# **Data Structure**
- array

# **Implementation Notes**
- #include?

# **Algorithm**
- high level
- get all substrings of both, check if any in the first are incuded in the second

- sub problem- get all substrings

- low level
- initialize local var `lower1`, assign to the lowercase version of the first string
- initialize local var `lower2`, assign to the lowercase version of the second string
- initialize local var `substrings1`, assign to an array of all (at least 2 letter) substrings
- initialize local var `substrings2`, assign to an array of all (at least 2 letter) substrings
- conditional expression if any substrings in substring1 are included in substring2

-subprobelm
- given a string, return all (at least) 2 letter substrings
- initialzie local var `result`, assign to empty array
- iterate over each char in the given string with indexes
  - from 0 to the (length of the string - current idx) param is `num`
  - append the substring to results, string from idx to idx + num
- return the array of strings



=end

# def get_all_substrings(string)
#   result = []
#   string.chars.each_with_index do |char, idx|
#     0.upto((string.length - 1) - idx) do |num|
#       result << string[idx..idx+num]
#     end
#   end
#   result.select { |substring| substring.length > 1 }
# end

# def substring_test(str1, str2)
#   lower1 = str1.downcase
#   lower2 = str2.downcase
#   substrings1 = get_all_substrings(lower1)
#   substrings2 = get_all_substrings(lower2)
#   substrings1.any? { |substring| substrings2.include?(substring) }  
# end


# def get_all_substrings(string)
#   result = []
#   string.chars.each_with_index do |char, idx|
#     1.upto((string.length - 1) - idx) do |length|
#       result << string[idx..idx+length]
#     end
#   end
#   result
# end

# def substring_test(str1, str2)
#   lower1 = str1.downcase
#   lower2 = str2.downcase
#   substrings1 = get_all_substrings(lower1)
#   substrings2 = get_all_substrings(lower2)
#   substrings1.any? { |substring| substrings2.include?(substring) }  
# end




# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true










=begin
vid 4 problem 2
# **Problem**
# =>	objective: given two strings, return true if a portion of the first matches the whole
                  second

# =>	input: two strings

# =>  	output: boolean true or false

# =>	rules:

# =>		explicit	-	given two strings
                  - return boolean obejct
                  - if a portion of the first can be rearranged to match the second
                  - return true, otherwise, false
                  - only lowercase, no punctuation

# =>		implicit/edge cases - second string is what is required letters


# **Data Structure**
- array to iterate through first string's chars
- array to hold the uniq chars of the second string

# **Implementation Notes**
- #include?
- #uniq

# **Algorithm**
- initialize local var `chars_needed`, assign to uniq chars of string2
- initialize lcoal var `chars_avail`, assign to iteration over string1 chars (#select)
  - if the char is included in the `chars_needed` array, keep it/return true
- conditional test to see if `chars_avail` is greater than or equal to 


- initialize local var `chars1`, assign to chars of string1
- initialize local var `chars2`, assign to chars of string2
- iterate over the uniq values of `chars2`, 
  - return false if the count of the `char` in chars2 is less than or equal to the count 
    - of the char in chars1
- let true be the last line executed if it makes it through the above iteration




=end

# require 'pry'

# def scramble(str1, str2)
#   chars1 = str1.chars
#   chars2 = str2.chars
#   chars2.uniq.each do |char|
#     return false if chars1.count(char) < chars2.count(char) 
#   end
#   true
# end

# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('scriptjava', 'javascript') == true
# p scramble('scriptingjava', 'javascript') == true


























=begin
# **Problem**
# =>	objective: given a sttring, return an integer representnig the longest palindrome length

# =>	input: string

# =>  	output:integer (length)

# =>	rules:

# =>		explicit	-	find the length of the longest substring in the given string
                  - that is the same in reverse, aka a palindrome
                  - return the length 
                  - return an integer
                  - if the given `string` is empty, return 0

# =>		implicit/edge cases - emptry string, return 0


# **Data Structure**
- array to hold all possible substrnigs

# **Implementation Notes**
- #upto

# **Algorithm**
- sub problem- get all of the substrings of the given string into an array
- initializ elocal var `results`, assign to empty array
- iterate over the chars in the given `string` with indexes param `idx`
  - from 0 up to the size of the (string - 1 - index) param `length`
  - append the string slice from idx to idx + length
- return the results array, filtered for palindromes

- pass given `string` to get_all_palindrome_substrings method, assign return value to
  local var `arr_of_palindromes`
- find the max by length of `arr_of_palindromes`, return the length


=end



# def get_all_palindrome_substrings(string)
#   results = []
#   string.chars.each_with_index do |char, idx|
#     0.upto(string.length - 1 - idx) do |length|
#       results << string[idx..(idx + length)]
#     end
#   end
  
#   results.select { |substring| substring == substring.reverse }
  
# end


# def longest_palindrome(string)
#   arr_of_palindromes = get_all_palindrome_substrings(string)
#   arr_of_palindromes.max_by(&:length).size
# end






=begin
another try



=end

# def longest_palindrome(string)
#   current_longest_palindrome = ''
  
#   string.chars.each_with_index do |char, idx|
#     0.upto(string.length - 1 - idx) do |length|
#       substring = string[idx..(idx + length)]
#       if substring == substring.reverse && substring.length > current_longest_palindrome.length
#         current_longest_palindrome = substring
#       end
#     end
#   end
  
#   current_longest_palindrome.length  
# end

# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baablkj12345432133d") == 9


















=begin
https://www.codewars.com/kata/520b9d2ad5c005041100000f/train/ruby

Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

Examples
pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('Hello world !')     # elloHay orldway !

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given a string of words
                  - move first letter of each word to the end of it then add 'ay' to the end of the word
                  - do not touch the punctuation marks
                  
# =>		implicit/edge cases - what to do with one letter words?
                            - apostrophes?
                            - when a word has a period at the end of it, make sure the period comes last

# **Data Structure**
- array of words

# **Implementation Notes**
- can call #include? on a string

# **Algorithm**
- initialize local var `words`, assign to given `string` split at the spaces
- initialize lcoal var `new_words`, iterate over `words` (transformation)
    - initialize local var `new_word`, concatenate the word from the index 1 to the end with the first index
    - if the `word` has a period, delete the period and add it to the end of `new_word`
- join `new_words` with spaces in between

=end


# def pig_it(string)
#   words = string.split
#   new_words = words.map do |word|
#     new_word = word[1..-1] + word[0] + "ay"
#     if word.include?('.')
#       new_word.delete!(".")
#       new_word << "."
#     end
    
#     new_word = word if word[0] == "!" || word[0] == "?"
#     new_word
#   end
#   new_words.join(" ")
# end




# def pig_it(string)
#   words = string.split
#   new_words = words.map do |word|
#     new_word = word[1..-1] + word[0] + "ay"
#     new_word = word if word[0] =~ /[^A-Za-z]/
#     new_word
#   end
#   new_words.join(" ")
# end




# p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
# p pig_it('This is my string') == 'hisTay siay ymay tringsay'
# p pig_it("O tempora o mores !") == "Oay emporatay oay oresmay !"
# p pig_it("Quis custodiet ipsos custodes ?") == "uisQay ustodietcay psosiay ustodescay ?"











































=begin
random code wars

Examples
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true
Constraints
0 <= input.length <= 100

Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. 
Furthermore, the input string may be empty and/or not contain any parentheses at all. 
Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	

# =>		implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
=end

# def valid_parentheses(str)
#   paren_only = str.chars.select { |char| char =="(" || char == ")" }
#   balance = 0
#   paren_only.each do  |paren|
#     paren == "(" ? balance += 1 : balance -= 1    
#     return false if balance < 0
#   end
#   balance == 0 ? true : false
# end

# p valid_parentheses("  (")    == false
# p valid_parentheses(")test")  == false
# p valid_parentheses("")       == true
# p valid_parentheses("hi())(") == false
# p valid_parentheses("hi(hi)()") == true 








































=begin
# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given an array of integers
                  - take the array and find the index N where the sum of the intgers to the left
                  - equals the sum to the right, the index N is not included
                  - if no index exists where this is true, return -1
                  - the sum of the left at index 0 is 0

# =>		implicit/edge cases - no index? return -1


# **Data Structure**
- array

# **Implementation Notes**
- array[0...0] == []

# **Algorithm**
- iterare over the elements of the given `array` with indexes `idx`
  - if the sum of the elements to the left of the current index is equal to the sum 
    - of the elements to the right of the current index, explicit return the `idx`
- if the program makes it through this iteration without returning, return -1



=end


# def find_even_index(array)
#   array.each_with_index do |int, idx|
#     return idx if array[0...idx].sum == array[(idx + 1)..-1].sum
#   end
#   -1
# end

# p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
# p find_even_index([1, 100, 50, -51, 1, 1]) == 1
# p find_even_index([1, 2, 3, 4, 5, 6]) == -1
# p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
# p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
# p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
# p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3










































=begin

56. Find the Nexus of the Codewars Universe
(https://www.codewars.com/kata/5453dce502949307cf000bff)
6 kyu
Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were the same number. I cried a little.

Complete the method that takes a hash/object/directory/association list of users, and find the nexus: the user whose rank is the closest is equal to his honor. 
Return the rank of this user. For each user, the key is the rank and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who come closest, return the one with the lowest rank (numeric value). 
The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.

Example
         rank    honor
users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,    <--- nexus
          23  =>  11,
          30  =>   2 }



# **Problem**
# =>	objective: given a hash of users with rank and honor, return the rank of the user with the least difference between their rank and honor 

# =>	input: hash 

# =>  	output:integer (rank)

# =>	rules:

# =>		explicit	-	given a hash of user's rank (keys) and honors (values)
                  - return the rank of the user who comes closest (or matches their honor)
                  - if no one has an exact match, return the one with the closest match. 
                  - if there are several users who tie, return the one iwth the lowest rank
                  - 

# =>		implicit/edge cases - doubles, return the one with the lowest rank


# **Data Structure**
- array for differences 
- hash for selection


# **Implementation Notes**


# **Algorithm**
- initialize local var `smallest_difference`, assign to an array of all the differences between rank and honor, then find the min
- initialize local var `least_difference_hash`, assign to return value from iterate over the given `users` hash with selection
  - if the difference between the key/value matches the `smallest_difference`, let the block return true,
  - otherwise false
- return the lowest rank of the `least_difference_hash`

=end

# def nexus(users)
#   smallest_difference = users.map { |rank, honor| (rank - honor).abs }.min
  
#   least_difference_hash = users.select do |rank, honor|
#     (rank - honor).abs == smallest_difference
#   end
  
#   least_difference_hash.min_by { |rank, _| rank }.first
# end

# def nexus(users)
#   users.min_by { |rank, honor| [(rank - honor).abs , rank] }.first
# end



# p nexus({1 => 3, 3 => 3, 5 => 1})           #== 3
# p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1})  #== 3
# p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1})  #== 2










































=begin
57. Count letters in string
(https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d)
6 kyu
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. 
The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.




# **Problem**
# =>	objective: given a string, return a hash with keys as letters and counts as values

# =>	input: string

# =>  	output: hash 

# =>	rules:

# =>		explicit	-	given a string, return a hash 
                  - count how many times a letter appears in the string
                  - letters will be lowercase
                  - letter as key, count as value, key is a symbol

# =>		implicit/edge cases - empty string???


# **Data Structure**
- array to iterate over letters
- hash to be returned

# **Implementation Notes**


# **Algorithm**
- initialize local var `uniq_lettters`, assign to unique letters of the given `string`
- iterate over `uniq_letters`, with object (hash)
  - add the letter (as a symbol) as a key and its count as a value to the hash 
  


=end


# def letter_count(string)
#   uniq_letters = string.chars.uniq
#   uniq_letters.each_with_object({}) do |char, letter_count_hash|
#     letter_count_hash[char.to_sym] = string.count(char)
#   end
# end

# def letter_count(string)
#   string.chars.each_with_object({}) do |char, letter_count_hash|
#     letter_count_hash[char.to_sym] = string.count(char)
#   end
# end

# p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}






















































=begin
Once upon a time, on a way through the old wild mountainous west,…
… a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.

Going to one direction and coming back the opposite direction right away is a needless effort. 
Since this is the wild west, with dreadfull weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!

How I crossed a mountainous desert the smart way.
The directions given to the man are, for example, the following (depending on the language):

["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
or
{ "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST" };
or
[North, South, South, East, West, North, West]
You can immediatly see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan.
A better plan in this case is simply:

["WEST"]
or
{ "WEST" }
or
[West]
Other examples:
In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away.

The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] (nil in Clojure).

In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but they become directly opposite after the reduction of "EAST" and "WEST" so the 
whole path is reducible to ["WEST", "WEST"].

Task
Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed (W<->E or S<->N side by side).

The Haskell version takes a list of directions with data Direction = North | East | West | South.
The Clojure version returns nil when the path is reduced to nothing.
The Rust version takes a slice of enum Direction {North, East, West, South}.
See more examples in "Sample Tests:"
Notes
Not all paths can be made simpler. The path ["NORTH", "WEST", "SOUTH", "EAST"] is not reducible. "NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite 
of each other and can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].
if you want to translate, please ask before translating.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given an array of strings/directions
                  - return a simplified array of directions that get you to the same point in the least amount of moves

# =>		implicit/edge cases - a north and a south negate each other, 
                            - so two norths and one south is 1 north, but 1 north and 1 south will stay
                            - confused on if the order of the direcitons matter


# **Data Structure**
- array of needed directions, reduced directions

# **Implementation Notes**


# **Algorithm**
- initialize local var `north_count`, assign to the count of the north in the given `arr_of_directions`
- same for east, west, south
- if north_count == south_count, set both to 1
- same for east and west
- if north is larger than south, subtract north - south and set south to 0
              - otherwise, substract the other way, and set north to 0
- do the same thing for east/west
- initialize local var `simplified_directions`, (using selection) 
  - if the corresponding count for the direction being iterated over is 0, 
  - return nil from the block
  - if its more than 1, subtract 1 from the count and return true from the block
=end


# def dir_reduc(arr_of_directions)
#   north_count = arr_of_directions.count("NORTH")
#   south_count = arr_of_directions.count("SOUTH")
#   east_count = arr_of_directions.count("EAST")
#   west_count = arr_of_directions.count("WEST")
  
#   if (north_count == south_count) && north_count != 1 
#     north_count, south_count = 0, 0
#   elsif north_count > south_count
#     north_count -= south_count
#     south_count = 0
#   elsif south_count > north_count
#     south_count -= north_count
#     north_count = 0
#   end
    
#   if east_count == west_count && east_count != 1
#     east_count, west_count = 0, 0
#   elsif east_count > west_count
#     east_count -= west_count
#     west_count = 0
#   elsif west_count > east_count
#     west_count -= east_count
#     east_count = 0
#   end
  
#   arr_of_directions.select do |direction|
#     case direction
    
#     when 'NORTH'
#       if north_count > 0
#         north_count -= 1
#         'NORTH'
#       else
#         nil
#       end
#     when 'SOUTH'
#       if south_count > 0
#         south_count -= 1
#         'SOUTH'
#       else
#         nil
#       end
#     when 'EAST'
#       if east_count > 0
#         east_count -= 1
#         'EAST'
#       else
#         nil
#       end
#     when 'WEST'
#       if west_count > 0
#         west_count -= 1
#         'WEST'
#       else
#         nil
#       end
#     end
    
#   end
  
  
# end


# a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# p dir_reduc(a) == ["WEST"]
# u=["NORTH", "WEST", "SOUTH", "EAST"]
# p dir_reduc(u) == ["NORTH", "WEST", "SOUTH", "EAST"]
# l = ["EAST", "WEST"]
# p dir_reduc(l) == []











































=begin
58. Triple trouble
(https://www.codewars.com/kata/55d5434f269c0c3f1b000058)
6 kyu
Write a function

triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

If this isn't the case, return 0



# **Problem**
# =>	objective: return 1 if the first arg has a triple and the second arg has a double of the same number

# =>	input: two integers

# =>  	output: 1 or 0

# =>	rules:

# =>		explicit	-	given two numbers (integers)
                  - return 1 if there is a straight triple at any place in the first arg
                  - AND a straight double of the same number in the second arg that was a triple in the first arg 
                  - if not, return 0
                  

# =>		implicit/edge cases - if the first number does not have a triple, return 0
                            - two triples? two doubles?
                            - triples need to be in a row


# **Data Structure**
- array 

# **Implementation Notes**


# **Algorithm**
- sub-problem- get_all_three_digit_combinations, given a string of numbers, return an array of 3 digits combos (as strings)
- init  `result` array
  - given a string of numbers, split the numbers and iterate over them with indexes
  - from the current index to 3+ current index, slice given string and append to result array'
- sub-problem- get_all_two_digit_combinations

main problem
- initialize local var `three_digit_combos`, assign to return value of passing the first arg to `get_all_three_digit_combinations`
- initialize local var `two_digit_combos`, assign to return value of passing the second arg to `get_all_two_digit_combinations`
- iterate over both arrays, filtering for elements with one number (#split, #uniq, #size should be equal to 1)
- if `triples` is empty OR `doubles` is empty, return 0
- otherwise, check if #any? of the elements' first value in `triples`, matches the first value of any elements of the `double` array
  - if it does, return 1, otherwise return 0

=end

# def get_all_three_digit_combos(num)
#   result = []
#   num.chars.each_with_index do |char, idx|
#     result << num[idx..(idx+2)] if idx < num.size - 2
#   end
#   result
# end


# def get_all_two_digit_combos(num)
#   result = []
#   num.chars.each_with_index do |char, idx|
#     result << num[idx..(idx+1)] if idx < num.size - 1
#   end
#   result
# end

# def triple_double(num1, num2)
#   three_digit_combos = get_all_three_digit_combos(num1.to_s)
#   two_digit_combos = get_all_two_digit_combos(num2.to_s)
#   triples = three_digit_combos.select { |arr| arr.chars.all? { |char| char == arr[0] } }
#   doubles = two_digit_combos.select { |arr| arr.chars.all? { |char| char == arr[0] } }
#   triple_nums = triples.map { |arr| arr[0] }
#   double_nums = doubles.map { |arr| arr[0] }
#   return 1 if triple_nums.any? { |num| double_nums.include?(num) }
#   return 0
# end










# def get_all_three_digit_combos(num)
#   result = []
#   num.chars.each_with_index do |char, idx|
#     result << num[idx..(idx+2)] if idx < num.size - 2
#   end
#   result.select { |arr| arr.chars.uniq.size == 1 }
# end


# def get_all_two_digit_combos(num)
#   result = []
#   num.chars.each_with_index do |char, idx|
#     result << num[idx..(idx+1)] if idx < num.size - 1
#   end
#   result.select { |arr| arr.chars.uniq.size == 1 }
# end

# def triple_double(num1, num2)
#   triple_nums = get_all_three_digit_combos(num1.to_s).map { |arr| arr[0] }
#   double_nums = get_all_two_digit_combos(num2.to_s).map { |arr| arr[0] }

#   return 1 if triple_nums.any? { |num| double_nums.include?(num) }
#   return 0
# end



# p triple_double(12345, 12345) == 0
# p triple_double(666789, 12345667) == 1
# p triple_double(451999277, 41177722899) == 1
# p triple_double(1222345, 12345) == 0
# p triple_double(122234555, 122345) == 1










































=begin

59. Which are in?
(https://www.codewars.com/kata/550554fd08b86f84fe000a58)
6 kyu
Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.

#Example 1: a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

#Example 2: a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []


Beware: r must be without duplicates.
Don't mutate the inputs.

# **Problem**
# =>	objective: given two arrays of strings, return a sorted array of elements from the first that are substrings of the elements of the second

# =>	input: two arrays

# =>  	output: one array, sorted with unique elements

# =>	rules:

# =>		explicit	-	given two arrays
                  - return a sorted array
                  - of the strings from the first array that are substrings of strings in the second array
                  - don't mutate the arrays

# =>		implicit/edge cases - return value should only have uniq values


# **Data Structure**
- arrays

# **Implementation Notes**
- #include? on string with another stirng as input

# **Algorithm**
- initialize local var `substrings`, assign to return value from iterating over the elements in the first array (#select)
  - for each element, test to see if #any? elements of the second array #include? the string being iterated over in the first
- get the uniq values of the `substring` array, sort it 



=end

# def lexi_sort(arr1, arr2)
#   substrings = arr1.select do |string1|
#     arr2.any? { |string2| string2.include?(string1) }
#   end.sort
# end

# a1 = ["arp", "live", "strong"]

# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# p lexi_sort(a1, a2) #==  ["arp", "live", "strong"]

# a3 = ["tarp", "mice", "bull"]

# a4 = ["lively", "alive", "harp", "sharp", "armstrong"]

# p lexi_sort(a3, a4) #== []

















































=begin
60. Format a string of names like 'Bart, Lisa & Maggie'.
(https://www.codewars.com/kata/53368a47e38700bd8300030d2) 
6 kyu
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.


# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given an array of hashes with 'name' as the key, and the string name as a value
                  - return a string
                  - with all names as a list
                  - separated by commas except for the last two names, which should be separated by an '&'
                  - all hashes only has letters, - and .

# =>		implicit/edge cases - if you receive an empty hash, return an empty string
                            - if there is only one name, return the one name, no comma or anything


# **Data Structure**
- array to hold the list of names

# **Implementation Notes**
- case statement? 

# **Algorithm**
- initialize local var `names_arr`, assign it to iterating over the given `hash_of_names`, and extracting the names
- start a case statment with `names_arr` size
- if its 0, return an empty string
- if its 1, just return the name
- if its two, return the names with an ampersand in between them
- if its more than two, return each name with a comma after it besides the second to last one, which should have an ampersand after it, and the last one which shouldn't have anything
=end

# def list(hash_of_names)
#   names_arr = hash_of_names.map { |hash| hash[:name] }
#   result = ''
#   case names_arr.size
#   when 0 
#     result = ''
#   when 1
#     result = "#{names_arr[0]}"
#   when 2
#     result = "#{names_arr[0]} & #{names_arr[1]}"
#   when (3..)

#     names_arr.each_with_index do |name, idx|
#       if idx <= (names_arr.size - 3)
#         result << "#{name}, "
#       elsif idx == (names_arr.size - 2)
#         result << "#{name} & "
#       else
#         result << "#{name}"
#       end
    
#     end
  
#   end

#   result
# end



# def list(hash_of_names)
#   names_arr = hash_of_names.map { |hash| hash[:name] }
#   return '' if names_arr.size == 0
#   result = ''
#   names_arr.each_with_index do |name, idx|
#       if idx <= (names_arr.size - 3)
#         result << "#{name}, "
#       elsif idx == (names_arr.size - 2)
#         result << "#{name} & "
#       else
#         result << "#{name}"
#       end
    
#     end

#   result
# end




# p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) == 'Bart, Lisa & Maggie'

# p list([ {name: 'Bart'}, {name: 'Lisa'} ]) == 'Bart & Lisa'

# p list([ {name: 'Bart'} ]) == 'Bart'

# p list([]) == ''






































=begin

61. Find the missing letter
(https://www.codewars.com/kata/5839edaa6754d6fec10000a2)
6 kyu
#Find the missing letter

Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

# **Problem**
# =>	objective: given an array of letters, return the letter that is missing from the sequence

# =>	input: array of letters

# =>  	output: string, one character

# =>	rules:

# =>		explicit	-	given an array of letters
                  - can be uppercase or lower case
                  - made up of consecutive letters
                  - but one letter is missing
                  - return the missing letter
                  - will always receive a valid array, exactly on letter will be missing
                  - length of array will always be 2
                  - array will have letters in only one case

# =>		implicit/edge cases - will the missing letter always be in the middle? 


# **Data Structure**
- array

# **Implementation Notes**
- #detect
- #each_with_index
-#ord

# **Algorithm**
- iterate over the given `arr_of_letters`, with index
  - skip index 0
  - for each `letter`, 
  - initialize local var `next_letter`, assign to the letter than should come next
  - if the next letter in the array does not match `next_letter`, return `next_letter`
  - return the letter if the ASCII order number is not one more than the ASCII order value of the letter at the previous index

=end


# def missing_letter(arr_of_letters)
#   arr_of_letters.each_with_index do |letter, idx|
#     next_letter = (letter.ord + 1).chr
#     return next_letter if next_letter != arr_of_letters[idx+1]
#   end
# end
















=begin
algo
- initialize constant `UPPER_AND_LOWERCASE_LETTERS`, assign to a hash where letters are keys and numbers are values
  - initialize local var `all_letters`, assign to array == ('A'..'Z').to_a.concat(('a'..'z').to_a)
  - initialize local var `all_numbers`, assign to an array of 1 to 52
  - zip the two arrays together and convert to a hash 
- iterate over the given `arr_of_letters` w indexes
  - for each letter, 
  - initialize local var `next_letter`, assign to the letter that should come nect
  - compare `next_letter` to the next letter in the `arr_of_letters`
  - if they are not the same, return `next_letter`
=end

# all_letters = ('A'..'Z').to_a.concat(('a'..'z').to_a)
# all_numbers = (1..52).to_a
# LETTERS_TO_NUMBERS = all_letters.zip(all_numbers).to_h
# NUMBERS_TO_LETTERS = all_numbers.zip(all_letters).to_h


# def missing_letter(arr_of_letters)
#   arr_of_letters.each_with_index do |letter, idx|
#     next_letter = NUMBERS_TO_LETTERS[LETTERS_TO_NUMBERS[letter] + 1]
#     return next_letter if arr_of_letters[idx + 1] != next_letter
#   end
# end




# p missing_letter(['a','b','c','d','f']) == 'e' 
# p missing_letter(['O','Q','R','S']) == 'P'

































=begin
62. Who likes it?
(https://www.codewars.com/kata/5266876b8f4bf2da9b000362)
6 kyu
You probably know the "like" system from Facebook and other pages. 
People can "like" blog posts, pictures or other items. 
We want to create the text that should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. 
It must return the display text as shown in the examples:

# **Problem**
# =>	objective: given an array of names, return a string with the proper syntax depending on how many names are given

# =>	input: array of names  

# =>  	output: string 

# =>	rules:

# =>		explicit	-	given an input array
                  - containing the people that like the item
                  - return the proper text with the names

# =>		implicit/edge cases - no names? no one likes this
                            - 1 person? ______ likes this
                            - 2 people? ____ and ____ like this
                            - 3 people? ______, _____ and ______ like this
                            - 4 or more people? ______, _____ and 


# **Data Structure**
- array, string

# **Implementation Notes**
- 

# **Algorithm**
- case statement based on the size of the given array
- if 0, "no one likes this"
- if 1, ____ likes this
- etc



=end

# def likes(arr_of_names)
#   case arr_of_names.size
#   when 0
#     "no one likes this"
#   when 1
#     "#{arr_of_names[0]} likes this"
#   when 2
#     "#{arr_of_names[0]} and #{arr_of_names[1]} like this"
#   when 3
#     "#{arr_of_names[0]}, #{arr_of_names[1]} and #{arr_of_names[2]} like this"
#   when (4..)
#     "#{arr_of_names[0]}, #{arr_of_names[1]} and #{arr_of_names.size - 2} others like this"
#   end
  
# end


# p likes( [] ) ==  "no one likes this"
# p likes(["Peter"]) == "Peter likes this"
# p likes(["Jacob", "Alex"]) == "Jacob and Alex like this"
# p likes(["Max", "John", "Mark"]) == "Max, John and Mark like this"
# p likes(["Alex", "Jacob", "Mark", "Max"]) == "Alex, Jacob and 2 others like this"











































=begin
63. Find The Parity Outlier
(https://www.codewars.com/kata/5526fc09a1bbd946250002dc)
6 kyu
You are given an array (which will have a length of at least 3, but could be very large) containing integers. 
The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. 
Write a method that takes the array as an argument and returns this "outlier" N.

# **Problem**
# =>	objective: given an array of integers, return the odd one out

# =>	input: array of integers

# =>  	output: integer

# =>	rules:

# =>		explicit	-	given an array of integers
                  - with a length of at least 3
                  - its either all even or all odd, except one
                  - return the exception

# =>		implicit/edge cases -


# **Data Structure**
- array

# **Implementation Notes**


# **Algorithm**
- if the count of even nums in the given `array` is greater than 1, 
- return the first odd num
- otherwise, return the first even num 


=end

# def parity_outlier(arr_of_nums) 
#   arr_of_nums.count{ |num| num.even? } > 1 ? arr_of_nums.detect { |num| num.odd? } : arr_of_nums.detect { |num| num.even? }

# end

# p parity_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
# p parity_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160










































=begin
64. Is Integer Array?
(https://www.codewars.com/kata/52a112d9488f506ae7000b95)
6 kyu
Write a function with the signature shown below:

def is_int_array(arr)
  true
end
returns true / True if every element in an array is an integer or a float with no decimals.
returns true / True if array is empty.
returns false / False for every other input.

# **Problem**
# =>	objective: given an array, return true if all elements are integers or floats with no decimals

# =>	input: array 

# =>  	output: boolean

# =>	rules:

# =>		explicit	-	given an array of a mix of types of data
                  - return true if every element in the array is an integer or a float with no decimals

# =>		implicit/edge cases - if the integer minus the integer version of the number is 0, then the number is an integer or a float with no decimal 


# **Data Structure**
- array, 
- returning boolean object

# **Implementation Notes**


# **Algorithm**
- check if #all? elements of the array are 
  - if they are an integer or a float
    - if float
      - does the float minus the integer version of itself evaluate to 0
    - else true
  - else return false


=end

# def is_int_array(arr)
#   arr.all? do |element|
#     if element.is_a? (Integer)
#       true
#     elsif element.is_a? (Float)
#       element - element.to_i == 0
#     else
#       false
#     end
#   end
# end






# p is_int_array([1, 2, 3]) == true
# p is_int_array([1, 2.0, 3.0]) == true
# p is_int_array([1, 2, 3.5]) == false
# p is_int_array([]) == true
# p is_int_array([1, 'a', 3]) == false










































=begin
65. Reversing and Combining Text
(https://www.codewars.com/kata/56b861671d36bb0aa8000819/train/ruby)

Your task is to Reverse and Combine Words.

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
  (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result…


# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given a string
                  - can be one word or multiple
                  - words separated by spaces
                  - if more than one word, reverse each word and combine the first with the second, third with fourth etc
                  - if there is an odd number of words, last one stays alone, but also needs to be reversed
                  - do this again until there is only one word without spaces
                  - return the result

# =>		implicit/edge cases - if its one word, return the word as is


# **Data Structure**
- array 
- loop 

# **Implementation Notes**
- #shift(2)

# **Algorithm**
- initialize local var `words`, assign to an array of the given strings' words reversed
- return the first element if `words` size is 1
- initialize local var `num_of_iterations`, assign to return value from if statement
  - if size of `words` is even, divide by two
  - otherwise, add 1 and divide by 2
- from 1 upto num_of_iterations 
  - reassign the `words` array to the return value that comes from passing the `words` array to the `combine_text` method
- join the `words` array

-sub_problem
- combine text method, given an array of words, combine first two, second two, etc
- return a new array 
  - initialize local var `new_arr`, assign to empty array
  - loop 
    - shift the first two elements from the given array, combine them, append them to `new_arr`
    - break if given `arr` is empty
=end
# require 'pry'

# def combine_text(arr)
#   new_arr = []
#   loop do 
#     new_arr << arr.shift(2).join
#     break if arr.empty?
#   end
#   new_arr
# end

# def reverse_and_combine_text(string)
#   words = string.split
#   return words.first if words.size == 1
#   until words.size == 1 do
#     words = combine_text(words.map(&:reverse))
#   end
#   words.first
# end
















=begin
- initialize local var `words`, assign to the words of the given string
- return given `str` if `words` size is 1
- initialize local var `words_reversed`, assign to an array of the wrods reversed
- initialize local var `words_combined`, assign to an empty array
  - until `words_reversed` is empty
    - append the first two elements of `words_reversed` joined to `words_combined`
- recursion----- passing `words_combined` joined with spaces to `reverse_and_combine_text`
  - 
=end



# def reverse_and_combine_text(string)
#   words = string.split
#   return string if words.size == 1
#   words_reversed = words.map(&:reverse)
#   words_combined = []
#   until words_reversed.empty? do 
#     words_combined << words_reversed.shift(2).join
#   end
#   reverse_and_combine_text(words_combined.join(" "))
# end





# p reverse_and_combine_text("abc def") == "cbafed"
# p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
# p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
# p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
# p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"













































=begin
66. Integer reduction
(https://www.codewars.com/kata/59fd6d2332b8b9955200005f/ruby) 


In this Kata, you will be given two integers n and k and your task is to remove k-digits from n and return the lowest number possible, without changing the order of the digits in n. 
Return the result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 and return the lowest possible number. 
The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', because we have removed 8 and 9.



# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given two inteegrs, n and k
                  - task is to remove k digits from n and return the lowest possible number, without changing the order of the digits
                  - return the result as a string
                  

# =>		implicit/edge cases - no zeroes


# **Data Structure**
- array for the possibilities 
- array for the digits


# **Implementation Notes**


# **Algorithm**

- initialize local var `lowest_num`, assign to the result from passing `n` to the `get_lowest_number` method
- initialize local var `times`, assign to evaluation of `k` minus 1
- `times` times, 
  - reassign the `lowest_num` to the result from passing the current `lowest_num` to the ``get_lowest_number` method
- return `lowest_num`



sub problem
- given an integer, return the lowest possible number by removing one digit
- initialiaze local var `digits`, assign to the digits of the given `n` in proper order (#digits, #reverse)
- initialize local var `possibilities`, assign to an empty array 
- initialize local var `dig_to_skip`, assign to 0
- loop 
  - append to `possibilities` the result of `digits` being iterated over
    - false if the number matches `dig_to_skip`
    - otherwise, true
    - join the numbers and convert it to an integer
  - increment `dig to skip`
  - break when `dig to skip` is equal to the size of the digits array
- return the lowest number in the `possibilities` array

=end
require 'pry'
# def get_lowest_number(int)
#   digits = int.chars
#   possibilities = []
#   dig_to_skip = 0
#   loop do
#     possibilities << digits.select.with_index { |num, idx| idx != dig_to_skip }.join
    
#     dig_to_skip += 1
#     break if dig_to_skip == digits.size
#   end
#   # binding.pry
#   possibilities.min_by(&:to_i)
# end


# def solve(n, k)
#   lowest_num = get_lowest_number(n.to_s)
#   times = k - 1
#   times.times do |iteration|
#     lowest_num = get_lowest_number(lowest_num)
#   end
#   lowest_num
# end




# def get_lowest_number(int)
#   digits = int.chars
#   possibilities = []
#   dig_to_skip = 0
  
#   until dig_to_skip == digits.size
#     possibilities << digits.select.with_index { |num, idx| idx != dig_to_skip }.join
#     dig_to_skip += 1
#   end

#   possibilities.min_by(&:to_i)
# end


# def solve(n, k)
#   lowest_num = get_lowest_number(n.to_s)
#   (k - 1).times do |_|
#     lowest_num = get_lowest_number(lowest_num)
#   end
#   lowest_num
# end



# def get_lowest_number(int)
#   digits = int.chars
#   possibilities = []
#   dig_to_skip = 0
  
#   until dig_to_skip == digits.size
#     possibilities << digits.select.with_index { |num, idx| idx != dig_to_skip }.join
#     dig_to_skip += 1
#   end

#   possibilities.min_by(&:to_i)
# end


# def solve(n, k)
#   lowest_num = get_lowest_number(n.to_s)
#   return lowest_num if k == 1
#   solve(lowest_num, k - 1)
# end

# #if the answer is a string, keep them as stirngs, compare as integers


# p solve(123056,1) == '12056'
# p solve(123056,2) == '1056'
# p solve(123056,3) == '056'
# p solve(123056,4) == '05'
# p solve(1284569,4) == '124'












































=begin
51. Reverse or rotate?
(https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991)
6 kyu
Reverse or rotate?
The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz (ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. 
Put together these modified chunks and return the result as a string.

If

sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".
Examples:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> "" 
revrot("563000655734469485", 4) --> "0365065073456944"

# **Problem**
# =>	objective: given a string of digits anda chunk size, test each chunk for reversal or roatation then join the modified chunks together

# =>	input: string, and integer

# =>  	output: string

# =>	rules:

# =>		explicit	-	input is a string or a string of digits
                  - cut the string into chunks of `sz`, the second given argument
                  - ignore the last chunk if its size is less than sz
                  - if the sum of the cubes of the digits in the chunk is even, reverse the digits in teh chunk
                  - otherwise rotate by one posiiton
                  - join the chunks back and return a string
                  - is sz is 0 or string is empty, return ''
                  

# =>		implicit/edge cases - sz is 0 or string is empty, return ''
                            - if sz is > length of the string, return ''


# **Data Structure**
- array

# **Implementation Notes**
- a.chars.each_slice(3) { |slice| p slice } 

# **Algorithm**
- initialize local var `arr_of_slices`, assign to empty array
- split given `string` into chars, and iterate over #each_slice for chunk sizes of `sz`
  -  if the size of the slice is `sz`, append the slice to the `arr_of_slices` array
- destructively iterate over `arr_of_slices` (#map)
  - if the sum of the cubes of the digits is even 
    - reverse the chunk
  - otherwise, rotate it
- flatten and join `arr_of_chunks`


=end



# def revrot(string, sz)
#   return '' if sz == 0
#   arr_of_slices = []
#   string.chars.each_slice(sz) { |chunk| arr_of_slices << chunk if chunk.size == sz }
  
#   arr_of_slices.map! do |chunk|
#     sum_of_cubes = chunk.reduce(0) { |sum, digit| sum + (digit.to_i ** 3) }
#     sum_of_cubes.even? ? chunk.reverse : ( chunk[1..-1] + [chunk[0]] )
#   end
  
#   arr_of_slices.flatten.join
  
# end


# p revrot("1234", 0) == ""
# p revrot("", 0) == ""
# p revrot("1234", 5) == ""
# p revrot("733049910872815764", 5) == "330479108928157"
# p revrot("123456987654", 6)       == "234561876549"
# p revrot("123456987653", 6) == "234561356789"
# p revrot("66443875", 4) == "44668753"
# p revrot("66443875", 8) == "64438756"
# p revrot("664438769", 8) == "67834466"
# p revrot("123456779", 8) == "23456771"
# p revrot("", 8) == ""
# p revrot("123456779", 0) == ""
# p revrot("563000655734469485", 4) == "0365065073456944"












































=begin
30. Anagram difference
(https://www.codewars.com/kata/5b1b27c8f60e99a467000041)
6 kyu
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.


# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given two words, 
                  - how many letters do you have to remove to make them anagrams (make them have the same letters)
                  - ignore case, all will be lower

# =>		implicit/edge cases - 


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
- initialize local var `total_size`, assign to size of both words added
- initialize local var `total_removed_from_first`, assign to 0
- iterate over the uniq chars in `first_word`
  - if the char count is larger in teh first than in the second
    - increment `total_removed_from_first_word` by the difference in teh counts
  the count of this letter in this word is larger than the count of this letter in the seoc
- initialize local var `final_word_size`, assign to size of first word minus the `total_removed_from_first`
- return `total_size` minus  ( `final_word_size` times 2 )

=end


# def anagram_difference(str1, str2)
#   total_size = str1.size + str2.size
#   total_removed_from_first = 0
  
#   str1.chars.uniq.each do |char|
#     count_in_first = str1.count(char)
#     count_in_second = str2.count(char)
#     total_removed_from_first += (count_in_first - count_in_second) if count_in_first > count_in_second
#   end
  
#   final_word_size = str1.size - total_removed_from_first
#   total_size - (final_word_size * 2)
  
# end

# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') == 10
# p anagram_difference('hackerrank', 'codewars') == 10











































=begin
https://www.codewars.com/kata/54e6533c92449cc251001667
Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original
order of elements.



# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given a string
                  - return a list of the characters in the string
                  - the array it returns should not have any elements with the same value next to each other

# =>		implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
- initialize local var `chars`, assign to the chars of the given string
- iterate over chars, (#select) with indexes
  - if the index is 0, return the value
  - otherwise, if  the element at the previous index is the same as this one, return nil from the block
              - otherwise, return the element
              




=end

# def unique_in_order(sequence)
#   chars = sequence.is_a?(Array) ? sequence : sequence.chars
  
#   chars.select.with_index do |char, idx|
#     idx == 0 ? char : chars[idx-1] == char ? nil : char
#   end

# end






# def unique_in_order(sequence)
#   chars = sequence.is_a?(Array) ? sequence : sequence.chars
  
#   chars.select.with_index do |char, idx|
#     (idx == 0 || chars[idx-1] != char) ? char : nil
#   end

# end

# p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# p unique_in_order([1,2,2,3,3])       == [1,2,3]










































=begin
In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

Examples

Notes
All numbers are valid Int32, no need to validate them.
There will always be at least one number in the input string.
Output string must be two numbers separated by a single space, and highest number is first.

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given a string of space separated numbers
                  - return the highest and lowest number in a string separated by a space

# =>		implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
- initialize local var `nums`, assign to integers in the given string
- return a string with string interpolation getting the max and min from `nums`



=end
# def high_and_low(string)
#   nums = string.split.map(&:to_i)
#   "#{nums.max} #{nums.min}"
  
# end


# p high_and_low("1 2 3 4 5")  == "5 1"
# p high_and_low("1 2 -3 4 5") == "5 -3"
# p high_and_low("1 9 3 4 -5") == "9 -5"













































=begin
Can you find the needle in the haystack?

Write a function findNeedle() that takes an array full of junk but containing one "needle"

After your function finds the needle it should return a message (as a string) that says:

"found the needle at position " plus the index it found the needle, so:

find_needle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])
should return "found the needle at position 5"

# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	given an array of a mix of data types, return a string that gives you the index that the string 'needle' is 

# =>		implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
- initialize local var `index`, find index of the stirng 'needle'
- interpolate in string

=end

# def find_needle(list)
#   index = list.find_index('needle')
#   "found the needle at position #{index}"
# end

  
# p find_needle(['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false]) == 'found the needle at position 3'
# p find_needle(['283497238987234', 'a dog', 'a cat', 'some random junk', 'a piece of hay', 'needle', 'something somebody lost a while ago']) == 'found the needle at position 5'
# p find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,'needle',1,2,3,4,5,5,6,5,4,32,3,45,54]) == 'found the needle at position 30'
# p find_needle(['needle',1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54]) == 'found the needle at position 0'
# p find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54,'needle']) == 'found the needle at position 43'











































=begin
Weight for weight
https://www.codewars.com/kata/55c6126177c9441a570000cc
My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last 
on the list which means he is the heaviest.

I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. 
The weight of a number will be from now on the sum of its digits.

For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99.

Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

Example:
"56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: 

"100 180 90 56 65 74 68 86 99"
When two numbers have the same "weight", let us class them as if they were strings (alphabetical ordering) and not numbers:

180 is before 90 since, having the same "weight" (9), it comes before as a string.

All numbers in the list are positive numbers and the list can be empty.

Notes
it may happen that the input string have leading, trailing whitespaces and more than a unique whitespace between two consecutive numbers


# **Problem**
# =>	objective: given a string of numbers, return the string ordered by sums of digits. 

# =>	input: string

# =>  	output: string

# =>	rules:

# =>		explicit	-	the weight of a number is the sum of its digits
                  - if two numbers have the same weight, order them as they were strings, 
                  - all nums are positive and the list can be empty
                  - we may have leading/trailing whitespace and more than one whitespaces bewteen chars

# =>		implicit/edge cases - emptry string, return empty string


# **Data Structure**
- array

# **Implementation Notes**
- <=>
- #sort_by

# **Algorithm**
- initialize local var `nums`, assign to array of numbers
- sort the numbers by the sum of their digits
  - if its equal, just sort it normally
  - otherwise, sort by digit sums
- join the nums in a string
=end

# def order_weight(number_string)
#   nums = number_string.split
#   nums.sort do |a, b|
#     sum_a = a.to_i.digits.sum
#     sum_b = b.to_i.digits.sum
#     if sum_a == sum_b
#       a <=> b
#     else
#       sum_a <=> sum_b
#     end
#   end.join(" ")
  
# end


# def order_weight(number_string)
#   nums = number_string.split
#   nums.sort do |a, b|
#     sum_a = a.to_i.digits.sum
#     sum_b = b.to_i.digits.sum
#     sum_a == sum_b ? a <=> b : sum_a <=> sum_b
#   end.join(" ")
  
# end




# def order_weight(number_string)
#   nums = number_string.split
#   nums.sort_by { |num| [num.to_i.digits.sum, num]}.join(" ")
# end








# p order_weight("103 123 4444 99 2000") == "2000 103 123 4444 99"
# p order_weight("") == ""
# p order_weight(" 103 123 4444  99     2000  ") == "2000 103 123 4444 99"
# p order_weight("56 65 74 100 99 68 86 180 90") == "100 180 90 56 65 74 68 86 99"
# p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123") == "11 11 2000 10003 22 123 1234000 44444444 9999"



































=begin

https://www.codewars.com/kata/52bc74d4ac05d0945d00054e
Write a function named first_non_repeating_letter that takes a string input, and returns the first character that is not repeated anywhere in the string.

For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. 
For example, the input 'sTreSS' should return 'T'.

If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

# **Problem**
# =>	objective: given a string, return the first letter that only has one occurence

# =>	input: string

# =>  	output: string one char

# =>	rules:

# =>		explicit	-	given a string
                  - return the first character that is not repeated anywhere in the stirng
                  - return the first character with a count of 1 in the string
                  - upper and lowercase letters are considered the same but you mmust return the correct case

# =>		implicit/edge cases -


# **Data Structure**
- array

# **Implementation Notes**


# **Algorithm**
- initialize local var `lowercase`, asssign to the lowercase version of the given `stirng`
- #detect the first letter whose lowercase version has only one occurence in the string `lowercase`

=end


# def first_non_repeating_letter(string)
#   lowercase = string.downcase
#   result = string.chars.detect do |char|
#     lowercase.count(char.downcase) == 1
#   end
#   result == nil ? '' : result
# end

# p first_non_repeating_letter('a') == 'a'
# p first_non_repeating_letter('stress') == 't'
# p first_non_repeating_letter('sTress') == 'T'
# p first_non_repeating_letter('moonmen') == 'e'
# p first_non_repeating_letter('') == ''


















































=begin
https://www.codewars.com/kata/5270d0d18625160ada0000e4
Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. 
You will always be given an array with five six-sided dice values.

 Three 1's => 1000 points
 Three 6's =>  600 points
 Three 5's =>  500 points
 Three 4's =>  400 points
 Three 3's =>  300 points
 Three 2's =>  200 points
 One   1   =>  100 points
 One   5   =>   50 point
A single die can only be counted once in each roll. 
For example, a given "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

Example scoring

 Throw       Score
 ---------   ------------------
 5 1 3 4 1   250:  50 (for the 5) + 2 * 100 (for the 1s)
 1 1 1 3 1   1100: 1000 (for three 1s) + 100 (for the other 1)
 2 4 4 5 4   450:  400 (for three 4s) + 50 (for the 5)
In some languages, it is possible to mutate the input to the function. This is something that you should never do. If you mutate the input, you will not be able to pass all the tests.


# **Problem**
# =>	objective: given an array of scores, return an integer representing the game score

# =>	input: array of integers

# =>  	output: integer

# =>	rules:

# =>		explicit	-	given an array of 5 scores
                  - return an integer represengting the score 
                  - 3 of a kind has certain point values, then one 1 is worth 100 pts, and one 5 is worth 50 pts
                  - a single die can only be counted once
                  - DO NOT MUTATE the input

# =>		implicit/edge cases - score of 0 


# **Data Structure**
- given array 
- intermediate: array
- integer

# **Implementation Notes**
- #count
- #gsub
- #dup

# **Algorithm**
- initialize local var `scores_as_string`, assign to the given scores array joined into a string
- initialize local var `triple`, index assign the first element of the array tha is returned from iterating (#select) the elements of the array that have a #count of 3
- initialize local var `final_score`, assign to 0
- if triple is a truthy value, 
  - send that value to the `get_triple_score` method and increment score
  - remove (#sub) the triple score 3 times from the `scores_as_string` string
- increment `final_score` by the count of 1s multiplied by 100
- increment `final_score` by the count of 5s multiplied by 50
- return `final_score`

- HASH CONSTANT W TRIPLE SCORES
  - 



=end

# TRIPLE_SCORES = { 1 => 1000, 
#                   6 => 600,
#                   5 => 500,
#                   4 => 400,
#                   3 => 300,
#                   2 => 200  }


# def score(arr_of_scores)
#   scores_as_string = arr_of_scores.join
#   triple = arr_of_scores.select { |num| arr_of_scores.count(num) >= 3 }[0]
#   final_score = 0
#   if !triple.nil?
#     final_score += TRIPLE_SCORES[triple]
#     3.times { |_| scores_as_string.sub!(triple.to_s, "") }
#   end
#   final_score += scores_as_string.count('1') * 100
#   final_score += scores_as_string.count('5') * 50
# end



# p score( [2, 3, 4, 6, 2] ) == 0 
# p score( [2, 2, 2, 3, 3] ) == 200 
# p score( [2, 4, 4, 5, 4] ) == 450
# p score( [2, 5, 5, 5, 5] ) == 550
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
=begin
Sum of Pairs
Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
== [3, 7]

sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * entire pair is earlier, and therefore is the correct answer
== [4, 2]

sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
== None/nil/undefined (Based on the language)

sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * entire pair is earlier, and therefore is the correct answer
== [3, 7]
Negative numbers and duplicate numbers can and will appear.

NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.


# **Problem**
# =>	objective: given a list of numbers and a sum, return the pair that occurs first and adds to the sum 

# =>	input: array and integer

# =>  	output: array of 2 elements integers

# =>	rules:

# =>		explicit	-	given an array of integers
                  -  and a sum
                  - return the first pairs that, when added, evaluates to the sum
                  - return the first pair, meaning the entire pair occurs earlier in the sequence, meaning the index of the last element of the pair is smaller than the index of the other pairs elements
                  - if there are no pairs that produce the sum, return nil
                  - can be given duplicate and negaitve numbers

# =>		implicit/edge cases - no pairs add to sum, return nil


# **Data Structure**
- given array, integer
- array
- return array

# **Implementation Notes**
-  #a.combination(2).to_a

# **Algorithm**
- initialize local var `combinations`, assign to a nested array of 2 element arrays with all the combinations from the given `list_of_nums`
- initialize local var `last_index`, assign to the size of the given `list_of_nums` minus 1
- initialize local var `counter`, assign to 1
- indexes of last, []
- from 1 upto last index `current`
  - from current up to last index
    - append num to indexes of last


- then pop while iterating over `combinations`


- iterate over the arrays in `combinations`
  - append counter to the end of each array
  - if counter < 5
    - increment counter
  - otherwise, counter = 1
- sort `combinations` by the last elements
- #detect the first element in `combinations` whose first two elements add up to the sum
- return the first two elements in that array as an array

=end


# def sum_pairs(list_of_nums, sum)
#   combinations = list_of_nums.combination(2).to_a
#   last_index = list_of_nums.size - 1
#   indexes_of_last = []
  
#   1.upto(last_index) do |current|
#     current.upto(last_index) do |index|
#       indexes_of_last << index
#     end
#   end  

#   combinations.each { |array_pair|  array_pair << indexes_of_last.shift }
#   winning_combo = combinations.sort_by { |array_pair| array_pair[2] }.detect { |array_pair| array_pair[0] + array_pair[1] == sum }
#   winning_combo.nil? ? nil : winning_combo[0..1]
# end


















# l1= [1, 4, 8, 7, 3, 15]
# l2= [1, -2, 3, 0, -6, 1]
# l3= [20, -13, 40]
# l4= [1, 2, 3, 4, 1, 0]
# l5= [10, 5, 2, 3, 7, 5]
# l6= [4, -2, 3, 3, 4]
# l7= [0, 2, 0]
# l8= [5, 9, 13, -3]

# p sum_pairs(l1, 8) == [1, 7]
# p sum_pairs(l2, -6) == [0, -6]
# p sum_pairs(l3, -7) == nil
# p sum_pairs(l4, 2) == [1, 1]
# p sum_pairs(l5, 10) == [3, 7]
# p sum_pairs(l6, 8) == [4, 4]
# p sum_pairs(l7, 0) == [0, 0]
# p sum_pairs(l8, 10) == [13, -3]











































=begin
John and Mary want to travel between a few towns A, B, C ... Mary has on a sheet of paper a list of distances between these towns. ls = [50, 55, 57, 58, 60].
John is tired of driving and he says to Mary that he doesn't want to drive more than t = 174 miles and he will visit only 3 towns.

Which distances, hence which towns, they will choose so that the sum of the distances is the biggest possible to please Mary and John?

Example:
With list ls and 3 towns to visit they can make a choice between: [50,55,57],[50,55,58],[50,55,60],[50,57,58],[50,57,60],[50,58,60],[55,57,58],[55,57,60],[55,58,60],[57,58,60].

The sums of distances are then: 162, 163, 165, 165, 167, 168, 170, 172, 173, 175.

The biggest possible sum taking a limit of 174 into account is then 173 and the distances of the 3 corresponding towns is [55, 58, 60].

The function chooseBestSum (or choose_best_sum or ... depending on the language) will take as parameters:
t (maximum sum of distances, integer >= 0)
k (number of towns to visit, k >= 1)
ls (list of distances, all distances are positive or zero integers and this list has at least one element).
The function returns the "best" sum ie the biggest possible sum of k distances less than or equal to the given limit t, if that sum exists, or otherwise nil


Examples:
ts = [50, 55, 56, 57, 58] choose_best_sum(163, 3, ts) -> 163

xs = [50] choose_best_sum(163, 3, xs) -> nil (or null or ... or -1 (C++, C, Rust, Swift, Go, ...)

ys = [91, 74, 73, 85, 73, 81, 87] choose_best_sum(230, 3, ys) -> 228

Notes:
try not to modify the input list of distances ls
in some languages this "list" is in fact a string (see the Sample Tests).

# **Problem**
# =>	objective: given a max distance, a number of towns and a lsit of distances, return the biggest possible sum of the required distances that is equal to or under the max distance

# =>	input: 2 integers, an array

# =>  	output: an integer

# =>	rules:

# =>		explicit	-	given a max distance `t`, a number of towns to visit `k` and a list of distances `ls` as an array, return the best `k` number of town to visit while staying under or equal to `t`

# =>		implicit/edge cases - if the sum doesnt exist, return nil
                            - if the number of `ls` is less than the number `k`, return nil
                            - don't modify the input


# **Data Structure**
- array to hold the possible combos


# **Implementation Notes**
- #combination(`k`)

# **Algorithm**
- initialize local var `combinations`, assign to all possible combinations of number `k` size from the `ls` list , convert to array
- initialize local var `valid_combination_sums`, iterate over `combinations`, #map sums,  #select for sums that are less than or equal to the `t`
- return the #max of `valid_combinations`,  


- initailize local var `combinations`, assign to empty array 
- from 0 up to 


=end


# def choose_best_sum(max_distance, num_of_towns, list_of_distances)
#   combinations = list_of_distances.combination(num_of_towns).to_a
#   combinations.map(&:sum).select { |sum| sum <= max_distance }.max
# end






# ts = [50, 55, 56, 57, 58]
# p choose_best_sum(163, 3, ts) == 163
# ts = [50]
# p choose_best_sum(163, 3, ts) == nil
# ts = [91, 74, 73, 85, 73, 81, 87]
# p choose_best_sum(230, 3, ts) == 228










































=begin
https://www.codewars.com/kata/5279f6fe5ab7f447890006a7/solutions/ruby
pick peaks

In this kata, you will write a function that returns the positions and the values of the "peaks" (or local maxima) of a numeric array.

For example, the array arr = [0, 1, 2, 5, 1, 0] has a peak at position 3 with a value of 5 (since arr[3] equals 5).

The output will be returned as an object with two properties: pos and peaks. Both of these properties should be arrays. If there is no peak in the given array, then the output should be {pos: [], peaks: []}.

Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) should return {pos: [3, 7], peaks: [6, 3]} (or equivalent in other languages)

All input arrays will be valid integer arrays (although it could still be empty), so you won't need to validate the input.

The first and last elements of the array will not be considered as peaks (in the context of a mathematical function, we don't know what is after and before and therefore, we don't know if it is a peak or not).

Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while [1, 2, 2, 2, 3] and [1, 2, 2, 2, 2] do not. 
In case of a plateau-peak, please only return the position and value of the beginning of the plateau. 
For example: pickPeaks([1, 2, 2, 2, 1]) returns {pos: [1], peaks: [2]} (or equivalent in other languages)

Have fun!

# **Problem**
# =>	objective: given an array of integers, return a hash with the positions and vlaues of the peaks

# =>	input: array of integers

# =>  	output: hash 

# =>	rules:

# =>		explicit	-	given an array
                  - find the indexes of the peaks and the values
                  - return a hash with two key/value pairs pos, peaks
                  - both values in the hash should be arrays
                  - all input array are valid
                  - can be empty
                  - first and last elements of the array are not peaks 
                  - if there are plateaus, return the position of the beginning plateaus
                  - Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while [1, 2, 2, 2, 3] and [1, 2, 2, 2, 2] do not. 

# =>		implicit/edge cases - no peak? {pos: [], peaks: []}
                            - a number is a peak if the numbers directly next to it (left and right) are both lower than the number
                            - if there are repeats, test the next numebr that is not the current number
 

# **Data Structure**
- array for intermediate
- return the hash 

# **Implementation Notes**


# **Algorithm**
- initialize local var `result`, assign to hash with keys 'pos' and 'peaks' and values both empty arrays
- iterate over the elements in the given `int_arr`
  - skip the first and last elements
  - skip if this element is the same as the last element
  - skip if either the previous num OR next num are bigger than current num
  - initialize local var `prev_num`
  - initialize local var `next_num`
  
  - if the next number is the same as this number, 
    - compare this number to the next different number
    - until next number does not equal this number OR you run out of elements (aka idx reaches the size), reassign next number to the next number  

  - if the previous number and the next number are less than the current number
    - add the 'pos' and 'peaks' to the `result` array

  
- return `result` hash

=end

# def pick_peaks(int_arr)
#   result = {"pos" => [], "peaks" => []}
#   int_arr.each_with_index do |int, idx|
#     next if idx == 0 || idx == (int_arr.size - 1)
#     next if int_arr[idx] == int_arr[idx - 1]
#     next if (int_arr[idx-1] > int_arr[idx]) || (int_arr[idx+1] > int_arr[idx])
#     prev_num = int_arr[idx-1] 
#     next_num = int_arr[idx+1]
    
#     if next_num == int
#       counter = 2
#       loop do 
#         next_num = int_arr[idx+counter]
#         break if next_num != int || next_num.nil?
#         counter += 1
#       end
#     end
    
#     return result if next_num.nil?
    
#     if (prev_num < int) && (next_num < int)
#       result['pos'] << idx
#       result['peaks'] << int
#     end
  
#   end
  
#   result
# end

# def invalid(int, idx, int_arr)
#   return true if idx == 0 || idx == (int_arr.size - 1)
#   return true if int_arr[idx] == int_arr[idx - 1]
#   return true if (int_arr[idx-1] > int_arr[idx]) || (int_arr[idx+1] > int_arr[idx])
#   false
# end


# def pick_peaks(int_arr)
#   result = {"pos" => [], "peaks" => []}
#   int_arr.each_with_index do |int, idx|
#     next if invalid(int, idx, int_arr)
#     prev_num = int_arr[idx-1] 
#     next_num = int_arr[(idx+1)..-1].detect{ |poss_next_num| poss_next_num != int }
#     return result if next_num.nil?
    
#     if (prev_num < int) && (next_num < int)
#       result['pos'] << idx
#       result['peaks'] << int
#     end
  
#   end
  
#   result
# end


# #NOT MINE

# require 'pry'

# def pick_peaks(array)
#   pos = []
#   peak = nil
#   (1...array.size).each do |index|
#     if array[index] > array[index-1]
#       peak = index
#       binding.pry
#     elsif array[index] < array[index-1] && peak
#       pos << peak
#       peak = nil
#       binding.pry
#     end
#   end

#   { "pos" => pos, "peaks" => pos.map { |p| array[p] } }
# end
# p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
# # p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
# # p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
# # p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
# # p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}
# # p pick_peaks([1, 2, 2, 2, 3]) == {"pos"=>[], "peaks"=>[]}
# # p pick_peaks([1, 2, 2, 2, 2]) == {"pos"=>[], "peaks"=>[]}
# # p pick_peaks([2, 2, 2, 2, 2]) == {"pos"=>[], "peaks"=>[]}
# # p pick_peaks([2, 2, 3, 2, 2]) == {"pos"=>[2], "peaks"=>[3]}
# # p pick_peaks([8, 14, 4, 1, 3, 1, 7, 7]) == {"pos"=>[1, 4], "peaks"=>[14, 3]}










































=begin
Enough is enough!
Alice and Bob were on a holiday. Both of them took many pictures of the places they've been, and now they want to show Charlie their entire collection. 
However, Charlie doesn't like these sessions, since the motive usually repeats. He isn't fond of seeing the Eiffel tower 40 times. 
He tells them that he will only sit during the session if they show the same motive at most N times. 
Luckily, Alice and Bob are able to encode the motive as a number. Can you help them to remove numbers such that their list contains each number only up to N times, without changing the order?

Task
Given a list lst and a number N, create a new list that contains each number of lst at most N times without reordering. 
For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, 
and then take 3, which leads to [1,2,3,1,2,3].

Example
  delete_nth ([1,1,1,1],2) # return [1,1]
  
  delete_nth ([20,37,20,21],1) # return [20,37,21]
  
# **Problem**
# =>	objective: given a list and an integer, return an array (maintaining the order of the orginal array) where no elements exceed the occurence number given 

# =>	input: array and integer

# =>  	output: array 

# =>	rules:

# =>		explicit	-	given an array and a max occurence number, 
                  - return the array without any elements that occur more times than the given occurence max number. 
                  - deleting the excess elements

# =>		implicit/edge cases - 


# **Data Structure**
- array 

# **Implementation Notes**
- #count
- #select

# **Algorithm**
- iterate over the given `lst`, with indexes
  - if the slice of the array from 0 to this index has more than `max_times` occurences, nil
  - otherwise true


=end
# def delete_nth(int_array, max_times)
#   int_array.select.with_index do |int, idx|
#     int_array[0..idx].count(int) > max_times ? false : true
#   end  
# end








=begin
algo
- 

=end


# def delete_nth(int_array, max_times)
  
# end


# p delete_nth([20,37,20,21], 1) #== [20,37,21]
# # p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1, 1, 3, 3, 7, 2, 2, 2]
# # p delete_nth([1,1,1,1],2) == [1,1]
# # p delete_nth([20,37,20,21],1) == [20,37,21]













































=begin
Complete the method/function so that it converts dash/underscore delimited words into camel casing. 
The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

Examples
"the-stealth-warrior" gets converted to "theStealthWarrior"
"The_Stealth_Warrior" gets converted to "TheStealthWarrior"


# **Problem**
# =>	objective: given a string, return the string in camel case

# =>	input: string

# =>  	output: string 

# =>	rules:

# =>		explicit	-	given an underscore or dash delimited string, convert to camel case
                  - if the first letter of the given string is cap, same for the return value
                  - 

# =>		implicit/edge cases - empty string returns empty string
                            - camel case, first is lowercase, rest are uppercase
                            - except if the first in the gven string is uppercase
 

# **Data Structure**
- array 

# **Implementation Notes**
- #split

# **Algorithm**
- `split_words`, if the given string #include? a '-', split by the dash, 
      -  otherwise, split by the '_'
- `capitalized`, assign to iterating over split words, capitalizing all but the first
- `result`, assign to joining words in `capitalized`, 
- if the first letter of the given `string` is uppercase, make the first letter of the `result` uppercase
- return uppercase




=end

# def to_camel_case(string)
#   split_words = string.include?("-") ? string.split("-") : string.split("_")
#   capitalized = split_words.map.with_index { |word, idx| idx == 0 ? word : word.capitalize }
#   capitalized.join
# end





=begin
  
=end


# def to_camel_case(string)
#   string.split(/[^A-Za-z]/)  
# end


# p to_camel_case('')                     #== ''
# p to_camel_case("the_stealth_warrior")  #== "theStealthWarrior"
# p to_camel_case("The-Stealth-Warrior")  #== "TheStealthWarrior"
# p to_camel_case("A-B-C")                #== "ABC"













































=begin
A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).

For example, take 153 (3 digits), which is narcisstic:

    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
and 1652 (4 digits), which isn't:

    1^4 + 6^4 + 5^4 + 2^4 = 1 + 1296 + 625 + 16 = 1938
The Challenge:

Your code must return true or false (not 'true' and 'false') depending upon whether the given number is a Narcissistic number in base 10. This may be True and False in your language, e.g. PHP.

Error checking for text strings or other invalid inputs is not required, only valid positive non-zero integers will be passed into the function.


# **Problem**
# =>	objective: 

# =>	input: integer

# =>  	output: boolean true flase

# =>	rules:

# =>		explicit	-	narcissistic is pos number, which is the sum of its own digits, each raised to the power of the number of digits 

# =>		implicit/edge cases -


# **Data Structure**
- array of digits

# **Implementation Notes**


# **Algorithm**
- `digits`, assign to an arrray of the digits in the given intger
- `exponent`, assign to the number of digits in the given integer
- sum the digits in `digits` raised to `exponent` and conditionally check if they are equal to the given integer
 


=end

# def narcissistic?(int)
#   exponent = int.to_s.size
#   int.digits.reduce(0) { |sum, digit| sum + (digit**exponent) } == int
# end


# p narcissistic?(5)        == true
# p narcissistic?( 153 )    == true
# p narcissistic?( 1633 )   == false












































=begin
Build Tower
Build Tower by the following given argument:
number of floors (integer and always greater than 0).

for example, a tower of 3 floors looks like below

[
  '  *  ', 
  ' *** ', 
  '*****'
]
and a tower of 6 floors looks like below

[
  '     *     ', 
  '    ***    ', 
  '   *****   ', 
  '  *******  ', 
  ' ********* ', 
  '***********'
]


# **Problem**
# =>	objective: given a floor number, return the specified tree

# =>	input: integer

# =>  	output: array

# =>	rules:

# =>		explicit	-	given an integer, always greater than 0
                  - return an array

# =>		implicit/edge cases - floor number corrresponds to the # of stars, 
                            - total - stars = spaces, maybe have to divide by 2
                            - each floor will have ____ chars, get by getting `floors` nth odd number


# **Data Structure**
- array 

# **Implementation Notes**


# **Algorithm**
- `total_chars`, assign to 1
- if `floors` > 1, from 1 up to `floors`, reassign `total_chars` to be incremented by 2
- `stars`, assign to 1
- `spaces` , assign to (`total_chars` - stars) / 2
- `result`, assign to empty array
- from 1 up to `floors`
    - append spaces + stars + spaces to `result` array
    - increment stars by 2
    - recalculate spaces
- return `result` array

=end

# def towerBuilder(floors)
#   total_chars = 1
  
#   if floors > 1
#     2.upto(floors) { |_| total_chars += 2 } 
#   end
  
#   stars = 1
#   spaces = (total_chars - stars) / 2
#   result = []
  
#   1.upto(floors) do |_|
#     result << (" " * spaces) + ("*" * stars) +  (" " * spaces)
#     stars += 2
#     spaces = (total_chars - stars) / 2
#   end
  
#   result
# end

# p towerBuilder(1) == ['*']
# p towerBuilder(2) == [' * ', '***']
# p towerBuilder(3) == ['  *  ', ' *** ', '*****']
# p towerBuilder(6) ==  ['     *     ', '    ***    ', '   *****   ', '  *******  ', ' ********* ', '***********' ]











































=begin
Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value.
The indices of these items should then be returned in a tuple like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

Based on: http://oj.leetcode.com/problems/two-sum/




# **Problem**
# =>	objective: given an array and a target, return an array of the indexes that add to the target

# =>	input: array and integer

# =>  	output: array

# =>	rules:

# =>		explicit	-	given an array of integers and a target integer
                  - return an array of the indexes of the integers from the array that, when added, evaluate to the target value
                  - should be two different items in the array 
                  - input will always be valid, 2 elements or greater and all items are intgers, there will always be an answer

# =>		implicit/edge cases -


# **Data Structure**
- array 

# **Implementation Notes**
- double #upto to get all combos

# **Algorithm**
- from 0 up to the second to last index of the given `int_arr`, parameter `first_index`
  - from 1 up to length of `int_arr` minus `first_index`, parameter `add_to_first_index`
    - if the element at `first_index` plus the element at the second index equal the target, return an array with the indexes
=end

# def two_sum(int_arr, target)
#   0.upto(int_arr.size - 2) do |first_index|
#     1.upto(int_arr.size - first_index - 1) do |add_to_first_index|
#       if (int_arr[first_index] + int_arr[first_index + add_to_first_index]) == target
#         return [first_index, (first_index + add_to_first_index)]
#       end
#     end
#   end
# end




=begin
algo
- get all combinations and select the ones that add to the target
- make a copy of the int_arr
- on the first solution, 
  - get the index of the first occurence of the first num
  - replace that index with nil in the copy of int array
  - get index of second num
=end


# def two_sum(int_arr, target)
#   winning_combo = int_arr.combination(2).detect { |combo_arr| combo_arr.sum == target }
#   int_arr_copy = int_arr.map { |int| int.dup }
#   result = []
#   index_of_first = int_arr_copy.index(winning_combo[0])
#   int_arr_copy[index_of_first] = nil
#   index_of_second = int_arr_copy.index(winning_combo[1])
#   [index_of_first, index_of_second]
# end



# p two_sum([1, 2, 3], 4) == [0, 2]
# p two_sum([1234, 5678, 9012], 14690) == [1, 2]
# p two_sum([2, 2, 3], 4) == [0, 1]



#the other thing that could have been done is each_with_index twice on the same thing, and test that the indexes were not the same when you explicit return the answer










































=begin
Your task is to construct a building which will be a pile of n cubes. The cube at the bottom will have a volume of n^3, the cube above will have volume of (n-1)^3 and so on until the top which 
will have a volume of 1^3.

You are given the total volume m of the building. Being given m can you find the number n of cubes you will have to build?

The parameter of the function findNb (find_nb, find-nb, findNb, ...) will be an integer m and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there
is no such n.

Examples:


# **Problem**
# =>	objective: 

# =>	input: 

# =>  	output:

# =>	rules:

# =>		explicit	-	construct a building which will be a pile of `n` cubes
                  - cube at the bottom will have volume `n` ^ 3
                  - cube second to the bottom will have volume (`n` - 1) ^ 3
                  - top will have volume of 1 ^ 3
                  - we are given the total voluem `m` of the building
                  - find the number of cubes you will have to build
                  - given integer, `m`, return integer `n`, 
                  - m = n^3 + (n-1)^3 + (n-2)^3 + 1^3

# =>		implicit/edge cases - return -1 if no `n` exists 


# **Data Structure**
- array to hold `n` and all `n`'s until 1

# **Implementation Notes**
- reduce
- downto
- range

# **Algorithm**
- `n`, assign it to 1
- loop 
  - create a range from 1 to `n`, convert to array
  - take sum of all numbers cubed
  - if sum  is equal to given `m` , return `n`
  - els if sum > `m` , return -1
  - otherwise, increment `n` and loop again



=end

# def find_nb(m) 
#   n = 1
#   loop do 
#     sum = (1..n).to_a.reduce(0) { |sum, int| sum + int**3 } 
    
#     if sum == m 
#       return n
#     elsif sum > m
#       return -1
#     else
#       n += 1
#     end
  
#   end
# end

# # p find_nb(1071225) == 45
# # p find_nb(91716553919377) == -1
# # p find_nb(4183059834009) == 2022
# p find_nb(24723578342962) == -1
# p find_nb(135440716410000) == 4824
# p find_nb(40539911473216) == 3568








































=begin

You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

Examples:
strarr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], k = 2

Concatenate the consecutive strings of strarr by 2, we get:

treefoling   (length 10)  concatenation of strarr[0] and strarr[1]
folingtrashy ("      12)  concatenation of strarr[1] and strarr[2]
trashyblue   ("      10)  concatenation of strarr[2] and strarr[3]
blueabcdef   ("      10)  concatenation of strarr[3] and strarr[4]
abcdefuvwxyz ("      12)  concatenation of strarr[4] and strarr[5]

Two strings are the longest: "folingtrashy" and "abcdefuvwxyz".
The first that came is "folingtrashy" so 
longest_consec(strarr, 2) should return "folingtrashy".

In the same way:
longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
n being the length of the string array, if n = 0 or k > n or k <= 0 return "" (return Nothing in Elm).

Note
consecutive strings : follow one after another without an interruption


# **Problem**
# =>	objective: return the longest string that can be made up of `k` elements from the given array

# =>	input: given an array of strings and an integer

# =>  	output: string

# =>	rules:

# =>	explicit	-	given an array of strings and an integer
                - return the first longest string, consisting of k consecuive strings taken in the array 
                - return the string that is the longest and occurs first
                - consecutive strings follow each other
                

# =>	implicit/edge cases - - if gievn an empty array, or if given integer is longer than given array , or given integer is 0, return '' empty string


# **Data Structure**
- array to hold string combinations


# **Implementation Notes**


# **Algorithm**
- `possible_combinations`, assign to empty array
- from 0 up to array size - `k` (param `starting_index`)
  - append to result the slice of the given array from `starting_index` to `starting_index` + `k`, joined
- return the max_by size in `possible_combinations`


=end


# def  longest_consec(arr_of_strings, k)
#   return '' if arr_of_strings.empty? || k > arr_of_strings.size || k <= 0
#   possible_combinations = []
#   0.upto(arr_of_strings.size - k) do |starting_index|
#     possible_combinations << arr_of_strings[starting_index...(starting_index + k)].join
#   end
#   possible_combinations.max_by(&:length)
# end


# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2) == "abigailtheta"
# p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
# p longest_consec([], 3) == ""
# p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
# p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
# p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""












































=begin
Define a function that takes one integer argument and returns logical value true or false depending on if the integer is a prime.

Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

Requirements
You can assume you will be given an integer input.
You can not assume that the integer will be only positive. You may be given negative numbers as well (or 0).
NOTE on performance: There are no fancy optimizations required, but still the most trivial solutions might time out. Numbers go up to 2^31 (or similar, depends on language version). 
Looping all the way up to n, or n/2, will be too slow.


# **Problem**
# =>objective: given an integer, return true/false if its is prime

# =>input: integer

# =>output: boolean value

# =>rules:

# =>explicit	-	given an integer, return a boolean true if the integer is prime
              - number > 1
              - no positive divisors other than 1 and itself
              - given integer, 
              - can be given negative numbers also
              - don't loop all the way up

# =>implicit/edge cases - any number less than or eqaul to 0, return false


# **Data Structure**
- array of values from 1 to given int / 2

# **Implementation Notes**


# **Algorithm**
- range from 1 to given `int` / 2, convert to array
- see if #any? give a 0 remainder when int % element
- return the opposite of ^^



=end

# def is_prime(int)
#   return false if int <= 1
#   return true if int == 2
#   !(2..(int / 2) ).to_a.any? { |factor| (int % factor) == 0 }
# end

# p is_prime(1) == false 
# p is_prime(2) == true
# p is_prime(3) == true
# p is_prime(-1) == false
# p is_prime(4) == false
# p is_prime(100) == false
# p is_prime(999) == false
# p is_prime(958297) == false
# p is_prime(-7) == false











































=begin

Description
Middle Earth is about to go to war. The forces of good will have many battles with the forces of evil. Different races will certainly be involved. 
Each race has a certain worth when battling against others. On the side of good we have the following races, with their associated worth:

Hobbits: 1
Men: 2
Elves: 3
Dwarves: 3
Eagles: 4
Wizards: 10
On the side of evil we have:

Orcs: 1
Men: 2
Wargs: 2
Goblins: 2
Uruk Hai: 3
Trolls: 5
Wizards: 10
Although weather, location, supplies and valor play a part in any battle, if you add up the worth of the side of good and compare it with the worth of the side of evil, 
the side with the larger worth will tend to win.

Thus, given the count of each of the races on the side of good, followed by the count of each of the races on the side of evil, determine which side wins.

Input:
The function will be given two parameters. Each parameter will be a string of multiple integers separated by a single space. Each string will contain the count of each race on the side of good and evil.

The first parameter will contain the count of each race on the side of good in the following order:

Hobbits, Men, Elves, Dwarves, Eagles, Wizards.
The second parameter will contain the count of each race on the side of evil in the following order:

Orcs, Men, Wargs, Goblins, Uruk Hai, Trolls, Wizards.
All values are non-negative integers. The resulting sum of the worth for each side will not exceed the limit of a 32-bit integer.

Output:
Return "Battle Result: Good triumphs over Evil" if good wins, "Battle Result: Evil eradicates all trace of Good" if evil wins, or "Battle Result: No victor on this battle field" if it ends in a tie.


# **Problem**
# =>objective: given two strings of integers, return which side will win depending on their weights

# =>input: two strings of integers

# =>output: string

# =>rules:

# =>explicit	-	first argument given, Hobbits, Men, Elves, Dwarves, Eagles, Wizards. count in that order
              - second , Orcs, Men, Wargs, Goblins, Uruk Hai, Trolls, Wizards.
              - all values non-negative integers
              - 

# =>implicit/edge cases -


# **Data Structure**
  - array to hold weights of good and evil
  - array to hold count of good and evil
  - sum good
  - sum evil


# **Implementation Notes**


# **Algorithm**
  - `good_weights` = array of the weights that correspond with the way the method will receive the integers
  - `evil_weights`, "" evil
  - `sum_good`, #map with index over the integers of the given string(after converting to array) , multiply each by its corresponding weight in `good_weights`
  - `sum_evil`, "" evil
  - if `sum_good` == `sum_bad`, tie message, if more  good message, otherwise, evil message
=end



# def get_sum(good_count, evil_count)
#   good_weights = [1, 2, 3, 3, 4, 10]
#   evil_weights = [1, 2, 2, 2, 3, 5, 10]
#   sum_good = good_count.split.map.with_index { |count, idx| count.to_i * good_weights[idx] }.sum
#   sum_evil = evil_count.split.map.with_index { |count, idx| count.to_i * evil_weights[idx] }.sum
#   [sum_good, sum_evil]
# end

# def good_vs_evil(good_count, evil_count)
#   sum_good, sum_evil = get_sum(good_count, evil_count)
#   if sum_good == sum_evil
#     'Battle Result: No victor on this battle field'
#   elsif sum_good > sum_evil
#     'Battle Result: Good triumphs over Evil'
#   else
#     "Battle Result: Evil eradicates all trace of Good"
#   end
# end


# p good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0') == 'Battle Result: No victor on this battle field' 
# p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0') == 'Battle Result: Good triumphs over Evil'
# p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0') == 'Battle Result: Good triumphs over Evil'











































=begin
Given a lowercase string that has alphabetic characters only and no spaces, return the highest value of consonant substrings. Consonants are any letters of the alphabet except "aeiou".

We shall assign the following values: a = 1, b = 2, c = 3, .... z = 26.

For example, for the word "zodiacs", let's cross out the vowels. We get: "z o d ia cs"

-- The consonant substrings are: "z", "d" and "cs" and the values are z = 26, d = 4 and cs = 3 + 19 = 22. The highest is 26.
solve("zodiacs") = 26

For the word "strength", solve("strength") = 57
-- The consonant substrings are: "str" and "ngth" with values "str" = 19 + 20 + 18 = 57 and "ngth" = 14 + 7 + 20 + 8 = 49. The highest is 57.

# **Problem**
# =>objective: given a string, return the highest value consonant substring

# =>input: string

# =>output: integer

# =>rules:

# =>explicit	-	alphabet only, no spaces
              - given string, return the highest value of consonant substrings
              - values will be order in alphabet

# =>implicit/edge cases - 


# **Data Structure**
- array to hold the consonant substrings

# **Implementation Notes**
- #ord - 96
- #split at the vowels
- #reduce
- "zodiacs".split(/[aeiou]/)
- .reject(&:empty?)

# **Algorithm**
- `vowel_substrings`, split given `string` at the vowels, remove spaces
- `values`, iterate over vowel substrings
  - get the chars, sum the value numbers
- return the max from `values`


=end

# def solve(string)
#   vowel_substrings = string.split(/[aeiou]/).reject(&:empty?)
#   values = vowel_substrings.map do |substring|
#     substring.chars.reduce(0) { |sum, char| sum + (char.ord - 96) } 
#   end
#   values.max
# end

# p solve("zodiac") == 26
# p solve("chruschtschov") == 80
# p solve("khrushchev") == 38
# p solve("strength") == 57
# p solve("catchphrase") == 73
# p solve("twelfthstreet") == 103
# p solve("mischtschenkoana") == 80 










































=begin
John has invited some friends. His list is:

s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
Could you make a program that

makes this string uppercase
gives it sorted in alphabetical order by last name.
When the last names are the same, sort them by first name. Last name and first name of a guest come in the result between parentheses separated by a comma.

So the result of function meeting(s) will be:

"(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"
It can happen that in two distinct families with the same family name two people have the same first name too.

Notes
You can see another examples in the "Sample tests".

# **Problem**
# =>objective: given a string of names, make all letters capital, format names as specified, sort names by last name, then first name

# =>input: string

# =>output: string

# =>rules:

# =>explicit	-	given a string of names, separated by ';", first/last names separated by ':'
              - make all names uppercase
              - sort by last name, then first name
              - format names (LAST, FIRST)

# =>implicit/edge cases -


# **Data Structure**
- array to hold the names

# **Implementation Notes**


# **Algorithm**
- sub problem- `format_name`
  - given a string FIRST:LAST, return (LAST, FIRST)
  - `names`, split at the ':'
  - return string formatted using interpolation
  
- `uppercase_split`, make all letters uppercase, split at the ';'
- `names_formatted`, iterate over names in `uppercase_split`
  - send ueach to `format_name`
- `names_formatted`, sort , join with no spaces

=end

# def format_name(name)
#   names = name.split(':')
#   "(#{names[1]}, #{names[0]})"
# end

# def meeting(string)
#   uppercase_split = string.upcase.split(';')
#   names_formatted = uppercase_split.map do |name|
#     format_name(name)
#   end
#   names_formatted.sort.join
# end


# p meeting("Alexis:Wahl;John:Bell;Victoria:Schwarz;Abba:Dorny;Grace:Meta;Ann:Arno;Madison:STAN;Alex:Cornwell;Lewis:Kern;Megan:Stan;Alex:Korn") == "(ARNO, ANN)(BELL, JOHN)(CORNWELL, ALEX)(DORNY, ABBA)(KERN, LEWIS)(KORN, ALEX)(META, GRACE)(SCHWARZ, VICTORIA)(STAN, MADISON)(STAN, MEGAN)(WAHL, ALEXIS)"
# p meeting("John:Gates;Michael:Wahl;Megan:Bell;Paul:Dorries;James:Dorny;Lewis:Steve;Alex:Meta;Elizabeth:Russel;Anna:Korn;Ann:Kern;Amber:Cornwell") == "(BELL, MEGAN)(CORNWELL, AMBER)(DORNY, JAMES)(DORRIES, PAUL)(GATES, JOHN)(KERN, ANN)(KORN, ANNA)(META, ALEX)(RUSSEL, ELIZABETH)(STEVE, LEWIS)(WAHL, MICHAEL)"
# p meeting("Alex:Arno;Alissa:Cornwell;Sarah:Bell;Andrew:Dorries;Ann:Kern;Haley:Arno;Paul:Dorny;Madison:Kern") == "(ARNO, ALEX)(ARNO, HALEY)(BELL, SARAH)(CORNWELL, ALISSA)(DORNY, PAUL)(DORRIES, ANDREW)(KERN, ANN)(KERN, MADISON)"
        
        
        
        
        
        
        
        

































=begin
Please write a function that will take a string as input and return a hash. The string will be formatted as such. The key will always be a symbol and the value will always be an integer.

"a=1, b=2, c=3, d=4"
This string should return a hash that looks like

{ :a => 1, :b => 2, :c => 3, :d => 4}

# **Problem**
# =>objective: given a string, return a hash 

# =>input: string

# =>output: hash with symbols as keys

# =>rules:

# =>explicit	-	given a string
              - in hash format with letters as keys and integers as values
              - return a hash 
              - key as a symbol

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**
- split at the comma space
- split at the equal sign


# **Algorithm**
- `string_letters_and_integers`, split at the comma space, split at the equals sign so you have a nested array of string letters and string integers
- `formatted`, iterate over `string_lettesr_and_integers`
  - convert the first element in each sub array to a symbol, the second to an integer
- convert the whole thing to a hash 

=end

# def str_to_hash(string)
#   string_letters_and_integers = string.split(", ").map { |key_val_combo| key_val_combo.split("=") } 
#   formatted = string_letters_and_integers.map do |sub_array|
#     [sub_array[0].to_sym, sub_array[1].to_i]
#   end
#   formatted.to_h
  
# end

# p str_to_hash("a=1, b=2, c=3, d=4") == { :a => 1, :b => 2, :c => 3, :d => 4}
# p str_to_hash("") == { }











































=begin
Get Indices of Item Weights

Given a package with a weight limit limit and an array arr of item weights, implement a method (ruby)/function (javascript) that finds two items 
whose sum of weights equals the weight limit limit. Your method/function should return a pair ex. [i, j] of the indices of the item weights. If such a pair doesn’t exist, return nil/null.

Constraints: Returned Array elements could not be the same index position so [1, 1] would not be acceptable...

Return the first pair, a.k.a lexographically speaking, that sums up to the limit

[input] array.integer arr 2 ≤ arr.length ≤ 100

[input] integer limit

[output] array.integer

# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	given an array and an integer limit
              - return a pair of indexes that add up to the target limit
              - cannot be the same index

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
- iterate over given `arr` with indexes (`int1`, `idx1`)
  - iterate over given `arr` with indexes (`int2`, `idx2`)
  - if int1 + int2 equal the given `limit` and they indexes are not the same, return the pair of indexes
- if it makes it through, return nil





=end

# def get_indices_of_item_weights(arr, limit)
#   arr.each_with_index do |int1, idx1|
#     arr.each_with_index do |int2, idx2|
#       return [idx1, idx2] if (int1 + int2 == limit) && (idx1 != idx2)
#     end
#   end
#   nil
# end

# p get_indices_of_item_weights([1, 10, 20, 200, 210], 220) == [1, 4]
# p get_indices_of_item_weights([4, 6, 10, 15, 16], 21) == [1, 3]
# p get_indices_of_item_weights([1, 30, 40, 50, 10012], 9) == nil
# p get_indices_of_item_weights([1, 2, 5, 3], 2) == nil 








































=begin
Create a method that takes a positive integer number and returns the next bigger number by
the same digits. If no bigger number can be composed using those digits, return -1. 

# **Problem**
# =>objective: given a positive integer, return the next bigger number that can be made with the same digits

# =>input: integer

# =>output: integer or -1

# =>rules:

# =>explicit	-	given a positive integer
              - return the next bigger number that has the same digits as the given integer
              - return -1 if no number exists

# =>implicit/edge cases - -1 if no number exists
                        - return -1 if the number is only one digit
                        - 


# **Data Structure**
- array to store the digits of the given number

# **Implementation Notes**


# **Algorithm**
- `digits`, assign to digits of the given `int` in order (#reverse if you use #digits)
- if `digits` has a size of 1, return -1
- from `digits` size - 1 down to 1
  - `new_number_digits`, assign to the same as `digits`
  - swap `new_number_digits` at the current index with the one previous
  - `new_number`, assign to `new_number_digits` joined and converted to integer
  - if `new_number` is larger than the given `int`, return `new_number`
- if it makes it through that iteration without returning, return -1



=end


# def next_bigger_number(int)
#   digits = int.digits.reverse
#   (digits.size - 1).downto(1) do |index|
#     new_number_digits = int.digits.reverse
#     new_number_digits[index], new_number_digits[index-1] =  new_number_digits[index-1], new_number_digits[index]
#     new_number = new_number_digits.join.to_i
#     return new_number if new_number > int
#   end
#   -1
# end

# def next_bigger_number(int)
#   # just increment until 
# end

# p next_bigger_number(9) == -1
# p next_bigger_number(12) == 21
# p next_bigger_number(513) == 531
# p next_bigger_number(2017) == 2071
# p next_bigger_number(111) == -1
# p next_bigger_number(123456789) == 123456798
# p next_bigger_number(151) == 511









































=begin
find the longest palindrome substring

# **Problem**
# =>objective: given  a string, return the length of the longest palindrome

# =>input:string

# =>output: integer

# =>rules:

# =>explicit	-	given a string
              - return the length of the longest substring that is  a palindrome (same backwards as forwards)
              - 

# =>implicit/edge cases - if the given `string` length is 1, return 1


# **Data Structure**
- array to hold all possible substrings

# **Implementation Notes**


# **Algorithm**
- `all_substrings`, assign to empty array
- from 0 to `string` length - 1, (`starting_index`)
  - from (`starting_index` + 1) to `string`-length - 1 (`ending_index`)
    - append a slice of the given `string` from `starting_index` to `ending_index` includsive to `all_substrings`
- `palindomes`, assign to return value from iterating (#select) over `all_substrings`
  - substring is the same reversed and forward
- get the size of the #max_by length of the `palindromes` array

=end

# def longest_palindrome(string)
#   all_substrings = []
#   0.upto(string.length - 1) do |starting_index|
#     (starting_index).upto(string.length - 1) do |ending_index|
#       all_substrings << string[starting_index..ending_index]
#     end
#   end
#   palindromes = all_substrings.select { |substring| substring == substring.reverse }
#   palindromes.max_by(&:size).size
# end

# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baablkj12345432133d") == 9











































=begin
Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

# **Problem**
# =>objective: given two strings, return true if the first argument ends with the second

# =>input: string

# =>output: boolean true/false

# =>rules:

# =>explicit	-	given two strings
              - return a boolean true/false
              - if the first arg ends with the second

# =>implicit/edge cases - empty string? 


# **Data Structure**
- array to store the characters

# **Implementation Notes**
- #pop(n)

# **Algorithm**
- `length`, assign to the size of the second argument
- `chars1`, assign to the first argument's characters
- `chars2`, "" second argument
- if the last `length` characters of `chars1` equals `chars2`

=end

# def solution(str1, str2)
#   length = str2.length
#   chars1 = str1.chars
#   chars2 = str2.chars
#   chars1.pop(length) == chars2
# end


# p solution('abc', 'bc') == true
# p solutison('abc', 'd') == false











































=begin
Return the number (count) of vowels in the given string.

We will consider a, e, i, o, u as vowels for this Kata (but not y).

The input string will only consist of lower case letters and/or spaces.

# **Problem**
# =>objective: given a string, return the number of vowels

# =>input: string

# =>output: integer

# =>rules:

# =>explicit	-	given a string, 
              - return an integer representing the number of voewls in the string
              - string only has spaces and lowercase letters

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**
- count/regex

# **Algorithm**
- 

=end

# def get_count(string)
#   string.chars.count { |char| char =~ /[aeiou]/ }   
# end

# p get_count("abracadabra") == 5
# p get_count("") == 0
# p get_count("pear tree") == 4
# p get_count("o a kak ushakov lil vo kashu kakao") == 13
# p get_count("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty") == 168










































=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	given two strings
              - return true if there is a substring (of length 2 or greater) that exists in both strings

# =>implicit/edge cases - if either are empty, return false
                        - case insensitive
                        - only need substrings of length 2 

# **Data Structure**
- array to hold all substrings of each words

# **Implementation Notes**
- make everything lower case from the start

# **Algorithm**
- highest
  - get all 2 letter substirngs from each worth
  - iterate over 2nd word's substirngs, check is any are in the first 
  
- low
  - sub problem, `get_all_two_letter_substrings`
    - given a string, return an array of all the 2 letter substrings
    - `result`, assign to an empty array 
    - from 0 to the (string size - 2)
      - append string from this index to the next index (inclusive), to result
      
  - main
    - `word1_substrings`, assign to the return value of passing LOWERCASE word1 to `get_all_two_letter_substrings`
    - `word2_substrings`, ""
    - see if any `word2_substrings` are included in `word1_substrings`
  
  
=end
# def get_all_two_letter_substrings(str)
#   result = []
#   0.upto(str.length - 2) do |index|
#     result << str[index..index+1]
#   end
#   result
  
# end

# def substring_test(str1, str2)
#   word1_substrings = get_all_two_letter_substrings(str1.downcase)
#   word2_substrings = get_all_two_letter_substrings(str2.downcase)
#   word2_substrings.any? {|substring| word1_substrings.include?(substring) }
# end

# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true










































=begin


=end