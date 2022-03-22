# Easy 1

# class Tree
#   include Enumerable
  
#   def each
    
#   end
  
# end


# Optional Blocks

# def compute
#   if block_given?
#     yield 
#   else
#     "Does not compute."
#   end
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'



# def compute(arg)
#   if block_given?
#     yield(arg)
#   else
#     "Does not compute."
#   end
# end

# p compute(5) { |arg| arg } == 5
# p compute('a') { |arg| 'a' + 'b' } == 'ab'
# p compute(3) == 'Does not compute.'



#Find Missing Numbers

=begin

=end

# def missing(arr)
#   all_nums = (arr[0]..arr[-1]).to_a
#   all_nums - arr
# end



# require 'pry'

# def missing(array)
#   result = []
#   array.each_cons(2) do |first, second|
#     result.concat(((first + 1)..(second - 1)).to_a)
#     binding.pry
#   end
#   result
# end

# p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) == []
# p missing([1, 5]) == [2, 3, 4]
# p missing([6]) == []






#Divisors

# def divisors(int)
#   result = []
#   num = int
#   while num > 0
#     result << num if (int % num == 0)
#     num -= 1
#   end
#   result.reverse
# end

# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute









=begin

# **Problem**
# =>objective: decrypt the ROT13 names

# =>input: encrypted string

# =>output: decrypted string

# =>rules:

# =>explicit	- given a list of encrypted names
              - decrypt the names with ROT13
              - ROT13 corresponding letter is  13 away from the current letter
              - ROT13 is its own inverse

# =>implicit/edge cases - more than 2 names, dashes, capital letters
                        - will always add 13  


# **Data Structure**
- array

# **Implementation Notes**


# **Algorithm**
- separate letters
- make all letters lowercase
- for each letter, map
  - return value if it is not a letter
  - get ASCII value
  - add 13
  - if it is > 122, subtract 26
  - turn ASCII value back into character
=end

# def decrypt(names)
#   names.downcase.chars.map do |let|
#     if let =~ /[A-Za-z]/
#       ascii = let.ord + 13
#       ascii > 122 ? (ascii -= 26) : ""
#       ascii.chr
#     else
#       let
#     end
#   end
# end



# names = <<-NAMES
#         Nqn Ybirynpr
#         Tenpr Ubccre
#         Nqryr Tbyqfgvar
#         Nyna Ghevat
#         Puneyrf Onoontr
#         Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
#         Wbua Ngnanfbss
#         Ybvf Unvog
#         Pynhqr Funaaba
#         Fgrir Wbof
#         Ovyy Tngrf
#         Gvz Orearef-Yrr
#         Fgrir Jbmavnx
#         Xbaenq Mhfr
#         Fve Nagbal Ubner
#         Zneiva Zvafxl
#         Lhxvuveb Zngfhzbgb
#         Unllvz Fybavzfxv
#         Tregehqr Oynapu
#         NAMES

# p decrypt(names).join








=begin

# **Problem**
# =>objective: 

# =>input: arr

# =>output: true or false

# =>rules:

# =>explicit	-	

# =>implicit/edge cases - recreate Enumerable#any?
                        - passes each element value to a block
                        - if the block returns true for any element, #any? returns true
                        - #any? stops iterating at the first true
                        - take an array
                        - take a block


# **Data Structure**
- array

# **Implementation Notes**


# **Algorithm**
- iterate through the 'arr', passing each element to the block
- if the block return true, return true
  - otherwise, continue iterating
- return false if you get through the 'arr'


=end

# def any?(arr)
#   arr.each do |el|
#     return true if yield(el)
#   end
#   false  
# end


# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?({1 => 2, 3 => 4}) { |k , v| v > 1 } == true











=begin

# **Problem**
# =>objective: 

# =>input: array 

# =>output: boolean

# =>rules:

# =>explicit	-	develop Enumerable#all?
              - if the block returns a value of true for every element, then #all? 
              returns true
              - otherwise, false
              - #all? will stop searching the first time the block returns false

# =>implicit/edge cases - if the array is empty, return true


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
- if the array is empty, return true
- iterate over elements of the array
- pass each to the block
  - if its false, return false
- if it makes it through, return true

=end

# def all?(arr)
#   return true if arr.empty?
  
#   arr.each do |el|
#     return false unless yield(el)
#   end
#   true
# end



