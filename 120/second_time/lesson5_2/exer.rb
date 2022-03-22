require 'pry'

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def <=>(other)
    rank_val <=> other.rank_val
  end
  
  def rank_val
    case rank
    when Integer then rank
    when "Jack" then 11
    when "Queen" then 12
    when "King" then 13
    when "Ace" then 14
    end
  end
  
  def to_s
    "#{rank} of #{suit}"
  end
  
end


class Deck
  attr_reader :deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  def initialize
    @deck = RANKS.product(SUITS).map{ |rank, suit| Card.new(rank, suit) }.shuffle!
  end
  
  def draw
    @deck.empty? ? reset : @deck.pop
  end
  
  private
  
  def reset
    @deck = RANKS.product(SUITS).map{ |rank, suit| Card.new(rank, suit) }.shuffle!
  end
end






# Include Card and Deck classes from the last two exercises.

class PokerHand
  def initialize(deck)
    @hand = []
    if deck.is_a? Array
      @hand = deck
    else
      5.times {@hand << deck.deck.pop}
    end
  end

  def print
    puts @hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private
  
  def same_suits?
    @hand.map{ |card| card.suit }.uniq.size == 1  
  end
  
  def sequence?
    ranks = @hand.map{ |card| card.rank_val}
    (ranks.max - ranks.min) == 4 && ranks.uniq.size == 5
  end

  def royal_flush?
    same_suits? && (@hand.map{ |card| card.rank } - [10, "Jack", "Queen", "King", "Ace"]) == []
  end

  def straight_flush?
    same_suits? && sequence?
  end
  
  def get_rank_counts
    ranks = @hand.map{ |card| card.rank }
    ranks.uniq.map{ |rank| ranks.count(rank)}
  end

  def four_of_a_kind?
    get_rank_counts.include?(4)
  end

  def full_house?
    get_rank_counts.include?(3) && get_rank_counts.include?(2)
  end

  def flush?
    same_suits?
  end

  def straight?
    !same_suits? && sequence?
  end

  def three_of_a_kind?
    get_rank_counts.include?(3)
  end

  def two_pair?
    get_rank_counts.count(2) == 2
  end

  def pair?
    get_rank_counts.include?(2)
  end
end


hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# # Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'






# deck = Deck.new
# drawn = []
# 52.times { drawn << deck.draw }
# p drawn.count { |card| card.rank == 5 } == 4
# p drawn.count { |card| card.suit == 'Hearts' } == 13

# drawn2 = []
# 52.times { drawn2 << deck.draw }
# p drawn.size
# p drawn2.size
# p drawn != drawn2 # Almost always.


















# cards = [Card.new(2, 'Hearts'),
#         Card.new(10, 'Diamonds'),
#         Card.new('Ace', 'Clubs')]
# puts cards
# puts cards.min == Card.new(2, 'Hearts')
# puts cards.max == Card.new('Ace', 'Clubs')

# cards = [Card.new(5, 'Hearts')]
# puts cards.min == Card.new(5, 'Hearts')
# puts cards.max == Card.new(5, 'Hearts')

# cards = [Card.new(4, 'Hearts'),
#         Card.new(4, 'Diamonds'),
#         Card.new(10, 'Clubs')]
# puts cards.min.rank == 4
# puts cards.max == Card.new(10, 'Clubs')

# cards = [Card.new(7, 'Diamonds'),
#         Card.new('Jack', 'Diamonds'),
#         Card.new('Jack', 'Spades')]
# puts cards.min == Card.new(7, 'Diamonds')
# puts cards.max.rank == 'Jack'

# cards = [Card.new(8, 'Diamonds'),
#         Card.new(8, 'Clubs'),
#         Card.new(8, 'Spades')]
# puts cards.min.rank == 8
# puts cards.max.rank == 8









# require 'pry'
# class GuessingGame
#   attr_reader :size_of_range, :first, :last
  
  
#   def initialize(first, last)
#     @current_guess = nil
#     @first = first
#     @last = last
#     @size_of_range = last - first
#   end
  
#   def play
#     reset
#     loop do
#       break if out_of_guesses?
#       display_guesses
#       @current_guess = ask_for_guess
#       give_guess_feedback
#       break if @current_guess == @target_number
#       decrement_guesses
#     end
#     goodbye_message
#   end
  
