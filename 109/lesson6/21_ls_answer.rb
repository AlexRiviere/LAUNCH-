# using launch school answer to do the bonus features
#1 is done, i put in those calls first to initiate, then to update
#2 I'm not sure why they are different, i tried to make the last call similar to the 
# =>  other calls and I don't see any difference. maybe because it is the last one
# =>  you should present it in a difference way?
#3 i dont know what the question is asking, coming back to this one
#4 is done, not pretty, i had to put the score and the test in three different places 
# =>  which makes it hard to update. i want to consolidate but how can i update a global
# =>  variable with a method?
#5 is done, this was easy, make two global variables and replace all instances of 17 or 21
# =>  with the constant variables

WINNING_NUM = 31
DEALER_STAND_AT = 27

require "pry"

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WINNING_NUM
  end

  sum
end

def busted?(cards)
  total(cards) > WINNING_NUM
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > WINNING_NUM
    :player_busted
  elsif dealer_total > WINNING_NUM
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

dealer_score = 0
player_score = 0

def print_score(dealer_score, player_score)
  puts ""
  puts "The dealer has #{dealer_score} wins and the player has #{player_score} wins"
end

loop do
  prompt "Welcome to Twenty-One!"

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []
  

  
  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      player_total = total(player_cards)
      dealer_total = total(dealer_cards)
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    dealer_score += 1
    print_score(dealer_score, player_score)
    break if player_score >= 2 || dealer_score >= 2
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if total(dealer_cards) >= DEALER_STAND_AT

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if busted?(dealer_cards)
    prompt "Dealer total is now: #{dealer_total}"
    display_result(dealer_cards, player_cards)
    player_score += 1
    print_score(dealer_score, player_score)
    break if player_score >= 2 || dealer_score >= 2
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end
  


  # both player and dealer stays - compare cards!
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="

  display_result(dealer_cards, player_cards)
  
  case detect_result(dealer_cards, player_cards)
    when :player_busted || :dealer 
      dealer_score += 1
    when :player || :dealer_busted
      player_score += 1
    when :tie
      player_score += 1
      dealer_score += 1
  end
  
  print_score(dealer_score, player_score)
  
  break if player_score >= 2 || dealer_score >= 2
  
  #break unless play_again?
  play_again? ? next : break
end

prompt "Thank you for playing Twenty-One! Good bye!"
