=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
initial thoughts/questions
- compares the number and teh sum of its positive divisors
- the sum is called the Aliquot sum
- perfect numbers have an Aliquot sum equal to the original number
- abundant have greater sum than oG
- deficient has sum less than OG
- write a program that can tell whether a number is perfect, abundant or deficient

- class name is PerfectNumber
- one class method ::classify
- you pass in an integer to the method, and get back either deficient, abundant or perfect
- does not take negative numbers

::classify
- input integer
- output error, abundant, perfect or deficient
- first check if its positive, raise an error if it isnt
- get the sum of the divisors using helper method

helper method

- sum of divisors(takes an integer)
  - get divisors into an array
  - divisors = array with one element 1
  - from 2 upto number given - 1
    - push it to `divisors` if there is no remainder when divided into given int 
  - return sum of array


Qs- if i want to use a helper method, do I use another class method or do I create an instance



Post-problem questions
what you liked from 2 other student's solutions
- use the select method use a second private method for the sum of divisors/find category
=end

class PerfectNumber
  def self.classify(int)
    raise StandardError if int < 0
    
    aliquot = (1...int).each_with_object([]) do |num, arr|
      arr << num if int % num == 0
    end.sum
    
    case int <=> aliquot
    when 1 then 'deficient'
    when 0 then 'perfect'
    when -1 then 'abundant'
    end
    
  end
end

p PerfectNumber.classify(12)
p PerfectNumber.classify(28)
p PerfectNumber.classify(13)