# p all?([1, 3, 5, 6]) { |value| value.odd? } == false
# p all?([1, 3, 5, 7]) { |value| value.odd? } == true
# p all?([2, 4, 6, 8]) { |value| value.even? } == true
# p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p all?([1, 3, 5, 7]) { |value| true } == true
# p all?([1, 3, 5, 7]) { |value| false } == false
# p all?([]) { |value| false } == true











=begin
if the array is empty, none? returns true
if the block returns true, then #none? returns false


=end

# def none?(arr)
#   return true if arr.empty?
  
#   arr.each do |el|
#     return false if yield(el)
#   end
#   true  
# end


# def any?(arr)
#   arr.each do |el|
#     return true if yield(el)
#   end
#   false  
# end

# def none?(collection, &block)
#   !any?(collection, &block)
# end

# p none?([1, 3, 5, 6]) { |value| value.even? } == false
# p none?([1, 3, 5, 7]) { |value| value.even? } == true
# p none?([2, 4, 6, 8]) { |value| value.odd? } == true
# p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p none?([1, 3, 5, 7]) { |value| true } == false
# p none?([1, 3, 5, 7]) { |value| false } == true
# p none?([]) { |value| true } == true




# Iterators: True for One?

=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	develop for #one?
              - passes each element to the block
              - if the block returns true for exactly one element then #one? returns true
              - otherwise, #one? returns false
              - none will stop searching the second time the block returns true
              - take an array
              - if arr is empty, return false

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**

=end

# def one?(arr)
#   return false if arr.empty?
  
#   count = 0
#   arr.each do |el|
#     (count += 1) if yield(el)
#     return false if count == 2
#   end
  
#   count == 1 ? true : false
# end

# p one?([1, 3, 5, 6]) { |value| value.even? } == true
# p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
# p one?([2, 4, 6, 8]) { |value| value.even? }    == false
# p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p one?([1, 3, 5, 7]) { |value| true }           == false
# p one?([1, 3, 5, 7]) { |value| false }          == false
# p one?([]) { |value| true }                     == false








=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	takes an arr
              - return a count the number of times the block returned true

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**

=end

# def count(arr)
#   count = 0
#   arr.each do |el|
#     count += 1 if yield(el)
#   end
#   count
# end

# p count([1,2,3,4,5]) { |value| value.odd? } == 3
# p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
# p count([1,2,3,4,5]) { |value| true } == 5
# p count([1,2,3,4,5]) { |value| false } == 0
# p count([]) { |value| value.even? } == 0
# p count(%w(Four score and seven)) { |value| value.size == 5 } == 2





# From-To-Step Sequence Generator

=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	takes three arguments
              - starting value, ending value, step value
              - take a block to which it will yield or call successive iterations

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
=end

# def step(start, ending, step)
#   current = start
#   while current <= ending
#     yield(current)
#     current += step
#   end
# end

# step(1, 10, 3) { |value| puts "value = #{value}" }














# Zipper 

=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	given two arrays
              - return a new array
              - both arrays have the same number of elements
              - return new array where each eleemnt is a two element array where first is 
              - vlaue from first array given, second is value from second array given

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**


=end

# def zip(arr1, arr2)
#   result = []
#   arr1.each_with_index do |el, idx|
#     result << [el, arr2[idx]]
#   end
#   result
# end

# p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]









# map

=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	given array
              - return new array that contains returned values produced by the block
              for each element of the array
              - if its empty, map should return an empty array 

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**

=end

# def map(arr)
#   arr.each_with_object([]) do |el, result|
#     result << yield(el)
#   end
# end



# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map([]) { |value| true } == []
# p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
# p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
# p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]





# count

=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	- #count iterates over the members of a collection, passing each element to 
                the block, then returns the num of elements that returned a truthy value
              - should take any list of args 0 or more args and a block
              - if the arg is empty, return 0

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
=end
# def count(*args)
#   return 0 if args.empty?
#   count = 0
#   args.each do |el|
#     count += 1 if yield(el)
#   end
#   count
# end

# p count(1, 3, 6) { |value| value.odd? } == 2
# p count(1, 3, 6) { |value| value.even? } == 1
# p count(1, 3, 6) { |value| value > 6 } == 0
# p count(1, 3, 6) { |value| true } == 3
# p count() { |value| true } == 0
# p count(1, 3, 6) { |value| value - 6 } == 3




















# drop_while

