=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- given a natural number and a set of one+ other numbers,
- find the sum of all the multiples of the numbers in the set
  - that are less than the first number
- if the given set is not given, use a default set of 3 and 5 (array?)

initial thoughts/questions
- use the range of between 1- number given
- so really the given number is a max
  - then use the numbers in the set to return all the multiples that are less than the max(given)
  - not including the max num
- multipels also equal themselves

- if you call the class method, use the default set of nums
- if you call the instance method, require an argument

- class name SumOfMultiples
- initialize
  - @set = set
- class method ::to (default set of nums)
  - use the instance method
- instance method #to, requires set of nums

#to
  - takes max num, returns a sum
  - (0...max).select
    - if the number is a multiple of #any? number in the set
  - sum that 

Post-problem questions

what you liked from 2 other student's solutions
- in initialize check for the set, and set to 3,5 if the size is 0
- call self.new to instantiate new object
- just call new(3,5) i guess this works since it is from the class method

=end
require 'pry'
class SumOfMultiples
  def initialize(*set)
    @set = set
  end
  
  def self.to(max)
    SumOfMultiples.new(3,5).to(max)
  end
  
  def to(max)
    (1...max).select { |num| multiple?(num) }.sum
  end
  
  private
  
  def multiple?(num)
    @set.any? { |multiple| num % multiple == 0 }
  end
end

p SumOfMultiples.to(10)
p SumOfMultiples.to(100)
p SumOfMultiples.new(7, 13, 17).to(20)