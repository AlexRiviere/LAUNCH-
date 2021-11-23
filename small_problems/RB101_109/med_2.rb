#Longest Sentence
#problem
# =>  method reads content of a text file and prints the longest sentence(3 of words)
#input: file 
#output: string of the longest sentence in the file
#rules
# =>  explicit  - sentences end w periods, exclamation points, or question marks
# =>              can use regex to split sentences at punctuation marks
# =>              longest in terms of # of words
# =>              any sequence of chars that are not spaces or sentence ending chars are words
# =>              also print the num of words in the sentence w the output of the sentance
#data structure
# =>  separate text file, array
#algorithm
# =>  open the file
# =>  split the text into an array of sentences
# =>  get the max_by sentence length 
# =>  format the max with the number of words before it

# lines = ''
# File.open("sample-text.txt") do |file|
#   lines = file.readlines
# end

# txt_in_full_string = lines.map{|line| line.chomp}.join(" ")

# def get_biggest_sentence(txt)
#   sentences = txt.split(/\.|\?|!/)
#   largest_sentence = sentences.max_by { |sentence| sentence.split.size }
#   "The largest sentence is #{largest_sentence.split.size} words long: #{largest_sentence}"
# end


# p get_biggest_sentence(txt_in_full_string)



#their answer with mine

# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"









#Now I Know My ABCs
#problem
# =>  given a set of letter pairs and a str, return t or f if the word passed in does not use 
# =>    both eltters from a pair
#input: str
#output: boolean repping if str contains two letters from same block
#rules
# =>  explicit  - each block only used once
# =>              true if word can be spelled from the set of blocks
# =>              false otherwise
# =>  implicit  - can get upper or lower case, 
#data structure
# =>  hash? array for the chars of the word
#algorithm
# =>  make a constant hash with first letters as keys and matching letters as values
# =>  focus on not both letters first, address one block one itme later
# =>  letters = chars of words in array, 
# =>  iterate through letters and assign transform to variable matches, 
# =>    if word contains letter's match, return nil, else return letter
# =>  boolean test, does matches includes nil? 

# SPELLING_BLOCKS = { 'B'=>'O', 
#                     'G'=>'T',
#                     'V'=>'I',
#                     'X'=>'K',
#                     'R'=>'E',
#                     'L'=>'Y',
#                     'D'=>'Q',
#                     'F'=>'S',
#                     'Z'=>'M',
#                     'C'=>'P',
#                     'J'=>'W',
#                     'N'=>'A',
#                     'H'=>'U'  }

# def block_word?(word)
#   letters = word.chars.map{|let| let.upcase}
#   matches = letters.map do |letter|
#     if letters.include?(SPELLING_BLOCKS[letter])
#       nil
#     else
#       letter
#     end
#   end
  
#   return false if matches.include?(nil)
  
#   matches.all?{|let| matches.count(let) == 1}
  
# end




# #test cases
# p block_word?('BATCH')  == true
# p block_word?('BUTCH')  == false
# p block_word?('jest')   == true
# p block_word?('BBATCH') == false
# p block_word?('OOTCH') == false











#Lettercase Percentage Ratio
#problem
# =>  given a string, return a hash with percentage of lowercase letters, uppercase, and neither
#input: string
#output: hash
#rules
# =>  explicit  - string will contrain at least one char
# =>              spaces count as neither
#data structure
# =>  hash, array to iterate?
#algorithm
# =>  size = size of string
# =>  initialize hash counts, lowercase => 0
# =>  initialize hash percentages
# =>  get chars of str
# =>  iterate over chars
# =>    if char.upcase == char.downcase
# =>      it is neither, add 1 to hash counts, neither
# =>    elsif char == char.upcase
# =>      it is uppercase, add 1 to hash counts, uppercase
# =>    else
# =>      it is lower case, add 1 to hash counts, lower case
# =>  use the counts to get the percentages with formating 
# =>      iterate over hash counts, set hash percentages using size and format

# def letter_percentages(str)
#   size = str.size.to_f
#   hash_counts = { lowercase: 0, uppercase: 0, neither: 0  }
#   hash_perc = { lowercase: 0, uppercase: 0, neither: 0}
#   str.chars.each do |char|
#     if char.upcase == char.downcase
#       hash_counts[:neither] += 1
#     elsif char == char.upcase
#       hash_counts[:uppercase] += 1
#     else
#       hash_counts[:lowercase] += 1
#     end
#   end
  