=begin
explicit - iterates over the mems of a collection, passing each to associated block
          - until it finds an element for which the block returns a falsey value
          - then converts remaining elements of the collection (including the falsey) 
          to an array and returns the result
          - take an array and a block
          - return all els of the array except those elements at the beginnning of the array
          that produce a truthy value when passed to the block
          - if the array is empty, or if the block returns a truthy value for every element, 
          return an empty array 
=end

# def drop_while(arr)
#   arr.each_with_index do |el, idx|
#     return arr[idx..-1] unless yield(el)
#   end
#   []
# end

# p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
# p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| true } == []
# p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
# p drop_while([]) { |value| true } == []









#each_with_index

=begin
explicit - iterates over the mems of a collection
          - passing each to the block
          - value returned by block is not used
          - returns reference to the original collection
          - takes array and a block
          - yield each el to the block
          - return reference to OG array
=end

# def each_with_index(arr)
#   index = 0 
#   arr.each do |el|
#     yield(el, index)
#     index += 1
#   end
# end

# result = each_with_index([1, 3, 6]) do |value, index|
#   puts "#{index} -> #{value**index}"
# end

# puts result == [1, 3, 6]













#each_with_object

# =begin
# explicit - iterates over collection, passing each element and an arbitrary object to the 
#           block
#           - the object that is passed to the block is defined as an argument to #each_with_object
#           - with each iteration, the object may be updated by the block
#           - when the iteration is complete, the final value of the object is returned
#           - take an array and an object as an argument and a block
#           - yield each element and the object to the block
#           - return final value of object
#           - if the array is empty, return the OG object 
# =end

# require 'pry'

# def each_with_object(arr, obj)
#   arr.each do |el|
#     yield(el, obj)
#   end
#   obj
# end



# p result = (each_with_object([1, 3, 5], []) do |value, list|
#   list << value**2
# end)
# p result == [1, 9, 25]

# p result = (each_with_object([1, 3, 5], []) do |value, list|
#   list << (1..value).to_a
# end)

# p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

# p result = (each_with_object([1, 3, 5], {}) do |value, hash|
#   hash[value] = value**2
# end)
# p result == { 1 => 1, 3 => 9, 5 => 25 }

# p result = (each_with_object([], {}) do |value, hash|
#   hash[value] = value * 2
# end)
# p result == {}






#max_by

=begin
explicit - iterates over collection
          - pass each element to the block
          - returns the element for which the block returned the largest vlaue
          - take an array and a block
          - return the element that contains the largest value
=end

# def max_by(arr)
#   return nil if arr.empty?
#   max = nil
#   max_index = nil
#   arr.each_with_index do |el, idx|
#     if idx == 0
#       max = yield(el)
#       max_index = 0      
#     elsif yield(el) > max
#       max = yield(el)
#       max_index = idx
#     end
#   end
#   arr[max_index]
# end

# def max_by(arr)
#   return nil if arr.empty?
#   max = yield(arr[0])
#   max_index = 0
  
#   arr.each_with_index do |el, idx|
#     if yield(el) > max
#       max = yield(el)
#       max_index = idx
#     end
#   end
#   arr[max_index]
# end


# p max_by([1, 5, 3]) { |value| value + 2 } == 5
# p max_by([1, 5, 3]) { |value| 9 - value } == 1
# p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
# p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
# p max_by([-7]) { |value| value * 3 } == -7
# p max_by([]) { |value| value + 5 } == nil







# #each_cons part 1

# =begin
# explicit  - iterates over memebers of a collection 
#           - taking each secquence of 'n' consecutive elements 
#           - passing them to the block
#           - then returns nil
#           - take arrays, taking 2 elements at a time
#           - yield consecutive pair of elements to the block and return nil
# =end

# def each_cons(arr)
#   start = 0
#   ending = 1
  
#   while ending <= arr.size - 1
#     yield(arr[start], arr[ending])
#     start += 1
#     ending += 1
#   end
#   nil
# end

# hash = {}
# result = each_cons([1, 3, 6, 10]) do |value1, value2|
#   hash[value1] = value2
# end
# p result == nil
# p hash == { 1 => 3, 3 => 6, 6 => 10 }

# hash = {}
# result = each_cons([]) do |value1, value2|
#   hash[value1] = value2
# end
# p hash == {}
# p result == nil

