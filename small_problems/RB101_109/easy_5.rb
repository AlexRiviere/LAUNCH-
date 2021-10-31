#ASCII String Value

#problem
# =>  return ASCII string value that was passed in
#input - string
#output - integer (ASCII values)
#rules
# =>  explicit - the ASCII string value is the sum of the ASCII values of every character
# =>  implicit - return 0 if you get an empty string for an argument
#data structure
# =>  array to split, and array to sum
#algorithm
# =>  if empty, return 0
# =>  split characters, save to array
# =>  iterate over each character, get corresponding ascii value
# =>  sum array

# def ascii_value(str)
#   str.chars.map{|let| let.ord}.sum
# end


# #test cases
# p ascii_value('Four score')     == 984
# p ascii_value('Launch School')  == 1251
# p ascii_value('a')              == 97
# p ascii_value('')               == 0


#After Midnight (Part 1)

#problem
# =>  given a positive or negative integer, add or subtract that many minutes from midnight
# =>  return the value as a string in hh:mm format
#input: integer
#output: string in hh:mm format
#rules:
# =>  explicit -  do not use Date and Time classes
# =>              method should work with pos and neg integers
# =>              ignore daylight savings
# =>              must return string in hh:mm format
# =>  implicit - if given 0, return "00:00"
#data structure
# =>  two different integer variables representing hours and minutes
# =>  string interpolation for the return value
# =>  two ranges turned into array, 0-24, and 0-60
#algorithm
# =>  check for pos and neg
# =>  if pos, multiple assign integer, hours and minutes when dividing integer by 60 
# =>    and getting remainder
# =>    if hours > 24, final_hour = hours % 24 which is the new hours
# =>    final_minutes = minutes
# =>  if neg, get abs value
# =>  multiple assign integer, hours and minutes when dividing integer by 60 
# =>    and getting remainder
# =>    if hours > 24, subtractable_hours = hours % 24
# =>      final_hour - 24 - subtractable_hours
# =>    if minutes > 0, final_minutes = 60 - minutes 
# =>      else final_minutes = 0
# =>  return string interpolation of final_hours and final_minutes

#code

# def time_of_day(int)
#   if int >= 0
#     final_hour, final_minutes = int.divmod(60)
#     if final_hour > 24
#       final_hour = final_hour % 24
#     end 
#   else
#     int *= -1
#     subtract_hour, subtract_minutes = int.divmod(60)
#     subtract_hour = subtract_hour % 24 if subtract_hour > 24
#     final_hour = 24 - subtract_hour if subtract_minutes == 0
#     final_hour = 23 - subtract_hour if subtract_minutes > 0
#     if subtract_minutes > 0
#       final_minutes = 60 - subtract_minutes
#     else
#       final_minutes = 0
#     end
#   end
  
#   "#{format("%02i" ,final_hour)}:#{format("%02i" ,final_minutes)}"
  
# end




# #test cases
# p time_of_day(0)      == "00:00"
# p time_of_day(35)     == "00:35"
# p time_of_day(3000)   == "02:00"
# p time_of_day(800)    == "13:20"
# p time_of_day(-4231)  == "01:29"
# p time_of_day(-1437)  == "00:03"
# p time_of_day(-3)     == "23:57"

#this worked but its messy, lets refactor



# def time_of_day(int)
#   if int >= 0
#     final_hour, final_minutes = int.divmod(60)
#     final_hour = final_hour % 24 if final_hour > 24
#   else
#     int *= -1
#     subtract_hour, subtract_minutes = int.divmod(60)
#     subtract_hour = subtract_hour % 24 if subtract_hour > 24
#     final_hour = 24 - subtract_hour if subtract_minutes == 0
#     final_hour = 23 - subtract_hour if subtract_minutes > 0
#     subtract_minutes > 0 ? (final_minutes = 60 - subtract_minutes) : (final_minutes = 0)
#   end
  
#   "#{format("%02i" ,final_hour)}:#{format("%02i" ,final_minutes)}"
  
# end




#test cases
# p time_of_day(0)      == "00:00"
# p time_of_day(35)     == "00:35"
# p time_of_day(3000)   == "02:00"
# p time_of_day(800)    == "13:20"
# p time_of_day(-4231)  == "01:29"
# p time_of_day(-1437)  == "00:03"
# p time_of_day(-3)     == "23:57"

# a little cleaner but I want to see if we can do it a different way


# def time_of_day(int)
#   hours = (0..23).to_a
#   minutes = (0..59).to_a
#   all_times = hours.product(minutes)
#   int = int % all_times.size if int > all_times.size
#   if int >= 0
#     "#{format("%02i",all_times[int][0])}:#{format("%02i", all_times[int][1])}"
#   end
# end


#test cases
# p time_of_day(0)      #== "00:00"
# p time_of_day(35)     #== "00:35"
# p time_of_day(3000)   #== "02:00"
# p time_of_day(800)    == "13:20"
# p time_of_day(-4231)  == "01:29"
# p time_of_day(-1437)  == "00:03"
# p time_of_day(-3)     == "23:57"