#   hash_perc.each do |k, v|
#     hash_perc[k] = (hash_counts[k] / size) * 100
#   end
#   hash_perc
# end



# #test cases
# p letter_percentages('abCdef 123')  == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef')    == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123')         == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


# def letter_percentages(str)
#   size = str.size.to_f / 100
#   str_arr = str.chars
#   str_arr.count { |char| char.upcase == char.downcase}
#   hsh_perc = {lowercase: str_arr.count {|char| char =~ /[a-z]/ }/ size,
#               uppercase: str_arr.count { |char| char =~ /[A-Z]/} / size,
#               neither: str_arr.count { |char| char.upcase == char.downcase} / size } 
# end



# #test cases
# p letter_percentages('abCdef 123')  #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef')    #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123')         #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }












#Matching Parentheses?
#problem
# =>  given a string , return true if all parentheses are properly balances
#input: string
#ouptut: boolean
#rules
# =>  explicit  - parentheses must occur in mathcing ( and )
# =>              can't have odd number of parentheses
# =>              each pair must start with (  and not start with )
# =>  implicit  - if no parentheses, return true
#data structure
# =>  array
#algorithm
# =>  separate string into array
# =>  remove letters from array leaving only ( or )
# =>  return true if ^^ is empty
# =>  return false if ^^ has odd length
# =>  return false if count of each type of parenth is not equal


# def balanced?(str)
#   parentheses_only = str.chars.select do |char|
#     char == '(' || char == ')'
#   end
#   return true if parentheses_only.empty?
#   return false if parentheses_only.size.odd?
#   return false if parentheses_only.count('(') != parentheses_only.count(')')
#   return false if parentheses_only.first == ')' || parentheses_only.last == '('
#   true
# end




# #test cases
# p balanced?('What (is) this?')      == true
# p balanced?('What is) this?')       == false
# p balanced?('What (is this?')       == false
# p balanced?('((What) (is this))?')  == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!')                 == true
# p balanced?(')Hey!(')               == false
# p balanced?('What ((is))) up(')     == false
# p balanced?('))Hey!(')              == false













#Triangle Sides
#problem
# =>  takes length of three sides, returns symbol of name of type of triangle
#input: 3 integers
#output: symbol 
#rules
# =>  explicit  - sum of lengths of two shortest sides must be > length of longest side
# =>              all sides > 0
# =>              equilateral -- all sides of equal length
# =>              isoc   2 sides equal, 
# =>              scalene 3 diff
#data strucutre
# =>  array
#algorithm
# =>  add all sides to array
# =>  test that all sides > 0
# =>  test that two smallest are > longest
# =>    sort array by length
# =>    compare first two to last one
# =>  return symbol equil if all sides are equal
# =>  return scalene if all sides are different
# =>  isoc

# def triangle(side1, side2, side3)
#   arr_lens = [side1, side2, side3].sort
#   return :invalid if arr_lens.any?(0) || arr_lens[0 .. 1].sum <= arr_lens[-1]
#   return :equilateral if side1 == side2 && side2 == side3
#   return :scalene if side1 != side2 && side2 != side3 && side1 != side3
#   :isosceles
# end



# #test cases
# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid












#Tri-Angles
#problem
# =>  method takes three angles as integers and returns acute, right obtuse or invalid
#input: three integers
#output: symbols with acute, obtuse, invalid, right
#rules
# =>  explicit  - to be a valid triangle, sum of angles must be 180
# =>              to be valid, all angles must be > 0
# =>              assume integer values
# =>              assume args specified in degrees
# =>              acute, all 3 < 90
# =>              obtuse, one > 90
# =>              right, one angle exactly 90
#data structure
# =>  array + case statement
#Algorithm
# =>  accept all integers into array
# =>  if sum of array != 180
# =>    invalid
# =>  elsif any angles are <= 0 , 
# =>    invalid
# =>  elsif all int are < 90 
# =>    acute
# =>  elsif any int are > 90
# =>    obtuse
# =>  elsif any int == 90
# =>    right
# =>    

# def triangle(ang1, ang2, ang3)
#   ang_arr = [ang1, ang2, ang3]
  
