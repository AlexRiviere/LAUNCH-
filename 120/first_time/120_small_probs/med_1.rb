#privacy
# require 'pry'

# class Machine
  
#   def start
#     self.flip_switch(:on)
#   end

#   def stop
#     self.flip_switch(:off)
#   end
  
#   def switch_status
#     switch
#   end

#   private
  
#   attr_accessor :switch
  
#   def flip_switch(desired_state)
#     self.switch = desired_state
#   end
# end

# machine = Machine.new
# machine.start
# p machine.switch_status





# #fixed Array

# class FixedArray
#   def initialize(size)
#     @array = Array.new(size)
#   end
  
#   def [](idx)
#     if idx.abs > @array.size
#       raise IndexError
#     else
#       @array[idx]
#     end
#   end
  
#   def []=(idx, obj)
#     if idx.abs > @array.size
#       raise IndexError
#     else
#       @array[idx] = obj
#     end
#   end
  
#   def to_a
#     @array.clone
#   end
  
#   def to_s
#     to_a.to_s
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










#students

# class Student
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = parking
#   end
# end

# class Undergraduate < Student
# end






# #circular queue
# require 'pry'

# class CircularQueue
#   attr_reader :buffer
  
#   def initialize(buffer_size)
#     @buffer = Array.new(buffer_size)
#     @buffer_size = buffer_size
#     @list_of_additions = []
#   end
  
#   def enqueue(obj)
#     nils = @buffer.count(nil)
#     case nils
#     #when the queue is empty
#     when @buffer_size 
#       @buffer[0] = obj
#       @list_of_additions << 0   
#     #when the queue is full
#     when 0
#       dequeue
#       enqueue(obj)
#     else 
#       index = @buffer.index(nil)
#       @buffer[index] = obj
#       @list_of_additions << index
#     end
#   end
  
#   def dequeue
#     case 
#     #when the queue is full
#     when @buffer.count(nil) == @buffer_size
#       nil
#     else
#       index = @list_of_additions.shift
#       element_removed = @buffer[index]
#       @buffer[index] = nil
#       element_removed
#     end
#   end
  
# end

# queue = CircularQueue.new(3)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# p queue.buffer
# queue.enqueue(4)
# p queue.buffer
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












#number Guesser Part 1

# class GuessingGame
#   attr_accessor :num_of_guesses, :guess, :target_number
  
#   def initialize
#     @target_number = 0
#     @num_of_guesses = 7
#     @guess = nil
#   end
  
#   def play
#     reset_target_number
#     loop do
#       puts ""
#       break if num_of_guesses == 0
#       display_num_of_guesses
#       get_user_input
#       break if analyze_guess
#     end
    
#     display_result
#     reset_guesses
#   end
  
#   private
  
#   def reset_guesses
#     self.num_of_guesses = 7
#   end
  
#   def display_result
#     if guess_matches?
#       puts "You won!"
#     else
#       puts "You ran out of guesses!"
#       puts "The number was #{target_number}"
#     end
#   end
  
#   def high_or_low
#     self.guess > @target_number ? (puts "Your guess is too high.") : (puts "Your guess is too low.")
#   end
  
#   def decrement_guesses
#     @num_of_guesses -= 1
#   end
  
#   def display_user_won_message
#     puts "That's the number!"
#   end
  
#   def guess_matches?
#     self.guess == @target_number
#   end
  
#   def analyze_guess
#     if guess_matches?
#       display_user_won_message
#       true
#     else
#       decrement_guesses
#       high_or_low
#     end
#   end
  
#   def get_user_input
#     loop do
#       print "Enter a number between 1 and 100: "
#       self.guess = gets.chomp.to_i
#       self.guess.between?(0, 100) ? break : print("Invalid guess. ") 
#     end
#   end
  
#   def reset_target_number
#     @target_number = rand(1..100)
#   end
  
#   def display_num_of_guesses
#     puts "You have #{num_of_guesses} guesses remaining"
#   end
# end