#   private
  
#   def goodbye_message
#     if out_of_guesses?
#       puts "You have no more guesses. You lost!"
#       puts "The target number was #{@target_number}"
#     else
#       puts "You won!"
#     end
#     puts ""
#   end
  
#   def give_guess_feedback
#     if @current_guess == @target_number
#       puts "That's the number!"
#     elsif @current_guess > @target_number
#       puts "Your guess is too high"
#     elsif @current_guess < @target_number
#       puts "Your guess is too low"
#     end
#     puts ""
#   end
  
#   def out_of_guesses?
#     @guesses_left == 0
#   end
  
#   def decrement_guesses
#     @guesses_left -= 1
#   end
  
#   def ask_for_guess
#     guess = nil
#     loop do
#       print "Enter a number between #{first} and #{last}: "
#       guess = gets.chomp.to_i
#       break if (first..last).include?(guess)
#       print "Invalid guess."
#     end
#     guess
#   end
  
#   def display_guesses
#     if @guesses_left > 1
#       puts "You have #{@guesses_left} guesses remaining."
#     else
#       puts "You have #{@guesses_left} guess remaining."
#     end
#   end
  
#   def reset
#     @target_number = rand(first..last)
#     @guesses_left = Math.log2(size_of_range).to_i + 1
#   end

# end



# game = GuessingGame.new(501, 1500)
# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!









# class Animal
#   def eat
#     puts "I eat."
#   end
# end

# class Fish < Animal
#   def eat
#     puts "I eat plankton."
#   end
# end

# class Dog < Animal
#   def eat
#      puts "I eat kibble."
#   end
# end

# def feed_animal(animal)
#   animal.eat
# end

# array_of_animals = [Animal.new, Fish.new, Dog.new]
# array_of_animals.each do |animal|
#   feed_animal(animal)
# end

# =begin
# polymorphic behavior BY class inheritance
# method overriding
# =end

# class Person
#   attr_accessor :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end
# end

# class Pet
#   def jump
#     puts "I'm jumping!"
#   end
# end

# class Cat < Pet; end

# class Bulldog < Pet; end

# bob = Person.new("Robert")

# kitty = Cat.new
# bud = Bulldog.new

# bob.pets << kitty
# bob.pets << bud                     

# bob.pets.jump 

##


# class Animal
#   def initialize
#   end
# end

# class Bear < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end

# bear = Bear.new("black") 


# class Dog
#   def initialize(name)
#     @name = name
#   end
  
#   def speak
#     puts "Bark! my name is #{name}!"
#   end
  
#   def speak_with(other_dog)
#     puts "#{name} says bark, #{other_dog.name} says bark!"
#   end
  
#   protected
  
#   attr_reader :name
# end

# charlie = Dog.new("Charlie")
# ruby = Dog.new("Ruby")
# charlie.speak_with(ruby)

# class Shape
#   @@sides = nil

#   def self.sides
#     @@sides
#   end

#   def sides
#     @@sides
#   end
# end

# class Triangle < Shape
#   def initialize
#     @@sides = 3
#   end
# end

# class Quadrilateral < Shape
#   def initialize
#     @@sides = 4
#   end
# end
# What can executing `Triangle.sides` return? What can executing `Triangle.new.sides` return? What does this demonstrate about class variables?

# p Triangle.sides
# p Triangle.new.sides



# class Person
#   def initialize(n)
#     @name = n
#   end
  
#   def get_name
#     @name
#   end
# end

# bob = Person.new('bob')
# joe = Person.new('joe')

# puts bob.inspect # => #<Person:0x000055e79be5dea8 @name="bob">
# puts joe.inspect # => #<Person:0x000055e79be5de58 @name="joe">

# p bob.get_name


# class Animal
#   def initialize(name)
#     @name = name
#   end

#   def speak
#     puts sound
#   end

#   def sound
#     "#{@name} says "
#   end
# end

# class Cow < Animal
#   def sound
#     super + "moooooooooooo!"
#   end
# end

# daisy = Cow.new("Daisy")
# daisy.speak

# module CanCheer
#   MASCOT = "Wildcats"
  
#   class School
    