# hash = {}
# result = each_cons(['a', 'b']) do |value1, value2|
#   hash[value1] = value2
# end
# p hash == {'a' => 'b'}
# p result == nil









#each_cons part 2



=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	iterates over collection
              - taking each sequence of n consecutive elements 
              - passing them to the block
              - returns nil
              - take an array and a block
              - yield consecutive pair to the block
              - return nil

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**

- iterate over each element of the array
  - pass in the elements from this index to the next (n-1) indexes to the block
- return nil


=end

# require 'pry'

# def each_cons(arr, n)
#   arr.each_with_index do |el, idx|
#     if idx <= arr.size - n
#       yield(arr[idx], *arr[idx+1 .. (idx + n - 1)]) 
#     end
#   end
# end

# hash = {}
# each_cons([1, 3, 6, 10], 1) do |value|
#   hash[value] = true
# end
# p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

# hash = {}
# each_cons([1, 3, 6, 10], 2) do |value1, value2|
#   # binding.pry
#   hash[value1] = value2
# end
# p hash == { 1 => 3, 3 => 6, 6 => 10 }

# hash = {}
# each_cons([1, 3, 6, 10], 3) do |value1, *values|
#   hash[value1] = values
# end
# p hash == { 1 => [3, 6], 3 => [6, 10] }

# hash = {}
# each_cons([1, 3, 6, 10], 4) do |value1, *values|
#   hash[value1] = values
# end
# p hash == { 1 => [3, 6, 10] }

# hash = {}
# each_cons([1, 3, 6, 10], 5) do |value1, *values|
#   hash[value1] = values
# end
# p hash == {}


# def wrap_in_array(value)
#   [*value]
# end

# p wrap_in_array([1, 2, 3])

















#################################################################

# EASY TESTING

# Boolean assertions


# assert(value.odd?)

# assert_equal('xyz', value.downcase)
# 
# assert_nil(value)

# refute_empty(list)

# assert_include(list, 'xyz')

# assert_raises(NoExperienceError) {employee.hire}

# assert_kind_of(Numeric, value)

# assert_same(list, list.process)

# refute_includes(list, 'xyz')



#######################################################################

# Listening Device

# class Device
#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end
  
#   def listen
#     record(yield) if block_given?
#   end
  
#   def play
#     puts @recordings[-1]
#   end
# end



# listener = Device.new
# listener.listen { "Hello World!" }
# listener.listen
# listener.play # Outputs "Hello World!"








#Text Analyzer - Sandwich Code

# class TextAnalyzer
#   def process(file_name)
#     file = File.open(file_name)
#     yield(file)    
#     file.close
#   end
# end

# analyzer = TextAnalyzer.new
# file_name = "sample.txt"
# analyzer.process(file_name) do |file| 
#   words = file.read.split.count
#   puts words.to_s + " words"
# end

# analyzer.process(file_name) do |file|
#   lines = file.readlines.count
#   puts lines.to_s + " lines"
# end

# analyzer.process(file_name) do |file|
#   paragraphs = file.read.split(/\n\n+/).count
#   puts paragraphs.to_s + " paragraphs"
# end


# file = File.open('sample.txt')
# file_data = file.read
# p file_data






# Passing Parameters Part 1

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "Nice selection of food we have gathered!"
# end

# gather(items) {|arr_of_items| puts "#{arr_of_items.join(', ')}" }



# Passing Parameters Part 2

=begin
- explicit  - takes an arr as an argument
            - yield contents of the array to a block
            - block should assign block variables in a way that ignores the first
            two elements
            - and grpous all remaining elements as a `raptors` array
=end

# def method(arr)
#   yield(arr)
# end

# birds = %w(raven finch hawk eagle)
# method(birds) { |_, _, *raptors| puts raptors }



# Passing Parameters Part 3

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# gather(items) do | , ,  |
#   puts apples
#   puts middle.join(", ")
#   puts wheat
# end

# OUTPUT

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# 3
# gather(items) do |apples, *rest|
#   puts apples
#   puts rest.join(", ")
# end

#4 

# gather(items) do | apples, corn, cab ,wheat |
#   puts "#{apples}, #{corn}, #{cab} and #{wheat}"
# end

#1 

# gather(items) do |*first , wheat |
#   puts first.join(", ")
#   puts wheat
# end

#2 

# gather(items) do | , ,  |
#   puts apples
#   puts middle.join(", ")
#   puts wheat
# end




