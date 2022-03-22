=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- write a program
- that converts modern decimal numbers into roman equivalents
- the letters use I, V, X, L, C, D, M
- no need to be able to convert numbers larger than 3000
- roman numerals are written by expressing each digit separately starting with leftmost
  - if you want to subtract, put the letter with the lower value to the left of the higher val
  - CM is 900 because it is M= 1000 and C = 100, 
  - XC is 90 because C = 100 and X = 10

initial thoughts/questions
- it seems like we are going to need to analyze each lettter separately
  - because we need to see if the next letter is less than or greater than the letter we are
  iterating over now
    - if it is less, thats fine, keep adding
    - if it is more, we need to subtract our current number from that number and add that 
    to the running total, 
      - then skip the next numebr
- remember we are going from regular nums to roman nums
- no symbol for 0
- some subtraction
- subtraction on the 4s and the 9s

- need a class RomanNumeral
- a constant hash repping letters and integers?
- an initialize method that takes an integer
- a #to_roman instance method that converts the number to a string of roman numerals



# =>objective: 

# =>input: integer

# =>output: roman numeral string

# =>rules:

# =>explicit	-	

# =>implicit/edge cases - 


# **Data Structure**
- hash?

# **Implementation Notes**


# **Algorithm**
- create a constant hash- ROMAN-- assign to each number (keys) a letter (values)
- digits reps the digits of the given number
- separated = list of numbers that add up to the given (iterate over digits sending each 
num and its idx to #separator helper method
- initialize result = ''
- iterate over each number in `separated` and pass it to #convert_to_roman, which takes a number
and converts it to the string representation in roman numerals

helper method
- separator
  - given a number and an index, give that number the proper 0s

- convert_to_roman
  - roman = ''
  - given a number, return a stirng of roman numerals
  - get a list of the keys (nums) from the ROMAN hash
  - set amount_left to the number passed in
  - loop until the number is 0
    - if the first digit of the number passed in is not 4 or 9
      - find the number in the roman keys array that is closest to but not greater than the 
      given number
      - subtract it from `amount_left` and push the corresponding letter to `roman`
    - otherwise
      - get it from a 9s and 4s hash 
  - return `roman


Post-problem questions
what you liked from 2 other student's solutions
=end



# p separator(5, 0) == 5
# p separator(5, 1) == 50
# p separator(5, 2) == 500
# p separator(5, 3) == 5000
require 'pry'

def convert_to_roman(number)
  roman = ''
  numbers = ROMAN.keys
  amount_left = number
  while amount_left > 0
    if FOURS_AND_NINES.keys.include?(amount_left)
      roman << FOURS_AND_NINES[amount_left]
      amount_left = 0
    else
      numeral_key = numbers.select{ |num| num <= amount_left }.max
      amount_left -= numeral_key
      roman << ROMAN[numeral_key]
    end
  end
  roman
end




class RomanNumeral
  
  ROMAN = { 1 => 'I',
            5 => 'V',
            10 => 'X',
            50 => 'L',
            100 => 'C',
            500 => 'D',
            1000 => 'M'
    }
    
    FOURS_AND_NINES = { 4 => 'IV',
                        9 => 'IX',
                        40 => 'XL',
                        90 => 'XC',
                        400 => 'CD',
                        900 => 'CM'
      }
      
  def initialize(int)
    @int = int
  end
  
  def to_roman
    result = ''
    separated = separator(@int)
    separated.each { |number| result = convert_to_roman(number) + result }
    result
  end
  
  private
  
  def convert_to_roman(number)
    roman = ''
    numbers = ROMAN.keys
    amount_left = number
    while amount_left > 0
      if FOURS_AND_NINES.keys.include?(amount_left)
        roman << FOURS_AND_NINES[amount_left]
        amount_left = 0
      else
        numeral_key = numbers.select{ |num| num <= amount_left }.max
        amount_left -= numeral_key
        roman << ROMAN[numeral_key]
      end
    end
    roman
  end
  
  def separator(num)
    num.digits.map.with_index { |dig, idx| (dig.to_s + ("0" * idx)).to_i }
  end
  
end

p RomanNumeral.new(1948).to_roman