#     def cheer
#       puts "Lets go #{MASCOT}'s!"
#     end
#   end
# end

# class Institution
  
# end



# southwest = CanCheer::School.new
# # p southw
# p CanCheer::School.ancestors

# class Animal
#   def eat
#     puts "I eat."
#   end
# end

# class Fish < Animal
#   def eat
#     puts "I eat plankton."
#   end
# end

# class Dog < Animal
#   def eat
#     puts "I eat kibble."
#   end
# end

# def feed_animal(animal)
#   animal.eat
# end

# array_of_animals = [Animal.new, Fish.new, Dog.new]
# array_of_animals.each do |animal|
#   feed_animal(animal)
# end

=begin
polymorphic behavior BY class inheritance
method overriding

class Person
  def initialize(n)
    @name = n
  end
  
  def get_name
    @name
  end
end

bob = Person.new('bob')
joe = Person.new('joe')

puts bob.inspect # => #<Person:0x000055e79be5dea8 @name="bob">
puts joe.inspect # => #<Person:0x000055e79be5de58 @name="joe">

p bob.get_name

Instance variables are scoped at the object level 

=end





# game = GuessingGame.new
# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!'










# require 'pry'
# class InvalidCommandError < StandardError; end
# class EmptyStackError < StandardError; end

# class Minilang
#   def initialize(instr)
#     @register = 0
#     @instructions = instr.split
#     @stack = []
#   end
  
#   def eval
#     @instructions.each do |instr|
#       evaluate(instr)
#     end
#   end
  
#   def evaluate(instr)
#     # case instr
#     # when "PUSH" then send(instr.downcase.to_sym)
#     # when "ADD"  then send(instr.downcase.to_sym)
#     # when "SUB"  then send(instr.downcase.to_sym) 
#     # when "MULT" then send(instr.downcase.to_sym)
#     # when "DIV"  then send(instr.downcase.to_sym)
#     # when "MOD"  then send(instr.downcase.to_sym)
#     # when "POP"  then send(instr.downcase.to_sym)
#     # when "PRINT"  then send(instr.downcase.to_sym)
    
#     if instr =~ /\A[-+]?\d+\z/
#       @register = instr.to_i
#     elsif %w(PUSH ADD SUB MULT DIV MOD POP PRINT).include?(instr)
#       send(instr.downcase.to_sym)
#     else
#       raise InvalidCommandError, "Invalid Token: #{instr}"
#     end
#   end
  
#   def push
#     @stack << @register
    
#   end
  
#   def add
#     @register += pop_from_stack
#   end
  
#   def sub
#     @register -= pop_from_stack
#   end
  
#   def mult
#     @register *= pop_from_stack
#   end
  
#   def div
#     @register /= pop_from_stack
#   end
  
#   def mod
#     @register %= pop_from_stack
#   end
  
#   def pop
#     @register = pop_from_stack
#   end
  
#   def pop_from_stack
#     if @stack.last.nil?
#       raise EmptyStackError, "Empty Stack!"
#     else
#       @stack.pop.to_i
#     end
#   end
  
#   def print
#     puts @register
#   end
  
# end



# # Minilang.new('PRINT').eval
# # # 0

# # Minilang.new('5 PUSH 3 MULT PRINT').eval
# # # 15

# # Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # # 5
# # # 3
# # # 8

# # Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# # Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

# # Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # # 6

# # Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # # Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

# Minilang.new('6 PUSH').eval
# # # (nothing printed; no PRINT commands)







# class CircularQueue
#   attr_reader :position, :buffer
#   def initialize(size)
#     @buffer = Array.new(size)
#     @position = 0
#     @oldest_index = 0
#     @size = size
#   end
  
#   def enqueue(obj)
#     if count_nils == 0
#       @buffer[@oldest_index] = obj
#       increment_index
#       increment_oldest
#     else
#       until @buffer[position] == nil
#         increment_index
#       end
#       @buffer[position] = obj
#       increment_index
#     end
#   end
  
#   def dequeue
#     if count_nils == @size
#       nil
#     else
#       removed = @buffer[@oldest_index]
#       @buffer[@oldest_index] = nil
#       increment_oldest
#       removed
#     end
#   end
  
#   def count_nils
#     @buffer.count(nil)
#   end
  