#   if ang_arr.sum != 180
#     :invalid
#   elsif ang_arr.any?{ |ang| ang <= 0 }
#     :invalid
#   elsif ang_arr.all?{ |ang| ang < 90 }
#     :acute
#   elsif ang_arr.any?{ |ang| ang > 90 }
#     :obtuse
#   else
#     :right
#   end
  
# end




# #test cases
# p triangle(60, 70, 50)  == :acute
# p triangle(30, 90, 60)  == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90)   == :invalid
# p triangle(50, 50, 50)  == :invalid












#Unlucky Days
#problem
# =>  given a year as an arg, return the number of friday the 13th in taht year
#input: year
#output: integer repping # of friday the 13th
#rules
# =>  explicit  - assume year is > 1752
# =>              date class will be helpful, esp initializing
# =>              look at friday? method
#data structure
# =>  array
#Algorithm
# =>  iniitalize new date starting at jan 1 of the year given
# =>  make a range of dates for that particular year
# =>    convert range to array
# =>  select dates that are fridays, test for 13

# require 'date'

# def friday_13th(year)
#   all_days = (Date.new(year, 1, 1) .. Date.new(year, 12, 31)).to_a
#   all_days.select { |day| day.friday? && day.mday == 13 }.size
# end


# #test cases
# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2











#Next Featured Number Higher than a Given Value
#problem
# =>  given an integer, return the next featured number greater than the arg
#input:integer
#output: integer, next featured num
#rules
# =>  explicit  - a featured number is odd
# =>                divisible by 7
# =>                has no repeating numbers
# =>              return error message if there is no next featured num
# =>  implicit  - start looking at higher than the integer given
#data structure
# =>  loop
#algorithm
# =>  accept integer, get a range of nums from int to int + 7, 
# =>  starting num == ^^ the number from ^^ that is divisible by 7
# =>  loop
# =>    num = starting num
# =>    test if num is odd
# =>      test if num doesnt have any repeating digits
# =>        return num
# =>      else -- next
# =>    else next
# =>    increase num by 7
# =>    break if num > 10mill
# require "pry"

# def no_repeating_nums?(int)
#   int.to_s.chars.uniq == int.to_s.chars
# end

# def featured(int)
#   starting_num = (int + 1 .. int + 8).to_a.detect{|num| num % 7 == 0}
#   num = starting_num
#   loop do
#     #binding.pry
#     return num if num.odd? && no_repeating_nums?(num)
#     num += 7
#     break if num > 10_000_000_000 
#   end

#   "There is no possible number that fulfills those requirements."
# end


# #test cases
# p featured(12)          == 21
# p featured(20)          == 21
# p featured(21)          == 35
# p featured(997)         == 1029
# p featured(1029)        == 1043
# p featured(999_999)     == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements












#Bubble Sort
#problem
# =>  given array, sort using bubble method
#input: array
#ouptut: array sorted
#rules
# =>  explicit  - must use bubble method
# =>              mulitple passes through array
# =>              each pass, compares each pair of consec elements, 
# =>                if first is > second, swap
# =>              do it until you dont swap anything
# =>              sort in place, mutate the array
#data structure
# =>  array and loop
#algorithm
# =>  get size of array
# =>  loop
# =>    set swapped = false
# =>    iterate through array, with indexes
# =>      if index == size of array, next
# =>      if num at this index is > num at next
# =>        then swap
# =>        set swapped = true
# =>    break if swapped = false
# =>  return array
# require "pry"
# a = [4, 2, 3, 1, 5, 8, 6]

# a.each_with_index do |num, idx|
#   next if idx == a.size - 1
#   binding.pry
#   if num > a[idx + 1]
#     binding.pry
#     a[idx], a[idx - 1] = a[idx - 1], a[idx]
#     binding.pry
#   end
# end

# binding.pry

#had to look up answer for this, i was trying to get one pass correct
#should have looped not iterated




#test cases
# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)










#Sum Square - Square Sum
#problem
# =>  given integer, find difference between square of sum of first n pos integers
# =>    and the sum of the squares of the first n pos int
#input: int
#ouptut: int
#rules
# =>  explicit  - 1 == 0
#data structure
# =>  range
#algo
# =>  (1 up to n) to array
# =>  sum of array squared - array reduced after each el is squared

def sum_square_difference(int)
  arr = (1 .. int).to_a
  arr.sum**2 - arr.reduce {|sum, el| sum += el**2}
end



#test cases
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150