# game = GuessingGame.new
# game.play
# game.play

=begin
Create an object-oriented number guessing class for numbers in the range 1 to 100,
with a limit of 7 guesses per game. The game should play like this:

Note that a game object should start a new game with a new number to guess with 
each call to #play.

You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
That's the number!

You won!

game.play

You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high.

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have 1 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have no more guesses. You lost!

=end







#further exploration

=begin
Create a number guessing game where there is a target number and one player with 7 guesses. After each guess, the player is told whether the guess was too low, too high or if they got the answer 
correct. If the player runs out of guesses, the game is over. 
Note that a game object should start a new game with a new number to guess with each call to #play.

Nouns

Verbs
guess
tell how many guesses
tell if guess was too low or high 
tells if no more guesses



=end

# class Player
#   attr_accessor :number_of_guesses, :guess

#   def initialize
#     @number_of_guesses = 7 
#     @guess = nil
#   end
  
#   def take_guess
#     use_guess
#     @guess = nil
#     loop do
#       print "Enter a number between 1 and 100: "
#       self.guess = gets.chomp.to_i
#       valid_guess?(@guess) ? break : puts("Invalid guess. ")
#     end
#     @guess 
#   end
  
#   def guesses_left?
#     @number_of_guesses > 0
#   end
  
#   private
  
#   def valid_guess?(guess)
#     guess.between?(0, 100)
#   end
  
#   def use_guess
#     @number_of_guesses -= 1
#   end
# end

# class GuessingGame
#   attr_reader :player
  
#   def initialize
#     @player = Player.new
#     @target_number = nil
#   end
  
#   def play
#     reset
#     until player.guesses_left? == false
#       display_guesses_left
#       player_takes_guess
#       check_guess
#       puts ""
#       break if @target_number == player.guess
#     end
    
#     display_result
#     puts ""
#   end
  
#   private
  
#   def display_result
#     if player_guess_correct?
#       puts "You won!"
#     else
#       puts "You didn't get it. The number was #{@target_number}."
#     end
#   end
  
#   def player_guess_correct?
#     @target_number == player.guess
#   end
  
#   def reset
#     system 'clear'
#     @target_number = rand(0..100)
#     player.number_of_guesses = 7
#   end
  
#   def check_guess
#     if player_guess_correct?
#       puts "You got it!"
#     elsif @target_number > player.guess
#       puts "Too low."
#     else
#       puts "Too high."
#     end
#   end
  
#   def player_takes_guess
#     player.take_guess
#   end
  
#   def display_guesses_left
#     puts "You have #{player.number_of_guesses} guesses left."
#   end
  
# end



# game = GuessingGame.new
# game.play
# game.play



















# class Player
  
# end

# class GuessingGame
#   attr_accessor :num_of_guesses, :guess, :target_number

#   def initialize
#     @target_number = 0
#     @num_of_guesses = 7
#     @guess = nil
#   end

#   def play
#     reset_target_number
#     loop do
#       puts ""
#       break if num_of_guesses == 0
#       display_num_of_guesses
#       get_user_input
#       break if analyze_guess
#     end

#     display_result
#     reset_guesses
#   end

#   private

#   def reset_guesses
#     self.num_of_guesses = 7
#   end

#   def display_result
#     if guess_matches?
#       puts "You won!"
#     else
#       puts "You ran out of guesses!"
#       puts "The number was #{target_number}"
#     end
#   end

#   def high_or_low
#     @guess > @target_number ? (puts "Your guess is too high.") : (puts "Your guess is too low.")
#   end

#   def decrement_guesses
#     @num_of_guesses -= 1
#   end

#   def display_user_won_message
#     puts "That's the number!"
#   end

#   def guess_matches?
#     @guess == @target_number
#   end

#   def analyze_guess
#     if guess_matches?
#       display_user_won_message
#       true
#     else
#       decrement_guesses
#       high_or_low
#     end
#   end

