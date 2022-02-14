require "pry"
require 'yaml'
PROMPTS = YAML.load_file("21_game.yml")

module Hand
  attr_accessor :cards_in_hand, :name

  def initialize
    @cards_in_hand = []
  end

  def hit(current_cards)
    display_hit
    cards_in_hand.concat([current_cards.deck.shuffle!.pop])
  end
  
  def display_hit
    puts "#{name} chose to hit."
    puts ""    
  end

  def stay
    puts "#{name} chose to stay."
    puts ""
  end

  def busted?
    total > 21
  end

  def >(other_player)
    total > other_player.total
  end

  def total
    aces, nums = card_values.partition { |value| value == 'ace' }
    num_aces = aces.size
    current_total = nums.sum
    num_aces == 0 ? (return current_total) : (current_total += (num_aces - 1))
    last_ace_is_eleven = current_total + 11
    last_ace_is_one = current_total + 1
    last_ace_is_eleven > 21 ? last_ace_is_one : last_ace_is_eleven
  end

  def display_total
    puts "Current total is: #{total}."
  end

  def reset
    @cards_in_hand = []
  end

  private

  def card_values
    cards_in_hand.map do |card|
      %w(jack queen king).include?(card.value) ? 10 : card.value
    end
  end
end

class Player
  include Hand

  def initialize
    super
    @name = "You"
  end

  def to_s
    "You have: #{cards_in_hand.join(' | ')}."
  end
end

class Dealer
  include Hand

  def initialize
    super
    @name = "The dealer"
  end

  def to_s
    "The dealer has #{cards_in_hand[0]} and an unknown card."
  end

  def show_cards
    puts "The dealer has: #{cards_in_hand.join(' | ')}"
  end
end

class Deck
  attr_reader :deck

  SUITS = ['clubs', 'hearts', 'spades', 'diamonds']
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']

  def initialize
    @deck = reset
  end

  def deal(participant)
    participant.cards_in_hand.concat(deck.shuffle!.pop(2))
  end
  
  def reset
    SUITS.product(VALUES).map { |card_arr| Card.new(card_arr[0], card_arr[1]) }
  end
end

class Card
  attr_reader :value, :suit

  def initialize(suit, value)
    @suit = suit
    @value = value
    @dealt = false
  end

  def to_s
    "#{value} of #{suit}"
  end
end

class TwentyOneGame
  attr_reader :current_deck, :player, :dealer

  def initialize
    @current_deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def start
    clear
    welcome_message
    main_game
    goodbye_message
  end

  private

  def main_game
    loop do
      deal_cards
      show_initial_cards
      player_turn
      dealer_turn unless player.busted?
      show_result
      break unless play_again?
      reset
    end
  end

  def clear
    system 'clear'
  end

  def reset
    clear
    current_deck.reset
    player.reset
    dealer.reset
  end

  def play_again?
    answer = nil
    loop do
      puts PROMPTS["play_again?"]
      answer = gets.chomp.downcase
      break if %w(y n).include?(answer)
    end
    answer == 'y'
  end

  def display_totals
    puts "The dealer has #{dealer.total}."
    puts "You have #{player.total}"
    puts ""
  end

  def compare_totals
    if player > dealer
      puts PROMPTS["player_won"]
    elsif dealer > player
      puts PROMPTS["dealer_won"]
    else
      puts PROMPTS["tie_game"]
    end
  end

  def show_result
    if player.busted?
      puts PROMPTS["player_busted"]
      puts ""
    elsif dealer.busted?
      puts PROMPTS["dealer_busted"]
    else
      display_totals
      compare_totals
    end
  end

  def dealer_hits
    dealer.hit(current_deck)
    dealer.show_cards
  end

  def dealer_turn
    dealer.show_cards
    dealer_hits until dealer.total >= 17
    dealer_hits until dealer.total >= player.total || dealer.busted?
    dealer.stay unless dealer.busted?
  end

  def player_make_choice(choice)
    if choice == 's'
      player.stay
    elsif choice == 'h'
      player.hit(current_deck)
    else
      puts PROMPTS["invalid_answer"]
    end
  end
  
  def player_turn
    loop do
      puts PROMPTS["stay_or_hit"]
      answer = gets.chomp.downcase
      player_make_choice(answer)
      break if answer == 's'
      puts player
      player.display_total
      break if player.busted?
    end
  end

  def welcome_message
    puts PROMPTS["welcome_message"]
  end

  def goodbye_message
    puts PROMPTS["goodbye_message"]
  end

  def show_initial_cards
    puts dealer
    puts player
    puts "Your total is #{player.total}"
  end

  def deal_cards
    current_deck.deal(player)
    current_deck.deal(dealer)
  end
end

game = TwentyOneGame.new
game.start