#working with the answer

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   while minutes < 0
#     minutes += MINUTES_PER_DAY
#   end

#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end



#After Midnight (Part 2)
#first method- after midnight
#problem
# =>  given a string in hh:mm format, return the number of minutes after midnight
#input: string in hh:mm format
#output: intger representing the # of mins after midnight
#rules: 
# =>  explicit -  no date or time methods
# =>              return num of minutes after midnight
# =>  implicit -  if 24:00, then 0
# =>              if 00:00 then 0
#data structure
# =>  we'll have to split the string, so an array first, 
#algorithm
# =>  get first two indexes of string, multiply by 60 and set it equal to hours_in_min
# =>  get last two indexes of string and set it equal to minutes
# =>  add hours_in_min and minutes together
# =>  if hours_in_min > 1440, hours_in_min = hours_in_min % 1440

# def after_midnight(str)
#   hours_in_min = str[0..1].to_i * 60 
#   min = str[-2..-1].to_i
#   total_min = hours_in_min + min 
#   if total_min >= 1440
#     total_min %= 1440
#   end
#   total_min
# end

# #test cases

# p after_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p after_midnight('24:00') == 0



#before midnight

# def before_midnight(str)
#   minutes = after_midnight(str)
#   minutes = 1440 - minutes if minutes > 0
#   minutes
# end


# p before_midnight('00:00') == 0
# p before_midnight('12:34') == 686
# p before_midnight('24:00') == 0


#Letter Swap

#prblem
# =>  given string of words separated by spaces, return a string where the first and last
# =>      letters are swapped
#input - string (sentence with spaces, maybe just one letter or one word)
#output - string, with first and last of each word swapped
#rules: 
# =>  -explicit   - every word contains at least one letter
# =>              - teh string will always contain at least one word
# =>              - each string contains nothing but words and spaces
# =>  implicit    - if one letter, return letter, 
#data structure
# =>  array
#algorithm
# =>  split the string into words
# =>  iterate over the array of words
# =>  for each word, multiple assign the first and last letter w the last and first letter
# =>    respectively

#code

# def swap(str)
  
#   str.split(" ").map do |word|
#     word[0], word[-1] = word[-1], word[0]
#     word 
#   end.join(" ")
  
# end

#test cases

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde')                         == 'ebcdA'
# p swap('a')                             == 'a'


#Further Exploration

# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# def swap(words)
#   result = words.split.map do |word|
#   swap_first_last_characters(word[0], word[-1])
#   end
#   result.join(' ')
# end


# p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# p swap('Abcde')                         #== 'ebcdA'
# p swap('a')                             #== 'a'



#Clean up the words

#problem
# =>  given a string that consists of words (all lower case) and some special char, 
#       return a string with all special characters replaced with spaces, 
#input:  string with non-alphabetic characters and lowercase letters
#output: string with only lowercase letters
#rules
# =>  explicit  - replace non-alphabetic characters with strings
# =>            - if one or more non-alphabetic char in a row, replace with one space
# =>            - never have consecutive spaces
# =>  implicit  - if it starts or ends with non-alpha, replace with space 
#data structure
# =>  array 
#algorithm
# =>  replace all special characters with a space
# =>  reduce all multiple spaces to one space

# def cleanup(str)
#   without_s_char = str.gsub!(/[^A-Za-z0-9]/, " ")
#   without_s_char.gsub!(/\s+/, " ")
# end

#test cases
# p cleanup("---what's my +*& line?") == ' what s my line '




#Letter Counter (Part 1)
#prblem
#given a string. return a hash where each key reps a number of letters , and each value reps
#  how many times a word of that size appears in the string
#input: string 
#output: hash
#rules:
# =>  explicit -  words consist of any string of characters that do not include a space
#                      ex: seven. is size 6
# =>  implicit  - if you get an empty string, return an empty hash
#data structure
# =>  array, hash 
#algorithm
# =>  initialize empty hash 
# =>  split string at the spaces and turn into array
# =>  iterate through array, getting an array of size
# =>  iterate over array of sizes, 
# =>  add this count to the hash (if any repeat they will just replace)
# =>  return hash 

#code

# def word_sizes(str)
#   sizes = {}
#   arr_of_words = str.split(" ")
#   arr_of_lengths = arr_of_words.map {|word| word.length }
#   arr_of_lengths.each do |length|
#     sizes[length] = arr_of_lengths.count(length)
#   end
#   sizes
# end

#test cases

# p word_sizes('Four score and seven.')                       == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!')  == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?")                              == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('')                                            == {}



#this worked lets try it another way

# def word_sizes(str)
#   sizes = {}
#   arr_of_words = str.split(" ")
  
# end





#p word_sizes('Four score and seven.')                         #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!')  == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?")                              == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('')                                            == {}




#Letter Counter (Part 2)
#problem
# =>  don't count special char


# def word_sizes(words_string)
#   counts = Hash.new(0)
#   splitt = words_string.split.map{|word| word.delete('^A-Za-z')}
#   splitt.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}



