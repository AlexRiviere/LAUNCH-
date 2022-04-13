a = 1

def method
  yield
  puts a
end

proc = Proc.new { puts a} 

proc.call # => this prints 1

method(&proc) # => this also prints 1

method # => this throws an error



# def a_method(&block)
#   block.call
# end

# a_method{puts "hello" } # => prints "hello"






# a = 1

# def method
#   yield
#   puts a
# end

# proc = Proc.new { puts a} 

# proc.call # => this prints 1

# method(&proc) # => this also prints 1

# method # => this throws an error
# a = 1

# def method
#   puts a
# end

# proc = Proc.new { puts a} 

# proc.call # => this also prints 1

# method # => this throws an error

# a = 1

# def method
#   proc.call # => this prints 1
#   puts a
# end

# proc = Proc.new { puts a} 

# proc.call # => this also prints 1

# method # => this throws an error

# a = 1

# def method
#   puts a
# end

# proc = Proc.new { puts a} 

# proc.call # => this prints 1

# method # => this throws an error


# def method(&block)
#     block.call
# end

# method { puts "hello" }


# def method
#   yield(1)
# end

# method { |a, b| puts "#{a} and #{b}"}



# def method(&block)
#     block.call
# end

# method { puts "hello" } # => prints "hello"

# a = 1

# def method
#   puts a
# end

# # method # => this throws an error


# proc = Proc.new { puts a} 

# proc.call # => this prints 1

# array = ['a', 'b', 'c']

# def method_2
#   yield
#   array.each { |let| puts let }
# end

# method_2 do
#   array.each { |let| puts let }
# end



# def timer
#   raise RuntimeError, "No block given" if !block_given?
#   before = Time.new
#   10_000_000.times { |_| yield }
#   after = Time.new
#   puts "#{after - before} seconds"
# end

# timer { |x| i = x.to_s } # 1.731092053 seconds

# timer # No block given (RuntimeError)



# p [1, 3, 5, 7, 9, 11].all?(&:odd?)


# def display_message(str)
#   yield(str)
# end

# p (display_message("hello") { |str| str.upcase! })

# require 'pry'

# def iterate(arr)
  
#   for element in arr
    
#     yield element
#   end
# end

# def count_zeros(arr)
#   counter = 0
#   iterate(arr) do |element|
#     binding.pry
#     counter += 1 if element == 0
#   end
#   counter
# end

# puts count_zeros([1, 2, 0, 3, 0, 4])







# def iterate(arr)
#   arr.each do |element|
    
#     counter += 1 if element == 0
#   end
# end

# def count_zeros(arr)
#   counter = 0
#   for element in arr
#     iterate(arr)
#   end
#   counter
# end

# puts count_zeros([1, 2, 0, 3, 0, 4])































# a = 1

# def method
# 	puts a
# end

# # method # => this throws an error


# proc = Proc.new { puts a} 

# proc.call # => this prints 1






# def foo
#   name = "John"
#   yield
# end

# introduction = foo { puts "My name is #{name}" }


# def log(text1, text2)
#   puts text1
#   puts text2
# end

# log "Hello", "world", "!"


# p [1, 3, 5, 7, 9, 11].all?(&:odd?)

# p ([1, 3, 5, 7, 9, 11].all? do |num|
#   num.odd?
# end)


# def timer
#   raise RuntimeError, "No block given" if !block_given?
#   before = Time.new
#   10_000_000.times { |_| yield }
#   after = Time.new
#   puts "#{after - before} seconds"
# end

# timer { |x| i = x.to_s } # 1.731092053 seconds

# timer # No block given (RuntimeError)



# p ([1, 2, 3].map(&:to_s))


# p ([1, 2, 3].map do |int|
#   int.to_s
# end)



=begin
mini pedac
in
out
requirements
algo

reminders - liberal use of PEDAC
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements (get from prob description, tests and names of tests) instance or class methods?
- replace each letter in teh string with another letter that is n positions away
- 

initial thoughts/questions
- class Cipher
- class method ::rotate takes 2 args, word and n
  - n can be 0, in that case return the word
  - a + 26 is a
  - upper and lowercase
  - returns string
  - spaces stay spaces, punct stays punct, nums stay nums
  - caps stay caps, lower stays lower
  
  
:: rotate
  - split chars, map, send each to switch char
  - join the array 
  
  
- create the private class methods
- ::switch_char(char and n)
  - case char
    - upper?
      - get teh ord, + 13, if its above the z, subtract first A.ord
      - return the new letter at that ord
    - lower? 
      - same as upper but for lower case 
    - else?
      - just return it 


Post-problem questions
what you liked from 2 other student's solutions
=end

# class Cipher
#   def self.rotate(str, n)
#     str.chars.map do |char|
#       switch_letter(char, n)
#     end.join
#   end
  
#   class << self
#     def switch_letter(char, n)
#       case char
#       when "A".."Z"
#         ascii = char.ord + n
#         ascii -= 26 if ascii > 90
#         ascii.chr
#       when "a".."z"
#         ascii = char.ord + n
#         ascii -= 26 if ascii > 122
#         ascii.chr
#       else
#         char
#       end
#     end
#   end
# end


