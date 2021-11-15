require "pry"

#1 Improved Join
#problem
# =>  current game => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, 9
# =>    it's not so clean so let's separate the last item like
# =>  => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9
#input: array and optional symbol and word for connecting (or / and)
#output: string with first few elements separated by comma or optional symbol, 
# =>      last two separated by 'or' the optional word
#rules:
# =>  explicit  - separate the last item with a "or " 
# =>  implicit  - second param can be a different symbol than ,
# =>              third param can be a different word than or
#data structure
# =>  array, then to string
#Algorithm
# =>  join all elements in the array with the specificed delimeter up to the second to last el
# =>  concat the specified symbol
# =>  concat the specified word
# =>  concat the last element of the arry
# =>  return the whole string

# def joinor(arr, sym=', ', word='or')
#   if arr.size > 2
#     "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
#   else
#     "#{arr[0]} #{word} #{arr[1]}"
#   end
# end

# #test cases
# p joinor([1, 2])                   == "1 or 2"
# p joinor([1, 2, 3])                == "1, 2, or 3"
# p joinor([1, 2, 3], '; ')          == "1; 2; or 3"
# p joinor([1, 2, 3], ', ', 'and')   == "1, 2, and 3"







#2 Keep Score
#problem
# =>  keep score of how many times the player and computer each win
#input: name of winner
#output: message with the scores
#rules
# =>  explicit  - don't use global or instance variables
# =>              make it so the first player to 5 wins the game
#data structure
# =>  method with integers keeping score
#Algorithm


#COME BACK TO THIS ONE



#test cases




#3 Computer AI-Defense
#problem
# =>  make the computer defensive minded, so if there is an immediate threat, it will defend
# =>    the third square
#input: the board, some way to detect if there are two squares in a row, which is a hash
#output: behavior of the computer to select the third square to block or random
#rules
# =>  explicit  - immediate threat is 2 squares out of three
# =>              if no threat, choose random square
#data structure
# =>  
#algo
# =>  if the board passed in has two Xs in any row, we want to change the board so it puts
# =>    an O to block the three in a row
# =>  elsif there are no rows with two Xs, we choose a random square

#what it looks like now
# COMPUTER_MARKER = 'O'
# PLAYER_MARKER = 'X'
# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]]              # diagonals
# INITIAL_MARKER = " "

# # def computer_places_piece!(brd)
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end


# #new one

# def empty_squares(brd)
#   brd.keys.select { |num| brd[num] == INITIAL_MARKER }
# end

# def computer_places_piece!(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 2
#       square = brd.values_at(*line).find_index(" ") 
#       brd[line[square]] = COMPUTER_MARKER
#       return
#     end 
#   end
#   square = empty_squares(brd).sample
#   brd[square] = COMPUTER_MARKER
# end


# #test cases
# board = {1=>"X", 2=>" ", 3=>" ", 4=>"O", 5=>" ", 6=>"X", 7=>" ", 8=>" ", 9=>" "}
# p board 
# p computer_places_piece!(board)
# p board
# p board == {1=>"X", 2=>" ", 3=>" ", 4=>"O", 5=>"X", 6=>" ", 7=>" ", 8=>" ", 9=>"O"}








#4 computer AI offense 