#Alphabetical Numbers
#problem
# =>  given array of integers from 0 -19 adn returns array of integers sorted 
# =>      based on their spelling
#input: array of numbers from 0-19
#ouptut: array of numbers sorted based on their seplling
#rules: 
# =>  explicit - sort based on english spelling
# =>              return array
#data structure
# =>  array, hash 
#algorithm
# =>  initialize array of strings for spellings 
# =>  initialize empty hash
# =>  loop through array of strings, creating hash keys and vals
# =>      k is number, v is string
# =>  sort array by value 
# =>  return array

# def alphabetic_number_sort(arr)
#   numbers = arr
#   strings = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
#   letters_w_nums = {}
#   numbers.each_with_index do |num, idx|
#     letters_w_nums[num] = strings[idx]
#   end
#   numbers.sort_by{|num| letters_w_nums[num]}
    
# end


# #test cases
# p alphabetic_number_sort((0..19).to_a) == [  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]


#worked but lets make it cleaner


# def alphabetic_number_sort(arr)
#   numbers = arr
#   strings = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
#   numbers.sort_by.with_index{|num, idx| strings[idx]}
# end



# p alphabetic_number_sort((0..19).to_a) #== [  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

#another way

# require 'humanize'

# def alphabetic_number_sort(arr)
#   arr.sort_by{|num| num.humanize}
# end


# p alphabetic_number_sort((0..19).to_a) == [  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]



#For an extra challenge, rewrite your method to use Enumerable#sort (unless you already did so).

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end



# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]




#ddaaiillyy ddoouubbllee
#problem
# =>  takes a string, returns a new string with all duplicates removed and collapsed to sing char
#input: string
#output : string with duplicates removed
#rules: 
# =>  explicit  - duplcates collapsed to one single character
# =>              no squeeze
# =>  implicit -  empty string returns empty string
# =>              numbers and letters
# =>              keep spaces
#data structure
# =>  array for ind words
# =>  
#algorithm
# =>  initiate empty array
# =>  split word into chars
# =>  add first char to array
# =>  iterate over rest of the chars and push to arr only if != arr[-1]
# =>  join array


# def crunch(str)
#   final_word = []
#   str.chars.each do |let|
#     final_word << let if final_word[-1] != let
#   end
#   final_word.join
# end



# #test cases

# p crunch('ddaaiillyy')              == 'daily'
# p crunch('4444abcabccba')           == '4abcabcba'
# p crunch('ggggggggggggggg')         == 'g'
# p crunch('a')                       == 'a'
# p crunch('')                        == ''


#took me a couple tries but i got it, lets see if i can get it another way


# def crunch(str)
#   final_word = []
#   str.chars.each do |let|
#     final_word << let unless final_word[-1] == let
#   end
#   final_word.join
# end



# p crunch('ddaaiillyy')              == 'daily'
# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba')           == '4abcabcba'
# p crunch('ggggggggggggggg')         == 'g'
# p crunch('a')                       == 'a'
# p crunch('')                        == ''





#Bannerizer
#problem
# =>  given a string, print the string within a box
#input: str
#ouptut: string but in box form
#rules:
# =>  explicit  - print text within box
# =>  implicit  - horiz box is made out of "-" signs and corners are "+"  
# =>              verticals are made out of "|"
# =>              only given one line so box is always 5 lines tall two + and three |
# =>              width of box is 4 more than string length
#data structure
# =>  printed as a string
#algorithm
# =>  5 puts statements
# =>  1. corners plus "-" times (str length + 2) 
# =>  2. vert bars plus " " * times (str length + 2)
# =>  3. vert bars, spaces, quotes, space, vert bar
# =>  4. vert bars plus " " * times (str length + 2)
# =>  5. corners plus "-" times (str length + 2)


# def top_and_bottom(str)
#   puts "+" + "-"*(str.length + 2) + "+"
# end

# def middle_space(str)
#   puts "|" + " " * (str.length + 2) + "|"
# end

# def print_in_box(str)
#   top_and_bottom(str)
#   middle_space(str)
#   puts "| " + str + " |"
#   middle_space(str)
#   top_and_bottom(str)
  
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')






#Modify this method so it will truncate the message if it will be too wide to fit inside 
#a standard terminal window (80 columns, including the sides of the box).

# def print_in_box(message)
#   if message.size > 80
#     message_size = 80
#     message1 = message[0..79]
#     message2 = message[80..]
#   else
#     message_size = message.size
#   end
  
#   horizontal_rule = "+#{'-' * (message_size + 2)}+"
#   empty_line = "|#{' ' * (message_size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message1} |"
#   puts "| #{message2} |" if message2
#   puts empty_line
#   puts horizontal_rule
# end



# print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before.')





#Spin Me Around In Circles

# def spin_me(str)
#   str.split.each do |word|
#     word.reverse!
#   end.join(" ")
# end

# a = "hello world"
# p a.object_id
# p spin_me(a).object_id
# p a.object_id

#will the returned string be the same object as the one passed in as an argument
#or a different object?

#not sure because we are destructively modifying the contents in the string but not the string itself
#it will return a different object which means that it was not destructive