#   def increment_index
#     if @position == @size - 1
#       @position = 0
#     else
#       @position += 1
#     end
#   end
  
#   def increment_oldest
#     if @oldest_index == @size - 1
#       @oldest_index = 0
#     else
#       @oldest_index += 1
#     end
#   end
# end



# queue = CircularQueue.new(3)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# queue = CircularQueue.new(4)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 4
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil







# class Student
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super (name, year)
#     @parking = parking
#   end
# end

# class Undergraduate < Student
# end










# class FixedArray
#   def initialize(size)
#     @size = size
#     @array = Array.new(size)
#   end
  
#   def [](idx)
#     valid_index?(idx)
#     @array[idx]
#   end
  
#   def valid_index?(idx)
#     raise IndexError if idx.abs > @size
#     true
#   end
  
#   def []=(idx, value)
#     valid_index?(idx)
#     @array[idx] = value
#   end
  
#   def to_a
#     @array
#   end
  
#   def to_s
#     @array.to_s
#   end
# end



# fixed_array = FixedArray.new(5)
# puts fixed_array[3] == nil
# puts fixed_array.to_a == [nil] * 5

# fixed_array[3] = 'a'
# puts fixed_array[3] == 'a'
# puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

# fixed_array[1] = 'b'
# puts fixed_array[1] == 'b'
# puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

# fixed_array[1] = 'c'
# puts fixed_array[1] == 'c'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

# fixed_array[4] = 'd'
# puts fixed_array[4] == 'd'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
# puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

# puts fixed_array[-1] == 'd'
# puts fixed_array[-4] == 'c'

# begin
#   fixed_array[6]
#   puts false
# rescue IndexError
#   puts true
# end

# begin
#   fixed_array[-7] = 3
#   puts false
# rescue IndexError
#   puts true
# end

# begin
#   fixed_array[7] = 3
#   puts false
# rescue IndexError
#   puts true
# end










# class Machine
  
#   def start
#     self.flip_switch(:on)
#   end

#   def stop
#     self.flip_switch(:off)
#   end

#   private
  
#   attr_writer :switch
  
#   def flip_switch(desired_state)
#     self.switch = desired_state
#   end
# end








# require 'pry'

# class AuthenticationError < Exception; end

# # A mock search engine
# # that returns a random number instead of an actual count.
# class SearchEngine
#   def self.count(query, api_key)
    
#     unless valid?(api_key)
#       raise AuthenticationError, 'API key is not valid.'
#     end

#     rand(200_000)
#   end

#   private

#   def self.valid?(key)
#     key == 'LS1A'
#   end
# end

# module DoesItRock
#   API_KEY = 'LS1'

#   class NoScore; end

#   class Score
#     def self.for_term(term)
#       positive = SearchEngine.count(%{"#{term} rocks"}, API_KEY).to_f
#       negative = SearchEngine.count(%{"#{term} is not fun"}, API_KEY).to_f
      
#       positive / (positive + negative)
#     rescue ZeroDivisionError
#       NoScore.new
#     end
#   end

#   def self.find_out(term)
#     score = Score.for_term(term)
#     binding.pry
#     case score
#     when NoScore
#       "No idea about #{term}..."
#     when 0...0.5
#       "#{term} is not fun."
#     when 0.5
#       "#{term} seems to be ok..."
#     else
#       "#{term} rocks!"
#     end
#   rescue StandardError => e
#     e.message
#   end
# end

# # Example (your output may differ)

# puts DoesItRock.find_out('Sushi')       # Sushi seems to be ok...
# # puts DoesItRock.find_out('Rain')        # Rain is not fun.
# # puts DoesItRock.find_out('Bug hunting') # Bug hunting rocks!








# class Mail
#   def to_s
#     "#{self.class}"
#   end
# end

# class Email < Mail
#   attr_accessor :subject, :body

#   def initialize(subject, body)
#     @subject = subject
#     @body = body
#   end
# end

# class Postcard < Mail
#   attr_reader :text

#   def initialize(text)
#     @text = text
#   end
# end

# module Mailing
#   def receive(mail, sender)
#     mailbox << mail unless reject?(sender)
#   end

#   # Change if there are sources you want to block.
#   def reject?(sender)
#     false
#   end