# Method to Proc



# def convert_to_base_8(n)
#   n.to_s(8).to_i # replace these two method calls
# end

# # The correct type of argument must be used below
# # this is method(:symbol) 
# # the argument needs to be a symbol
# base8_proc = method(:convert_to_base_8)#.to_proc

# # We'll need a Proc object to make this code work. Replace `a_proc`
# # with the correct object
# # argument will be converted to a block, needs to be a proc
# p [8, 10, 12, 14, 16, 33].map(&base8_proc)

# # [8, 10, 12, 14, 16, 33].map { |el| el.to_s(8).to_i }

# # return value [10, 12, 14, 16, 20, 41]

# 74.to_s(8) == 112
# call to_s on a decimal number and pass in 8 as an argument, it returns the octal numebr







# Bubble Sort with Blocks

# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
      
#       if block_given?
#         next if yield(array[index - 1], array[index])
#       else
#         next if array[index - 1] <= array[index]
#       end
      
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
#   nil
# end

# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [5, 3, 7]
# bubble_sort!(array) { |first, second| first >= second }
# p array == [7, 5, 3]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = [6, 12, 27, 22, 14]
# bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
# p array == [14, 22, 12, 6, 27]

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array)
# p array == %w(Kim Pete Tyler alice bonnie rachel sue)

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
# p array == %w(alice bonnie Kim Pete rachel sue Tyler)





######################################

# advanced

=begin
explicit - create a new Enumerator object
          - define what values are iterated upon
          - create an Enumertor object that can iterate over an infinite list of factorials
          
          - test it by printing the first 7 factorial values, starting with 0!
          - print the first 7 factorials by using an External Iterator
          - see what happens if you print 3 more  (results will not be correct)
          - then reset the Enumerator, (use #rewind), and print 7 more factorials
          - only need 3 Enumerable methods to complete exercise
          - an Enumerator implements the Enumerable module
=end

# enumerator = Enumerator.new do |yielder|
#   a = 0 # index
#   b = 1 # last num
#   loop do
#     if a == 0
#       yielder << 1
#       a += 1
#     else
#       yielder << a * b
#       b = a * b
#       a += 1
#     end
#   end
# end

# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts ""
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts ""
# enumerator.rewind
# puts ""
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next
# puts enumerator.next





# Exploring Procs, Lambdas, and Blocks: Definition and Arity

# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# # Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}."}




#################################################################################

#regex book

#1
# def url?(str)
#   !!str.match(/^https?:\/\/.+\.com$/)
# end

# p url?('http://launchschool.com')   == true
# p url?('https://example.com')       == true
# p url?('https://example.com hello') == false
# p url?('   https://example.com')    == false


#2

# def fields(str)
#   str.split(/[ \t,]+/)
# end

# p fields("Pete,201,Student")
# # -> ["Pete", "201", "Student"]

# p fields("Pete \t 201    ,  TA")
# # -> ["Pete", "201", "TA"]

# p fields("Pete \t 201")
# # -> ["Pete", "201"]

# p fields("Pete \n 201")
# # -> ["Pete", "\n", "201"]


#3

# def mystery_math(str)
#   str.sub(/[\+\-\*\/]/, '?')
# end

# p mystery_math('4 + 3 - 5 = 2')
# # -> '4 ? 3 - 5 = 2'

# p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# # -> '(4 ? 3 + 2) / 7 - 1 = 1'



# def mysterious_math(str)
#   str.gsub(/[\+\-\*\/]/, '?')
# end

# p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
# p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'


#5

# def danish(str)
#   str.sub(/(apple|blueberry|cherry)/,'danish' )
# end

# p danish('An apple a day keeps the doctor away')
# # -> 'An danish a day keeps the doctor away'

# p danish('My favorite is blueberry pie')
# # -> 'My favorite is danish pie'

# p danish('The cherry of my eye')
# # -> 'The danish of my eye'

# p danish('apple. cherry. blueberry.')
# # -> 'danish. cherry. blueberry.'

# p danish('I love pineapple')
# # -> 'I love pineapple'


#6

# def format_date(str)
#   str.gsub(//, '.')
# end

# p format_date('2016-06-17') # -> '17.06.2016'
# p format_date('2016/06/17') # -> '2016/06/17' (no change)


#7

def format_date(str)
  str.sub(/\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/, '\4.\3.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)