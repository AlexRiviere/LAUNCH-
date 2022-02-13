#given an array of a mix of integers and face card values, return the highest number below 21 if you can make it, or just the lowest combo
=begin

# **Problem**

# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	given an array of card values and aces
              - return an integer representing the value of the hand

# =>implicit/edge cases - no aces
                        - 1 ace
                        - more than 1 ace


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
- get current total of just nums
- take total num of aces minus 1, add this to total
- try to add 11, if it is over 21, just add 1


=end

def total(card_values)
  aces, nums = card_values.partition{ |value| value == 'ace' }
  num_of_aces = aces.size
  current_total = nums.sum
  num_of_aces == 0 ? (return current_total) : (current_total += (num_of_aces - 1))
  last_ace_is_11 = current_total + 11
  last_ace_is_1 = current_total + 1
  last_ace_is_11 > 21 ? last_ace_is_1 : last_ace_is_11
end

p total(['ace', 'ace', 'ace', 'ace', 10, 10, 10]) == 34 
p total(['ace', 'ace', 'ace', 5]) == 18
p total(['ace', 'ace', 6, 5]) == 13
p total(['ace', 10, 10]) == 21
p total(['ace', 1, 1]) == 13
p total(['ace', 6, 8]) == 15
p total(['ace', 2, 3]) == 16
p total(['ace']) == 11
p total([10, 5, 2]) == 17
p total([10, 10]) == 20
