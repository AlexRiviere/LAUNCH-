=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- takes a letter as its input
- and outputs it in a diamond shape
- given a letter, it prints a diamond startin with 'A' with the supplied letter at the widest
point
- first row contains one A, last row contains one 'A'
- all rows except first and last have two identical letters
- diamond is vertically and horizontally symmetric
- width equals height
- top half has letters in descending order
- bottom half has letters in ascending order
- 

initial thoughts/questions
- letter actually reps the number of rows from the top to the middle
- can't get an 'even' letter 
- break it into two things? top and bottom protocol? 
- each row has the same number of elements
- the second row is always the same no matter what
- total line length is repped by 2 * letter place - 1

-class Diamond
- class method ::make_diamond
  - take a letter as an arg
  - returns a string, doesnt print


# make_diamond
- lines to middle = convert the letter to a number (#downcase.ord - 96)
- line length = lines to middle * 2 - 1
- arr_of_letters_top_half = ('A'..arg).to_a
- result = empty string
- counter = 0
- iterate over arr_of_letters_top_half w indexes
  - if the index is 0
    - space * (length/2) + letter + space * (length/2)
    - counter increment by one
  else
    - _________ + letter + space * counter + letter = ___________
    - increment counter by 2
    
  

"    A    \n"\
"   B B   \n"\
"  C   C  \n"\
" D     D \n"\
"E       E\n"\
" D     D \n"\
"  C   C  \n"\
"   B B   \n"\
"    A    \n"

Post-problem questions
what you liked from 2 other student's solutions
=end

require 'pry'
class Diamond
  SPACES_BETWEEN = ('A'..'Z').to_a.map.with_index do |letter, idx|
    if idx == 0 || idx == 1
      [letter, idx]
    else
      if idx.odd? 
        [letter, idx + 2]
      else
        [letter, idx + 1]
      end
    end
  end.to_h

  attr_accessor :ending_letter, :result, :line_length, :arr_of_letters
  
  def self.make_diamond(letter)
    Diamond.new(letter).make_diamond
  end
  
  def initialize(letter)
    @ending_letter = letter
    @result = ''
    @arr_of_letters = ('A'..ending_letter).to_a
    @line_length = ('A'..ending_letter).to_a.size * 2 - 1
  end
  
  def make_diamond
    if ending_letter == 'A'
      result << make_line(ending_letter, 0)
    else
      result << top_half
      result << bottom_half
    end
    result
  end
  
  def make_line(let, spaces_between)
    if spaces_between == 0
      let.center(line_length) + "\n"
    else
      (let + (' '*spaces_between) + let).center(line_length) + "\n"
    end
  end
  
  def top_half
    local_result = '' 
    local_result << make_line('A', 0)
    ('B'..ending_letter).each do |let| 
      local_result << make_line(let, SPACES_BETWEEN[let])
    end
    local_result
  end
  
  def bottom_half
    local_result = ''
    ('B'...ending_letter).to_a.reverse.each do |let|
      local_result << make_line(let, SPACES_BETWEEN[let])
    end
    local_result << make_line('A', 0)
    local_result
  end
  
  def create_spaces_between_constant
    spaces = []
    
    0.upto(25) do |idx|
      if idx == 0 && idx == 1
        spaces << idx
      else
        idx.odd? ? (spaces << idx + 2) : (spaces << idx + 1)
      end
    end
    
    ('A'..'Z').to_a.zip(spaces).to_h
    
  end
  
end

p Diamond.make_diamond('E') 

string = "    A    \n"\
        "   B B   \n"\
        "  C   C  \n"\
        " D     D \n"\
        "E       E\n"\
        " D     D \n"\
        "  C   C  \n"\
        "   B B   \n"\
        "    A    \n"

p string

# p Diamond::SPACES_BETWEEN

=begin
"    A    \n
B B   \n
C  C   \n
D   D  \n
E    E  \n
D   D  \n
C  C   \n
B B   \n
A    \n"

=end

# class Diamond
#   def self.make_diamond(let)
#     result = ''
#     top_half_letters = ('A'..let)
#     line_length = ((let.downcase.ord - 96) * 2) -1
#     counter = 0
#     top_half_letters.each do |letter|
#       if counter == 0
#         string = letter
#         counter += 1
#       else
#         string = letter + (' '*counter) + letter
#         counter += 2
#       end
#       result << (string.center(line_length)) + "\n"
#     end
    
#     ## bottom half
#     bottom_half_letters = top_half_letters.to_a.reverse[1..-1]
#     counter -= 2
#     bottom_half_letters.each do |letter|
#       if counter == 0
#         string = letter
#       elsif counter == 1
#         string = letter + (' '*counter) + letter
#         counter -= 1
#       else
#         string = letter + (' '*counter) + letter
#         counter -= 2
#       end
#       result << (string.center(line_length)) + "\n"
#     end
    
    
#     result
#   end
# end
# p Diamond.make_diamond('B') == " A \nB B\n A \n"


# string = "    A    \n"\
#         "   B B   \n"\
#         "  C   C  \n"\
#         " D     D \n"\
#         "E       E\n"\
#         " D     D \n"\
#         "  C   C  \n"\
#         "   B B   \n"\
#         "    A    \n"

# p Diamond.make_diamond('E') 
# p string