#   def send(destination, mail)
#     "Sending #{mail} from #{name} to: #{destination}"
#     # Omitting the actual sending.
#   end
# end

# class CommunicationsProvider
#   attr_reader :name, :account_number

#   def initialize(name, account_number=nil)
#     @name = name
#     @account_number = account_number
#   end
# end

# class EmailService < CommunicationsProvider
#   include Mailing

#   attr_accessor :email_address, :mailbox

#   def initialize(name, account_number, email_address)
#     super(name, account_number)
#     @email_address = email_address
#     @mailbox = []
#   end

#   def empty_inbox
#     self.mailbox = []
#   end
# end

# class TelephoneService < CommunicationsProvider
#   def initialize(name, account_number, phone_number)
#     super(name, account_number)
#     @phone_number = phone_number
#   end
# end

# class PostalService < CommunicationsProvider
#   attr_accessor :street_address, :mailbox
  
#   include Mailing

#   def initialize(name, street_address)
#     super(name)
#     @street_address = street_address
#     @mailbox = []
#   end

#   def change_address(new_address)
#     self.street_address = new_address
#   end
# end

# rafaels_email_account = EmailService.new('Rafael', 111, 'Rafael@example.com')
# johns_phone_service   = TelephoneService.new('John', 122, '555-232-1121')
# johns_postal_service  = PostalService.new('John', '47 Sunshine Ave.')
# ellens_postal_service = PostalService.new('Ellen', '860 Blackbird Ln.')

# puts johns_postal_service.send(ellens_postal_service.street_address, Postcard.new('Greetings from Silicon Valley!'))
# # => undefined method `860 Blackbird Ln.' for #<PostalService:0x00005571b4aaebe8> (NoMethodError)







# class TaskManager
#   attr_reader :owner
#   attr_accessor :tasks

#   def initialize(owner)
#     @owner = owner
#     @tasks = []
#   end

#   def add_task(name, priority=:normal)
#     task = Task.new(name, priority)
#     tasks.push(task)
#   end

#   def complete_task(task_name)
#     completed_task = nil

#     tasks.each do |task|
#       completed_task = task if task.name == task_name
#     end

#     if completed_task
#       tasks.delete(completed_task)
#       puts "Task '#{completed_task.name}' complete! Removed from list."
#     else
#       puts "Task not found."
#     end
#   end

#   def display_all_tasks
#     display(tasks)
#   end

#   def display_high_priority_tasks
#     high_tasks = tasks.select do |task|
#       task.priority == :high
#     end

#     display(high_tasks)
#   end

#   private

#   def display(tasks)
#     puts "--------"
#     tasks.each do |task|
#       puts task
#     end
#     puts "--------"
#   end
# end

# class Task
#   attr_accessor :name, :priority

#   def initialize(name, priority=:normal)
#     @name = name
#     @priority = priority
#   end

#   def to_s
#     "[" + sprintf("%-6s", priority) + "] #{name}"
#   end
# end

# valentinas_tasks = TaskManager.new('Valentina')

# valentinas_tasks.add_task('pay bills', :high)
# valentinas_tasks.add_task('read OOP book')
# valentinas_tasks.add_task('practice Ruby')
# valentinas_tasks.add_task('run 5k', :low)

# valentinas_tasks.complete_task('read OOP book')

# valentinas_tasks.display_all_tasks
# valentinas_tasks.display_high_priority_tasks










# class BankAccount
#   attr_reader :balance

#   def initialize(account_number, client)
#     @account_number = account_number
#     @client = client
#     @balance = 0
#   end

#   def deposit(amount)
#     if amount > 0
#       self.balance += amount
#       "$#{amount} deposited. Total balance is $#{balance}."
#     else
#       "Invalid. Enter a positive amount."
#     end
#   end

#   def withdraw(amount)
#     if amount < 0 || amount > balance
#       "Invalid. Enter positive amount less than or equal to current balance ($#{balance})."
#     else
#       self.balance -= amount
#       "$#{amount} withdrawn. Total balance is $#{balance}."
#     end
#     # if amount > 0
#     #   success = (self.balance -= amount)
#     # else
#     #   success = false
#     # end