#   def get_user_input
#     loop do
#       print "Enter a number between 1 and 100: "
#       @guess = gets.chomp.to_i
#       @guess.between?(0, 100) ? break : print("Invalid guess. ")
#     end
#   end

#   def reset_target_number
#     @target_number = rand(1..100)
#   end

#   def display_num_of_guesses
#     puts "You have #{num_of_guesses} guesses remaining"
#   end
# end

# game = GuessingGame.new
# game.play








#Number Guesser part 2


# class GuessingGame
#   attr_accessor :num_of_guesses, :guess, :target_number
#   attr_reader :low, :high
  
#   TOTAL_GUESSES = 10

#   def initialize(low, high)
#     @low = low
#     @high = high
#     @target_number = 0
#     @num_of_guesses = TOTAL_GUESSES
#     @guess = nil
#   end

#   def play
#     reset_target_number
#     loop do
#       puts ""
#       break if num_of_guesses == 0
#       display_num_of_guesses
#       get_user_input
#       break if analyze_guess
#     end

#     display_result
#     reset_guesses
#   end

#   private

#   def reset_guesses
#     self.num_of_guesses = TOTAL_GUESSES
#   end

#   def display_result
#     if guess_matches?
#       puts "You won!"
#     else
#       puts "You ran out of guesses!"
#       puts "The number was #{target_number}"
#     end
#   end

#   def high_or_low
#     @guess > @target_number ? (puts "Your guess is too high.") : (puts "Your guess is too low.")
#   end

#   def decrement_guesses
#     @num_of_guesses -= 1
#   end

#   def display_user_won_message
#     puts "That's the number!"
#   end

#   def guess_matches?
#     @guess == @target_number
#   end

#   def analyze_guess
#     if guess_matches?
#       display_user_won_message
#       true
#     else
#       decrement_guesses
#       high_or_low
#     end
#   end

#   def get_user_input
#     loop do
#       print "Enter a number between #{low} and #{high}: "
#       @guess = gets.chomp.to_i
#       @guess.between?(low, high) ? break : print("Invalid guess. ")
#     end
#   end

#   def reset_target_number
#     size_of_range = high - low
#     @target_number = rand(0..size_of_range) + low
#   end

#   def display_num_of_guesses
#     puts "You have #{num_of_guesses} guesses remaining"
#   end
# end

# game = GuessingGame.new(501, 1500)
# game.play
# game.play










#highest and lowest ranking cards
# OG ANSWER

#numeric cards are low cards
# jacks higher than 10s, queens higher than jacks, kings higher than queens, aces higher
# than kings
# suit plays no part in value
# if two of the same, just return one
# create to_s method that returns a string rep of the card
# require 'pry'

# class Card
#   include Comparable
  
#   attr_reader :rank, :suit

#   FACE_CARD_VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
  
#   def value_of_rank
#     if rank.is_a? Integer
#       rank
#     elsif rank.is_a? String
#       FACE_CARD_VALUES[rank]
#     end
#   end
  
#   def <=>(other)
#     value_of_rank <=> other.value_of_rank
#   end
  
#   def to_s
#     "#{rank} of #{suit}"
#   end
  
# end

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







#FURUTHER EXXPOLORATION

# require 'pry'

# class Suit
  
#   include Comparable
  
#   attr_reader :suit_rank
  
#   SUIT_RANK = {'Spades' => 4, 'Hearts' => 3, 'Clubs' => 2, 'Diamonds' => 1 }
  
#   def initialize(suit)
#     @suit_rank = SUIT_RANK[suit]
#   end
  
#   def <=>(other)
#     suit_rank <=> other.suit_rank
#   end
  
  
# end

# class Card
#   include Comparable
  
#   attr_reader :rank, :suit

#   FACE_CARD_VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = Suit.new(suit)
#   end
  
#   def value_of_rank
#     if rank.is_a? Integer
#       rank
#     elsif rank.is_a? String
#       FACE_CARD_VALUES[rank]
#     end
#   end
  
#   def <=>(other)
#     ((value_of_rank <=> other.value_of_rank) == 0) ? compare_suits(other) : value_of_rank <=> other.value_of_rank
#   end
  
