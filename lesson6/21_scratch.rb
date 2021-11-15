#problem
# =>  summing a hand with aces properly
#input: array with the hand , a mix of integers and letters A, JKQ
#output: sum in integer form
#rules
# =>  explicit  - ace can be 1 or 11
# =>              if you use the 11 value, and the hand is not over the 21 thresh, use 11 valu
# =>              if you go over 21 thresh with 11 val, use the 1 val
# =>              if you have two aces , they can be worth different values
#data structure
# =>  array, 
#algorithm
# =>  get an array without the aces
# =>      select all integers, sum them
# =>  get a count of aces
# =>  get a list of all the possible combinations of aces,
# =>      MAKE TEHSE ALL ARRAYS
# =>    if count == 1, possibilities are 1 or 11
# =>    if count == 2, poss 2, 12
# =>    if count == 3, poss 3, 13, 
# =>    if count == 4, poss 4, 14
# =>  get a list of the sums of those possibilities
# =>    initialize empty array named total_sum_poss
# =>    iterate through poss arrays from the if statement, adding sum to them then add
# =>        the total sums to total_sum_poss
# =>  choose the number closest to 21 without going over






# def sum_hand_w_aces(hand)
#   sum_w_o_aces = hand.select{|card| card.is_a? Integer}.sum
#   how_many_aces = hand.count("A")
#   possible_ace_vals = case how_many_aces
#                   when 1 then [1, 11]
#                   when 2 then [2, 12]
#                   when 3 then [3, 13]
#                   when 4 then [4, 14]
#                   end
#   possible_total_sum_vals = possible_ace_vals.map{|val| val + sum_w_o_aces}
#   max_21_and_under = possible_total_sum_vals.select{|val| val <= 21}.max
# end




# #test cases
# p sum_hand_w_aces(["A", 2])     == 13
# p sum_hand_w_aces(["A", 2, 5])  == 18
# p sum_hand_w_aces(["A", 10])    == 21
# p sum_hand_w_aces(["A", 10, 8]) == 19
# p sum_hand_w_aces(["A", "A" ,2])     == 14
# p sum_hand_w_aces(["A", "A", "A", 2])     == 15
# p sum_hand_w_aces(["A", "A", "A", "A", 2])     == 16





#testing hand in nums 


# def sum_of_hand(hand)
#   hand_in_nums = hand.map do |card| 
#     if card == 'J' || card == 'Q' || card == 'K'
#       10
#     else
#       card
#     end
#   end
  
#   # unless hand.include?("A")
#   #   sum = hand_in_nums.sum
#   # else
#   #   sum = sum_hand_w_aces(hand_in_nums)
#   # end
#   p hand_in_nums
#   #sum
# end


# p sum_of_hand(["Q", "J"])
# p sum_of_hand(["Q", "J", "K"])
# p sum_of_hand(["Q", "J", "J"])
# p sum_of_hand(["Q", "J", 4])
# p sum_of_hand(["Q", "J", 4, "A"])








#working out sum of hand bugs
#looks like it is happening when there is an ace involved and it is over 21

# require "pry"

# def sum_hand_w_aces(hand)
#   sum_w_o_aces = hand.select{|card| card.is_a? Integer}.sum
#   how_many_aces = hand.count("A")
#   possible_ace_vals = case how_many_aces
#                       when 1 then [1, 11]
#                       when 2 then [2, 12]
#                       when 3 then [3, 13]
#                       when 4 then [4, 14]
#                       end
#   possible_total_sum_vals = possible_ace_vals.map{|val| val + sum_w_o_aces}
#   sum = possible_total_sum_vals.select{|val| val <= 21}.max
#   sum = 22 if sum.nil? #if with the aces, the sum is > 21, return 22
#   sum
# end

# def sum_of_hand(hand)
#   hand_in_nums = hand.map do |card| 
#     if card == 'J' || card == 'Q' || card == 'K'
#       10
#     else
#       card
#     end
#   end
  
#   unless hand.include?("A")
#     sum = hand_in_nums.sum
#   else
#     sum = sum_hand_w_aces(hand_in_nums)
#   end
#   sum
# end


# #test 

# p sum_of_hand(["A", 3, 10, 10])







#calculating winner methods
#problem 
# =>  given a hash with dealer sums and player sums, return the name of who had the highest
# =>    hand without going over 21
#input: hash
#output: string with name
#rules
# =>  explicit  - return name of person with highest score 21 and under
#data strucutre
# =>  given a hash, we can jus tcompare the values
#algorithm
# =>  


def who_won(hsh_of_hands)
  if hsh_of_hands["player"] > 21
    "dealer"
  elsif hsh_of_hands["dealer"] > 21
    "player"
  elsif hsh_of_hands["dealer"] == hsh_of_hands["player"]
    "tie"
  else
    #return the key with the higher value
    hsh_of_hands.keys.max_by{|key| hsh_of_hands[key]}
  end
end


p who_won({"player" => 17, "dealer" => 21}) == "dealer"
p who_won({"player" => 17, "dealer" => 25}) == "player"
p who_won({"player" => 17, "dealer" => 16}) == "player"
p who_won({"player" => 18, "dealer" => 21}) == "dealer"
p who_won({"player" => 21, "dealer" => 21}) == "tie"
p who_won({"player" => 22, "dealer" => 21}) == "dealer"
p who_won({"player" => 15, "dealer" => 15}) == "tie"