#     # if success
#     #   "$#{amount} withdrawn. Total balance is $#{balance}."
#     # else
#     #   "Invalid. Enter positive amount less than or equal to current balance ($#{balance})."
#     # end
#   end

#   def balance=(new_balance)
#     if valid_transaction?(new_balance)
#       @balance = new_balance
#       true
#     else
#       false
#     end
#   end

#   def valid_transaction?(new_balance)
#     new_balance >= 0
#   end
# end

# # Example

# account = BankAccount.new('5538898', 'Genevieve')

#                           # Expected output:
# p account.balance         # => 0
# p account.deposit(50)     # => $50 deposited. Total balance is $50.
# p account.balance         # => 50
# p account.withdraw(80)    # => Invalid. Enter positive amount less than or equal to current balance ($50).
#                           # Actual output: $80 withdrawn. Total balance is $50.
# p account.balance         # => 50
# p account.withdraw(30)










# class Length
#   attr_reader :value, :unit
  
#   def initialize(value, unit)
#     @value = value
#     @unit = unit
#   end

#   def as_kilometers
#     convert_to(:km, { km: 1, mi: 0.6213711, nmi: 0.539957 })
#   end

#   def as_miles
#     convert_to(:mi, { km: 1.609344, mi: 1, nmi: 0.8689762419 })
#   end

#   def as_nautical_miles
#     convert_to(:nmi, { km: 1.8519993, mi: 1.15078, nmi: 1 })
#   end

#   def <=>(other)
#     case unit
#     when :km  then value <=> other.as_kilometers.value
#     when :mi  then value <=> other.as_miles.value
#     when :nmi then value <=> other.as_nautical_miles.value
#     end
#   end

#   def <(other)
#     case unit
#     when :km  then value < other.as_kilometers.value
#     when :mi  then value < other.as_miles.value
#     when :nmi then value < other.as_nautical_miles.value
#     end
#   end

#   def <=(other)
#     self < other || self == other
#   end

#   def >(other)
#     !(self <= other)
#   end

#   def >=(other)
#     self > other || self == other
#   end

#   def to_s
#     "#{value} #{unit}"
#   end

#   private

#   def convert_to(target_unit, conversion_factors)
#     Length.new((value / conversion_factors[unit]).round(4), target_unit)
#   end
# end

# # Example

# puts [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)].sort
# # => comparison of Length with Length failed (ArgumentError)
# # expected output:
# # 1 km
# # 1 mi
# # 1 nmi











# class File
#   attr_accessor :name, :byte_content

#   def initialize(name)
#     @name = name
#   end

#   alias_method :read,  :byte_content
#   alias_method :write, :byte_content=

#   def copy(target_file_name)
#     target_file = self.class.new(target_file_name)
#     target_file.write(read)

#     target_file
#   end

#   def to_s
#     "#{name}.#{self.class::FORMAT}"
#   end
# end

# class MarkdownFile < File
#   FORMAT = :md
# end

# class VectorGraphicsFile < File
#   FORMAT = :svg
# end

# class MP3File < File
#   FORMAT = :mp3
# end

# # Test

# blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
# blog_post.write('Content will be added soon!'.bytes)

# copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

# puts copy_of_blog_post.is_a? MarkdownFile     # true
# puts copy_of_blog_post.read == blog_post.read # true

# puts blog_post













# class EmployeeManagementSystem
#   attr_reader :employer

#   def initialize(employer)
#     @employer = employer
#     @employees = []
#   end

#   def add(employee)
#     if exists?(employee)
#       puts "Employee serial number is already in the system."
#     else
#       employees.push(employee)
#       puts "Employee added."
#     end
#   end

#   alias_method :<<, :add

#   def remove(employee)
#     if !exists?(employee)
#       puts "Employee serial number is not in the system."
#     else
#       employees.delete(employee)
#       puts "Employee deleted."
#     end
#   end

#   def exists?(employee)
#     employees.any? { |e| e == employee }
#   end

#   def display_all_employees
#     puts "#{employer} Employees: "

#     employees.each do |employee|
#       puts ""
#       puts employee.to_s
#     end
#   end

#   private

#   attr_accessor :employees
# end

# class Employee
#   attr_reader :name

#   def initialize(name, serial_number)
#     @name = name
#     @serial_number = serial_number
#   end