#   def compare_suits(other)
#     suit <=> other.suit
#   end
  
#   def to_s
#     "#{rank} of #{suit}"
#   end
  
# end

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
# puts cards.min == Card.new(4, 'Diamonds')
# puts cards.max == Card.new(10, 'Clubs')

# # cards = [Card.new(7, 'Diamonds'),
# #         Card.new('Jack', 'Diamonds'),
# #         Card.new('Jack', 'Spades')]
# # puts cards.min == Card.new(7, 'Diamonds')
# # puts cards.max.rank == 'Jack'

# cards = [Card.new(8, 'Diamonds'),
#         Card.new(8, 'Clubs'),
#         Card.new(8, 'Spades')]
# puts cards.min == Card.new(8, 'Diamonds')
# puts cards.max == Card.new(8, 'Spades')















#deck of cards

# class Deck
#   RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
#   SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
#   def initialize
#     reset_deck
#   end
  
#   def draw
#     reset_deck if @deck.empty?
#     @deck.pop
#   end
  
#   private 
  
#   def reset_deck
#     @deck = RANKS.product(SUITS).map do |arr| 
#       Card.new(arr[0], arr[1])
#     end
    
#     @deck.shuffle!
#   end
# end

# class Card
#   include Comparable
  
#   attr_reader :rank, :suit

#   FACE_CARD_VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
  
#   def value_of_rank
#     if rank.is_a? Integer
#       rank
#     elsif rank.is_a? String
#       FACE_CARD_VALUES[rank]
#     end
#   end
  
#   def <=>(other)
#     value_of_rank <=> other.value_of_rank
#   end
  
#   def to_s
#     "#{rank} of #{suit}"
#   end
  
# end

# deck = Deck.new
# drawn = []
# 52.times { drawn << deck.draw }
# # p drawn
# p drawn.count { |card| card.rank == 5 } == 4
# p drawn.count { |card| card.suit == 'Hearts' } == 13

# drawn2 = []
# 52.times { drawn2 << deck.draw }
# p drawn != drawn2 # Almost always.












# #POker!

# # Include Card and Deck classes from the last two exercises.

# class PokerHand
#   def initialize(deck)
#     @hand = []
#     5.times{ |_| @hand << deck.draw}
#   end

#   def print
#     puts @hand
#   end

#   def evaluate
#     case
#     when royal_flush?     then 'Royal flush'
#     when straight_flush?  then 'Straight flush'
#     when four_of_a_kind?  then 'Four of a kind'
#     when full_house?      then 'Full house'
#     when flush?           then 'Flush'
#     when straight?        then 'Straight'
#     when three_of_a_kind? then 'Three of a kind'
#     when two_pair?        then 'Two pair'
#     when pair?            then 'Pair'
#     else                       'High card'
#     end
#   end

#   private
#   def list_suits
#     @hand.map { |card| card.suit }
#   end
  
#   def list_ranks
#     @hand.map { |card| card.rank }
#   end
  
#   def all_same_suits?
#     list_suits.uniq.size == 1
#   end
  
#   def counts_of_ranks
#     list_ranks.uniq.map { |rank| list_ranks.count(rank) }
#   end
  
#   def ranks_in_sequence?
#     rank_values = @hand.map{ |card| card.value_of_rank}
#     min = rank_values.min
#     max = rank_values.max
#     (min..max).to_a.all? { |value| rank_values.include?(value) }
#   end
  
#   def royal_flush?
#     ranks = list_ranks
#     all_same_suits? && 
#       ranks.count(10) == 1 &&
#       ranks.count('Jack') == 1 &&
#       ranks.count('Queen') == 1 &&
#       ranks.count('King') == 1 &&
#       ranks.count('Ace') == 1
#   end

#   def straight_flush?
#     ranks_in_sequence? && all_same_suits?
#   end

#   def four_of_a_kind?
#     counts_of_ranks.max == 4
#   end

