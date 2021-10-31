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
# =>  



#test cases

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
