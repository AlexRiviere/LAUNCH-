require "pry"

def initialize_deck
  numbers_and_faces = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'A', 'J', 'Q', 'K']
  (numbers_and_faces * 4).shuffle
end

def initialize_deal(deck)
  hand = []
  hand << deck.delete_at(1)
  hand << deck.delete_at(1)
  hand
end

def sum_hand_w_aces(hand)
  sum_w_o_aces = hand.select { |card| card.is_a? Integer }.sum
  how_many_aces = hand.count("A")
  possible_ace_vals = case how_many_aces
                      when 1 then [1, 11]
                      when 2 then [2, 12]
                      when 3 then [3, 13]
                      when 4 then [4, 14]
                      end
  possible_total_sum_vals = possible_ace_vals.map { |val| val + sum_w_o_aces }
  sum = possible_total_sum_vals.select { |val| val <= 21 }.max
  sum = 22 if sum.nil? # if with the aces, the sum is > 21, return 22
  sum
end

def sum_of_hand(hand)
  hand_in_nums = hand.map do |card|
    if card == 'J' || card == 'Q' || card == 'K'
      10
    else
      card
    end
  end

  sum = if !hand.include?("A")
          hand_in_nums.sum
        else
          sum_hand_w_aces(hand_in_nums)
        end
  sum
end

def busted?(hand)
  sum = sum_of_hand(hand)
  sum > 21
end

def hit(hand, deck)
  hand << deck.delete_at(1)
end

def who_won(player_hand, dealer_hand)
  hsh_of_hands = {  "player" => sum_of_hand(player_hand),
                    "dealer" => sum_of_hand(dealer_hand) }

  if hsh_of_hands["player"] > 21
    "dealer"
  elsif hsh_of_hands["dealer"] > 21
    "player"
  elsif hsh_of_hands["dealer"] == hsh_of_hands["player"]
    "tie"
  else
    # return the key with the higher value
    hsh_of_hands.keys.max_by { |key| hsh_of_hands[key] }
  end
end

def print_result(name)
  case name
  when 'player' then puts "YOU WON!!!!!"
  when 'dealer' then puts "The dealer won :("
  when 'tie'    then puts "It's a tie"
  end
end

loop do
  deck = initialize_deck

  player_hand = initialize_deal(deck)
  dealer_hand = initialize_deal(deck)

  answer = nil
  loop do
    puts ""
    puts "Dealer has: #{dealer_hand[0]} and unknown card"
    puts "You have: #{player_hand.join(' | ')}"
    puts "hit or stay?"
    answer = gets.chomp
    break if answer == 'stay'
    hit(player_hand, deck)
    break if busted?(player_hand)
  end

  if busted?(player_hand)
    puts "You busted with: #{player_hand.join(' | ')}"
  else
    puts "You chose to stay!"
  end

  unless busted?(player_hand) # only run if the player DID NOT bust
    loop do
      puts ""
      puts "Dealer has: #{dealer_hand.join(' | ')}"
      puts "You have: #{player_hand.join(' | ')}"
      if sum_of_hand(dealer_hand) < 17
        hit(dealer_hand, deck)
      elsif busted?(dealer_hand)
        puts "The dealer busted!"
        break
      else
        puts "The dealer stays."
        break
      end
    end
  end

  puts ""
  print_result(who_won(player_hand, dealer_hand))

  puts "Play again? (y or n)"
  resp = gets.chomp
  break unless resp.downcase.start_with?('y')
end