#   def full_house?
#     counts_of_ranks.max == 3 && counts_of_ranks.min == 2
#   end

#   def flush?
#     all_same_suits?
#   end

#   def straight?
#     ranks_in_sequence?
#   end

#   def three_of_a_kind?
#     counts_of_ranks.max == 3
#   end

#   def two_pair?
#     counts_of_ranks.count(2) == 2
#   end

#   def pair?
#     counts_of_ranks.max == 2
#   end
# end

# class Deck
#   RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
#   SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
#   def initialize
#     reset_deck
#   end
  
#   def draw
#     reset_deck if @deck.empty?
#     @deck.pop
#   end
  
#   private 
  
#   def reset_deck
#     @deck = RANKS.product(SUITS).map do |arr| 
#       Card.new(arr[0], arr[1])
#     end
    
#     @deck.shuffle!
#   end
# end

# class Card
#   include Comparable
  
#   attr_reader :rank, :suit

#   FACE_CARD_VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
  
#   def value_of_rank
#     if rank.is_a? Integer
#       rank
#     elsif rank.is_a? String
#       FACE_CARD_VALUES[rank]
#     end
#   end
  
#   def <=>(other)
#     value_of_rank <=> other.value_of_rank
#   end
  
#   def to_s
#     "#{rank} of #{suit}"
#   end
  
# end


# hand = PokerHand.new(Deck.new)
# hand.print
# # puts hand.evaluate

# # Danger danger danger: monkey
# # patching for testing purposes.
# class Array
#   alias_method :draw, :pop
# end

# # # Test that we can identify each PokerHand type.
# hand = PokerHand.new([
#   Card.new(10,      'Hearts'),
#   Card.new('Ace',   'Hearts'),
#   Card.new('Queen', 'Hearts'),
#   Card.new('King',  'Hearts'),
#   Card.new('Jack',  'Hearts')
# ])
# puts hand.evaluate == 'Royal flush'

# hand = PokerHand.new([
#   Card.new(8,       'Clubs'),
#   Card.new(9,       'Clubs'),
#   Card.new('Queen', 'Clubs'),
#   Card.new(10,      'Clubs'),
#   Card.new('Jack',  'Clubs')
# ])
# puts hand.evaluate == 'Straight flush'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(3, 'Diamonds')
# ])
# puts hand.evaluate == 'Four of a kind'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(5, 'Hearts')
# ])
# puts hand.evaluate == 'Full house'

# hand = PokerHand.new([
#   Card.new(10, 'Hearts'),
#   Card.new('Ace', 'Hearts'),
#   Card.new(2, 'Hearts'),
#   Card.new('King', 'Hearts'),
#   Card.new(3, 'Hearts')
# ])
# puts hand.evaluate == 'Flush'

# hand = PokerHand.new([
#   Card.new(8,      'Clubs'),
#   Card.new(9,      'Diamonds'),
#   Card.new(10,     'Clubs'),
#   Card.new(7,      'Hearts'),
#   Card.new('Jack', 'Clubs')
# ])
# puts hand.evaluate == 'Straight'

# hand = PokerHand.new([
#   Card.new('Queen', 'Clubs'),
#   Card.new('King',  'Diamonds'),
#   Card.new(10,      'Clubs'),
#   Card.new('Ace',   'Hearts'),
#   Card.new('Jack',  'Clubs')
# ])
# puts hand.evaluate == 'Straight'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(6, 'Diamonds')
# ])
# puts hand.evaluate == 'Three of a kind'

# hand = PokerHand.new([
#   Card.new(9, 'Hearts'),
#   Card.new(9, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(8, 'Spades'),
#   Card.new(5, 'Hearts')
# ])
# puts hand.evaluate == 'Two pair'

# hand = PokerHand.new([
#   Card.new(2, 'Hearts'),
#   Card.new(9, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(9, 'Spades'),
#   Card.new(3, 'Diamonds')
# ])
# puts hand.evaluate == 'Pair'

