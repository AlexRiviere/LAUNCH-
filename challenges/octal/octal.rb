=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- implement an octal to decimal conversion 
- given an octal input string, produce a decimal output
- treat invalid input as 0
- decimal is a base-10 system
  - last digit is mulitplied by 10^0, then next one is mult by 10^1 and so on
  - nth digits is mult by 10 ^ n - 1
- octal is the same thing but base 8

- class name octal
- instance method #to_decimal

- given an octal string, need to return a decimal integer
- test for validity
- split the string into chars and reverse it
- iterate over the the chars
- map with index
  - char to i * 8 ^ idx
- take the sum

initial thoughts/questions
Post-problem questions
what you liked from 2 other student's solutions
- use #all? and check for 0-7 regex instead of negated character set
- use to_i digits to get it into proper order
- all in one, use the size to iterate over indexes, map, then do it all in one
- to_i digits map was probably the way to go
=end
require 'pry'
class Octal
  attr_reader :oct
  
  def initialize(oct)
    @oct = oct
  end
  
  def to_decimal
    return 0 if invalid?
    oct.chars.reverse.map.with_index do |num, idx|
      num.to_i * (8**idx)
    end.sum
  end
  
  private
  
  def invalid?
    @oct =~ /[^0-7]/
  end
end

p Octal.new('17').to_decimal
p Octal.new('11').to_decimal
p Octal.new('130').to_decimal
p Octal.new('2047').to_decimal