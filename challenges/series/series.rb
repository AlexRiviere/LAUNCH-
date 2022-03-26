=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- write a program
- that will take a string of digits
- and return all the possible consecutive number series 
- of a specified length in that string

- if you ask for a 6 digit series from a 5 digit string, throw an error


initial thoughts/questions
- will they always be consecutive?
- will i have to test for consecutive? 
- what type of error is thrown? 

- class Series
- #initialize takes a str of digits
- #slices takes an int representing the array length to return
  - returns an array of arrays of integers
  - each inner array's length matches the given array length
  - array contents overlap
  - consecutive does not mean sequential


- #slices
- result assigned to empty array
  - separate given `str` into chars, map(to_i)
    - #each_cons(length) push to the result array

Post-problem questions
what you liked from 2 other student's solutions
- just to #to_a instead of pushing to result
- #each_with_object, [] use the comma and the length
=end

# class Series
#   attr_reader :str, :size
  
#   def initialize(str)
#     @str = str
#     @size = str.size
#   end
  
#   def slices(length)
#     raise ArgumentError if length > size
#     result = []
#     str.chars.map(&:to_i).each_cons(length) do |el|
#       result << el
#     end
#     result
#   end
# end


class Series
  attr_reader :str, :size
  
  def initialize(str)
    @str = str
    @size = str.size
  end
  
  def slices(length)
    raise ArgumentError if length > size
    
    result = []
    counter = 0
    
    loop do 
      result << str[counter..(counter + length - 1)]
      counter += 1
      break if counter == size - 1  
    end
      
    result.map do |x|
      x.chars.map(&:to_i)
    end
  end
end

p Series.new('01234').slices(2)