#   def ==(other)
#     serial_number == other.serial_number
#   end

#   def to_s
#     "Name: #{name}\n" +
#     "Serial No: #{abbreviated_serial_number}"
#   end

#   protected

#   attr_reader :serial_number

#   def abbreviated_serial_number
#     serial_number[-4..-1]
#   end
# end

# # Example

# miller_contracting = EmployeeManagementSystem.new('Miller Contracting')

# becca = Employee.new('Becca', '232-4437-1932')
# raul = Employee.new('Raul', '399-1007-4242')
# natasha = Employee.new('Natasha', '399-1007-4242')

# miller_contracting << becca     # => Employee added.
# miller_contracting << raul      # => Employee added.
# miller_contracting << raul      # => Employee serial number is already in the system.
# miller_contracting << natasha   # => Employee serial number is already in the system.
# miller_contracting.remove(raul) # => Employee deleted.
# miller_contracting.add(natasha) # => Employee added.

# miller_contracting.display_all_employees








# class Person
#   attr_reader :name
#   attr_accessor :location

#   def initialize(name)
#     @name = name
#   end

#   def teleport_to(latitude, longitude)
#     @location = GeoLocation.new(latitude, longitude)
#   end
# end

# class GeoLocation
#   attr_reader :latitude, :longitude

#   def initialize(latitude, longitude)
#     @latitude = latitude
#     @longitude = longitude
#   end
  
#   def ==(other)
#     latitude == other.latitude && longitude == other.longitude
#   end

#   def to_s
#     "(#{latitude}, #{longitude})"
#   end
# end

# # Example

# ada = Person.new('Ada')
# ada.location = GeoLocation.new(53.477, -2.236)

# grace = Person.new('Grace')
# grace.location = GeoLocation.new(-33.89, 151.277)

# ada.teleport_to(-33.89, 151.277)

# puts ada.location                   # (-33.89, 151.277)
# puts grace.location                 # (-33.89, 151.277)
# puts ada.location == grace.location # expected: true
#                                     # actual: false










# class Animal
#   def initialize(diet, superpower)
#     @diet = diet
#     @superpower = superpower
#   end

#   def move
#     puts "I'm moving!"
#   end

#   def superpower
#     puts "I can #{@superpower}!"
#   end
# end

# class Fish < Animal
#   def move
#     puts "I'm swimming!"
#   end
# end

# class Bird < Animal
# end

# class FlightlessBird < Bird
#   def initialize(diet, superpower)
#     super
#   end

#   def move
#     puts "I'm running!"
#   end
# end

# class SongBird < Bird
#   def initialize(diet, superpower, song)
#     super(diet, superpower)
#     @song = song
#   end

#   def move
#     puts "I'm flying!"
#   end
# end

# # Examples

# unicornfish = Fish.new(:herbivore, 'breathe underwater')
# penguin = FlightlessBird.new(:carnivore, 'drink sea water')
# robin = SongBird.new(:omnivore, 'sing', 'chirp chirrr chirp chirp chirrrr')










# class Library
#   attr_accessor :address, :phone, :books

#   def initialize(address, phone)
#     @address = address
#     @phone = phone
#     @books = []
#   end

#   def check_in(book)
#     books.push(book)
#   end
  
#   def display_data
#     @books.each { |book| book.display_data }
#   end
# end

# class Book
#   attr_accessor :title, :author, :isbn

#   def initialize(title, author, isbn)
#     @title = title
#     @author = author
#     @isbn = isbn
#   end

#   def display_data
#     puts "---------------"
#     puts "Title: #{title}"
#     puts "Author: #{author}"
#     puts "ISBN: #{isbn}"
#     puts "---------------"
#   end
# end

# community_library = Library.new('123 Main St.', '555-232-5652')
# learn_to_program = Book.new('Learn to Program', 'Chris Pine', '978-1934356364')
# little_women = Book.new('Little Women', 'Louisa May Alcott', '978-1420951080')
# wrinkle_in_time = Book.new('A Wrinkle in Time', 'Madeleine L\'Engle', '978-0312367541')

# community_library.check_in(learn_to_program)
# community_library.check_in(little_women)
# community_library.check_in(wrinkle_in_time)

# community_library.display_data