# hand = PokerHand.new([
#   Card.new(2,      'Hearts'),
#   Card.new('King', 'Clubs'),
#   Card.new(5,      'Diamonds'),
#   Card.new(9,      'Spades'),
#   Card.new(3,      'Diamonds')
# ])
# puts hand.evaluate == 'High card'















#stack machine interpretation

# require 'pry'
# class MiniLangError < StandardError; end
# class StackError < MiniLangError; end
# class InvalidToken < MiniLangError; end

# class Minilang
#   def initialize(program)
#     @register = 0
#     @stack = []
#     @program = program.split
#   end
  
#   def eval
#     loop do
#       break if @program.empty?
    
#       command = @program.shift
#       case 
#         when command == 'PRINT'
#           send :print_out
#         when command.to_i != 0
#           @register = command.to_i
#         when command == 'PUSH'
#           send :push_to_stack
#         when command == 'MULT'
#           send :mult
#         when command == 'ADD'
#           send :add
#         when command == 'POP'
#           send :pop
#         when command == 'DIV'
#           send :div
#         when command == 'MOD'
#           send :mod
#         when command == 'SUB'
#           send :subtract
#         else 
#           raise InvalidToken, "Invalid Token!"
#       end
#     end
#   rescue MiniLangError => error
#     puts error.message
#   end
  
#   private 
  
#   def pop
#     if @stack.pop.nil?
#       raise StackError, "Empty Stack!"
#     else
#       @register = @stack.pop
#     end
#   end
  
#   def mod
#     @register %= @stack.pop.to_i
#   end
  
#   def div
#     @register /= @stack.pop.to_i
#   end
  
#   def add
#     @register += @stack.pop.to_i
#   end
  
#   def subtract
#     @register -= @stack.pop.to_i
#   end
  
#   def mult
#     @register *= @stack.pop.to_i
#   end
  
#   def push_to_stack
#     @stack.push(@register)
#   end
  
#   def print_out
#     puts @register
#   end
# end


# Minilang.new('PRINT').eval
# # 0

# Minilang.new('5 3 PRINT').eval

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# # # 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # # 5
# # # 3
# # # 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # # 10
# # # 5


# Minilang.new('5 PUSH POP POP PRINT').eval
# # # Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # # 12
# puts ""
# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # # Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # # 8
# puts ""
# Minilang.new('6 PUSH').eval
# # # (nothing printed; no PRINT commands)










#circular queue

# collection of objects
# when object is added, it is added to the position that follows the  most recently
# added object. If the most recently added object was last in the queue, the new object
# swings back around and starts at 0
# removing an object always removes the object that has been longest in the queue
# if there are no empty spots in the queue, you have to remove the object that has been
# in the queue the longest 


class CircularQueue
  attr_reader :buffer
  
  def initialize(buffer_size)
   @buffer = Array.new(buffer_size) 
   @size = buffer_size
   @current_index = 0
   @last_index = buffer_size - 1
   @list_indexes_oldest_first = []
  end
  
  def enqueue(obj)
    if any_spaces?
      find_empty_space unless current_index_empty?
      place_object(obj)
    else
      dequeue
      enqueue(obj)
    end

    add_index_to_list
    increment_index
  end
  
  def dequeue
    return nil if count_spaces == @size
    removed_el = @buffer[@list_indexes_oldest_first.first]
    @buffer[@list_indexes_oldest_first.shift] = nil
    removed_el
  end
  
  private
  
  def add_index_to_list
    @list_indexes_oldest_first << @current_index    
  end
  
  def find_empty_space
    increment_index until current_index_empty?
        
  end
  
  def place_object(obj)
    @buffer[@current_index] = obj
  end
  
  def current_index_empty?
    @buffer[@current_index] == nil
  end
  
  def any_spaces?
    count_spaces > 0
  end
  
  def increment_index
    if @current_index == @last_index
      @current_index = 0
    else
      @current_index += 1
    end
  end
  
  def count_spaces
    @buffer.count(nil)
  end
end





queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1


queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2


queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)

puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil





queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil