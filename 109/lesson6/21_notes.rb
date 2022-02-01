#rules

#You start with a normal 52-card deck consisting of the 4 suits (hearts, diamonds, clubs, 
#and spades), and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).

# =>  initialize deck method

#The goal of Twenty-One is to try to get as close to 21 as possible, without going over. 
#If you go over 21, it's a "bust" and you lose.

# =>  bust? method

#Setup: the game consists of a "dealer" and a "player". Both participants are initially 
#dealt 2 cards. The player can see their 2 cards, but can only see one of the dealer's cards.

# =>  deal method

# =>  find a way to display your cards and one of the dealers

#card vals: 2-10 are worth the value, JQK each worth 10, ace is 11 or 1
#if the hand is not over 21 yet, ace is 11, if it is ace is 1, sometimes if you have two 
#aces , one is 1 and 1 is 11

# =>  method to determine how much an ace is worth

#player goes first, gets two cards, can hit or stay
#if the total > 21, the player busts, and loses
#the player hits until he or she busts or stays
#then it is the dealers turn
#the dealer hits until the total is at least 21, if the dealer busts, the player wins

# =>  player turn method
# =>  dealer turn method

#comparing cards-- when both dealer and player stay, time to compare the total val and see 
#who has the highest

# =>  who_won method?





#high level psuedocode

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.



#data structure for the deck
#take a sample and delete it from teh deck
#array = %w[A B C]
#item_deleted = array.delete_at(1)

#nested array