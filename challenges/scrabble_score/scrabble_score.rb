=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- write a program that , given a word, returns the scrabble score
- 
[A, E, I, O, U, L, N, R, S, T]	1
[D, G]	2
[B, C, M, P]	3
[F, H, V, W, Y]	4
[K]	5
J, X	8
Q, Z	10
- how to score?
  - sum the values of all the titles used in each word. 
initial thoughts/questions
- empty string returns 0
- returning an integer
- string with just spaces returns 0
- nil returns 0

- can receive letters in upper or lower case
- there is a #score instance method and a ::score class method

Post-problem questions
  - we have the same logic in the instance method as the class method
    - we can't call an instance method from a class method
    - can we call a class method from an instance method?
what you liked from 2 other student's solutions
- iterate over each letter and each letter from the hash 
- used a string of letters instead of a hash
- used the instnace method in the class method by creating a new instance
- checked values and added keys t total 
=end

# class Scrabble
#   SCORES = {  'a' => 1,
#               'b' => 3,
#               'c' => 3,
#               'd' => 2,
#               'e' => 1,
#               'f' => 4,
#               'g' => 2,
#               'h' => 4,
#               'i' => 1,
#               'j' => 8,
#               'k' => 5,
#               'l' => 1,
#               'm' => 3,
#               'n' => 1,
#               'o' => 1,
#               'p' => 3,
#               'q' => 10,
#               'r' => 1,
#               's' => 1,
#               't' => 1,
#               'u' => 1,
#               'v' => 4,
#               'w' => 4,
#               'x' => 8,
#               'y' => 4,
#               'z' => 10
#     }
  
#   def initialize(word)
#     if word.nil? || word =~ /\s+/
#       @word = ''
#     else
#       @word = word.downcase
#     end
#   end
  
#   def self.score(word)
#     word.chars.reduce(0) { |sum, let| sum + SCORES[let]}
#   end

#   def score
#     self.class.score(@word)
#   end
# end
require 'pry'

class Scrabble
  SCORES = {  ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1, 
              ['D', 'G'] => 2,
              ['B', 'C', 'M', 'P'] =>	3,
              ['F', 'H', 'V', 'W', 'Y'] => 4,
              ['K'] => 5, 
              ['J', 'X'] => 8,
              ['Q' , 'Z'] => 10
    }
  
  def initialize(word)
    if word.nil? || word =~ /\s+/
      @word = ''
    else
      @word = word
    end
  end
  
  def self.score(word)
    result = 0
    keys = SCORES.keys
    word.upcase.chars.each do |let|
      idx = keys.index { |arr| arr.include?(let) }
      result += SCORES[keys[idx]]
    end
    result
  end
    
end

p Scrabble.score('alacrity')