# require "pry"

# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]]              # diagonals
# INITIAL_MARKER = ' '
# PLAYER_MARKER = 'X'
# COMPUTER_MARKER = 'O'

# def prompt(msg)
#   puts "=> #{msg}"
# end

# def joinor(arr, sym=', ', word='or')
#   if arr.size > 2
#     "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
#   elsif arr.size == 2
#     "#{arr[0]} #{word} #{arr[1]}"
#   else
#     "#{arr[0]}"
#   end
# end

# def display_board(brd)
#   system 'clear'
#   puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
#   puts ""
#   puts "     |     |"
#   puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
#   puts "     |     |"
#   puts ""
# end

# def initialize_board
#   new_board = {}
#   (1..9).each { |num| new_board[num] = INITIAL_MARKER }
#   new_board
# end

# def empty_squares(brd)
#   brd.keys.select { |num| brd[num] == INITIAL_MARKER }
# end

# def player_places_piece!(brd)
#   square = ""
#   loop do
#     prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)
#     prompt("Sorry that's not a valid choice.")
#   end
#   brd[square] = PLAYER_MARKER
# end

# # def computer_places_piece!(brd)
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# # TTT bonus, #3 computer ai defense

# # def computer_places_piece!(brd)
# #   WINNING_LINES.each do |line|
# #     if (brd.values_at(*line).count(PLAYER_MARKER) == 2) && (brd.values_at(*line).count(INITIAL_MARKER) == 1)
# #       square = brd.values_at(*line).find_index(" ") 
# #       brd[line[square]] = COMPUTER_MARKER
# #       return
# #     end 
# #   end
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# #their solution for TTT bonus #3

# def find_at_risk_square(line, board)
#   if board.values_at(*line).count(PLAYER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd)
#     break if square
#   end

#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end



# def board_full?(brd)
#   empty_squares(brd).empty?
# end

# def someone_won?(brd)
#   !!detect_winner(brd)
# end

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 3
#       return "Player"
#     elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
#       return "Computer"
#     end
#   end
#   nil
# end

# loop do
#   board = initialize_board

#   loop do
#     display_board(board)

#     player_places_piece!(board)
#     break if someone_won?(board) || board_full?(board)

#     computer_places_piece!(board)
#     break if someone_won?(board) || board_full?(board)
#   end

#   display_board(board)

#   if someone_won?(board)
#     prompt("#{detect_winner(board)} won!")
#   else
#     prompt("It's a tie!")
#   end

#   prompt("Play again? (y or n)")
#   answer = gets.chomp
#   break unless answer.downcase.start_with?('y')
# end

# prompt("Thanks for playing. Goodbye.")








#with #4 from TTT bonus

# require "pry"

# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]]              # diagonals
# INITIAL_MARKER = ' '
# PLAYER_MARKER = 'X'
# COMPUTER_MARKER = 'O'

# def prompt(msg)
#   puts "=> #{msg}"
# end

# def joinor(arr, sym=', ', word='or')
#   if arr.size > 2
#     "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
#   elsif arr.size == 2
#     "#{arr[0]} #{word} #{arr[1]}"
#   else
#     "#{arr[0]}"
#   end
# end

# def display_board(brd)
#   system 'clear'
#   puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
#   puts ""
#   puts "     |     |"
#   puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
#   puts "     |     |"
#   puts ""
# end

# def initialize_board
#   new_board = {}
#   (1..9).each { |num| new_board[num] = INITIAL_MARKER }
#   new_board
# end

# def empty_squares(brd)
#   brd.keys.select { |num| brd[num] == INITIAL_MARKER }
# end

# def player_places_piece!(brd)
#   square = ""
#   loop do
#     prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)
#     prompt("Sorry that's not a valid choice.")
#   end
#   brd[square] = PLAYER_MARKER
# end

# # def computer_places_piece!(brd)
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# # TTT bonus, #3 computer ai defense

# # def computer_places_piece!(brd)
# #   WINNING_LINES.each do |line|
# #     if (brd.values_at(*line).count(PLAYER_MARKER) == 2) && (brd.values_at(*line).count(INITIAL_MARKER) == 1)
# #       square = brd.values_at(*line).find_index(" ") 
# #       brd[line[square]] = COMPUTER_MARKER
# #       return
# #     end 
# #   end
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# #their solution for TTT bonus #3

# def find_at_risk_square(line, board)
#   if board.values_at(*line).count(PLAYER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   elsif board.values_at(*line).count(COMPUTER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd)
#     break if square
#   end

#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end



# def board_full?(brd)
#   empty_squares(brd).empty?
# end

# def someone_won?(brd)
#   !!detect_winner(brd)
# end

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 3
#       return "Player"
#     elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
#       return "Computer"
#     end
#   end
#   nil
# end

# loop do
#   board = initialize_board

#   loop do
#     display_board(board)

#     player_places_piece!(board)
#     break if someone_won?(board) || board_full?(board)

#     computer_places_piece!(board)
#     break if someone_won?(board) || board_full?(board)
#   end

#   display_board(board)

#   if someone_won?(board)
#     prompt("#{detect_winner(board)} won!")
#   else
#     prompt("It's a tie!")
#   end

#   prompt("Play again? (y or n)")
#   answer = gets.chomp
#   break unless answer.downcase.start_with?('y')
# end

# prompt("Thanks for playing. Goodbye.")





#with #5 from bonus


# require "pry"

# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]]              # diagonals
# INITIAL_MARKER = ' '
# PLAYER_MARKER = 'X'
# COMPUTER_MARKER = 'O'

# def prompt(msg)
#   puts "=> #{msg}"
# end

# def joinor(arr, sym=', ', word='or')
#   if arr.size > 2
#     "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
#   elsif arr.size == 2
#     "#{arr[0]} #{word} #{arr[1]}"
#   else
#     "#{arr[0]}"
#   end
# end

# def display_board(brd)
#   system 'clear'
#   puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
#   puts ""
#   puts "     |     |"
#   puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
#   puts "     |     |"
#   puts ""
# end

# def initialize_board
#   new_board = {}
#   (1..9).each { |num| new_board[num] = INITIAL_MARKER }
#   new_board
# end

# def empty_squares(brd)
#   brd.keys.select { |num| brd[num] == INITIAL_MARKER }
# end

# def player_places_piece!(brd)
#   square = ""
#   loop do
#     prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)
#     prompt("Sorry that's not a valid choice.")
#   end
#   brd[square] = PLAYER_MARKER
# end

# # def computer_places_piece!(brd)
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# # TTT bonus, #3 computer ai defense

# # def computer_places_piece!(brd)
# #   WINNING_LINES.each do |line|
# #     if (brd.values_at(*line).count(PLAYER_MARKER) == 2) && (brd.values_at(*line).count(INITIAL_MARKER) == 1)
# #       square = brd.values_at(*line).find_index(" ") 
# #       brd[line[square]] = COMPUTER_MARKER
# #       return
# #     end 
# #   end
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# #their solution for TTT bonus #3
# #actually this was wrong, because it is iterating through the line looking for def/off/5
# # =>  instead of iterating through all for offense then all for defenese

# def find_at_risk_square(line, board)
#   binding.pry
#   if board.values_at(*line).count(COMPUTER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   elsif board.values_at(*line).count(PLAYER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   elsif board[5] == " "
#     5
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil
  
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd)
#     break if square
#   end

#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end



# def board_full?(brd)
#   empty_squares(brd).empty?
# end

# def someone_won?(brd)
#   !!detect_winner(brd)
# end

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 3
#       return "Player"
#     elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
#       return "Computer"
#     end
#   end
#   nil
# end

# loop do
#   board = initialize_board

#   loop do
#     display_board(board)

#     player_places_piece!(board)
#     break if someone_won?(board) || board_full?(board)

#     computer_places_piece!(board)
#     break if someone_won?(board) || board_full?(board)
#   end

#   display_board(board)

#   if someone_won?(board)
#     prompt("#{detect_winner(board)} won!")
#   else
#     prompt("It's a tie!")
#   end

#   prompt("Play again? (y or n)")
#   answer = gets.chomp
#   break unless answer.downcase.start_with?('y')
# end

# prompt("Thanks for playing. Goodbye.")




#with LS solution for #4



# require "pry"

# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]]              # diagonals
# INITIAL_MARKER = ' '
# PLAYER_MARKER = 'X'
# COMPUTER_MARKER = 'O'

# def prompt(msg)
#   puts "=> #{msg}"
# end

# def joinor(arr, sym=', ', word='or')
#   if arr.size > 2
#     "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
#   elsif arr.size == 2
#     "#{arr[0]} #{word} #{arr[1]}"
#   else
#     "#{arr[0]}"
#   end
# end

# def display_board(brd)
#   system 'clear'
#   puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
#   puts ""
#   puts "     |     |"
#   puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
#   puts "     |     |"
#   puts ""
# end

# def initialize_board
#   new_board = {}
#   (1..9).each { |num| new_board[num] = INITIAL_MARKER }
#   new_board
# end

# def empty_squares(brd)
#   brd.keys.select { |num| brd[num] == INITIAL_MARKER }
# end

# def player_places_piece!(brd)
#   square = ""
#   loop do
#     prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)
#     prompt("Sorry that's not a valid choice.")
#   end
#   brd[square] = PLAYER_MARKER
# end

# # def computer_places_piece!(brd)
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# # TTT bonus, #3 computer ai defense

# # def computer_places_piece!(brd)
# #   WINNING_LINES.each do |line|
# #     if (brd.values_at(*line).count(PLAYER_MARKER) == 2) && (brd.values_at(*line).count(INITIAL_MARKER) == 1)
# #       square = brd.values_at(*line).find_index(" ") 
# #       brd[line[square]] = COMPUTER_MARKER
# #       return
# #     end 
# #   end
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# #their solution for TTT bonus #4, my additions for #5a, b and c but c was not clean,
# # =>  trying c again below

# def find_at_risk_square(line, board, marker)
#   if board.values_at(*line).count(marker) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil

#   # offense first
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd, COMPUTER_MARKER)
#     break if square
#   end

#   # defense
#   if !square
#     WINNING_LINES.each do |line|
#       square = find_at_risk_square(line, brd, PLAYER_MARKER)
#       break if square
#     end
#   end
  
#   if brd[5] == ' '
#     square = 5
#   end

#   # just pick a square
#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end



# def board_full?(brd)
#   empty_squares(brd).empty?
# end

# def someone_won?(brd)
#   !!detect_winner(brd)
# end

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 3
#       return "Player"
#     elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
#       return "Computer"
#     end
#   end
#   nil
# end

# loop do
#   board = initialize_board
  
#   puts "Who goes first? Computer or User?"
#   who_first = gets.chomp
#   if who_first.downcase.start_with?('u')
#     loop do
#       display_board(board)
  
#       player_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
  
#       computer_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
#     end
  
#     display_board(board)
  
#     if someone_won?(board)
#       prompt("#{detect_winner(board)} won!")
#     else
#       prompt("It's a tie!")
#     end
  
#     prompt("Play again? (y or n)")
#     answer = gets.chomp
#     break unless answer.downcase.start_with?('y')
#   else
    
#     loop do
#       #display_board(board)
  
#       computer_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
      
#       display_board(board)
      
#       player_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
      
     
#     end
  
#     display_board(board)
  
#     if someone_won?(board)
#       prompt("#{detect_winner(board)} won!")
#     else
#       prompt("It's a tie!")
#     end
  
#     prompt("Play again? (y or n)")
#     answer = gets.chomp
#     break unless answer.downcase.start_with?('y')
#   end  
  
  
# end

# prompt("Thanks for playing. Goodbye.")

















# #new solution for 5c, last one was so ugly






# require "pry"

# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]]              # diagonals
# INITIAL_MARKER = ' '
# PLAYER_MARKER = 'X'
# COMPUTER_MARKER = 'O'

# def prompt(msg)
#   puts "=> #{msg}"
# end

# def joinor(arr, sym=', ', word='or')
#   if arr.size > 2
#     "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
#   elsif arr.size == 2
#     "#{arr[0]} #{word} #{arr[1]}"
#   else
#     "#{arr[0]}"
#   end
# end

# def display_board(brd)
#   system 'clear'
#   puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
#   puts ""
#   puts "     |     |"
#   puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
#   puts "     |     |"
#   puts ""
# end

# def initialize_board
#   new_board = {}
#   (1..9).each { |num| new_board[num] = INITIAL_MARKER }
#   new_board
# end

# def empty_squares(brd)
#   brd.keys.select { |num| brd[num] == INITIAL_MARKER }
# end

# def player_places_piece!(brd)
#   square = ""
#   loop do
#     prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)
#     prompt("Sorry that's not a valid choice.")
#   end
#   brd[square] = PLAYER_MARKER
# end

# # def computer_places_piece!(brd)
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# # TTT bonus, #3 computer ai defense

# # def computer_places_piece!(brd)
# #   WINNING_LINES.each do |line|
# #     if (brd.values_at(*line).count(PLAYER_MARKER) == 2) && (brd.values_at(*line).count(INITIAL_MARKER) == 1)
# #       square = brd.values_at(*line).find_index(" ") 
# #       brd[line[square]] = COMPUTER_MARKER
# #       return
# #     end 
# #   end
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# #their solution for TTT bonus #4, my additions for #5a, b and c 

# def find_at_risk_square(line, board, marker)
#   if board.values_at(*line).count(marker) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil

#   # offense first
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd, COMPUTER_MARKER)
#     break if square
#   end

#   # defense
#   if !square
#     WINNING_LINES.each do |line|
#       square = find_at_risk_square(line, brd, PLAYER_MARKER)
#       break if square
#     end
#   end
  
#   if brd[5] == ' '
#     square = 5
#   end

#   # just pick a square
#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end



# def board_full?(brd)
#   empty_squares(brd).empty?
# end

# def someone_won?(brd)
#   !!detect_winner(brd)
# end

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 3
#       return "Player"
#     elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
#       return "Computer"
#     end
#   end
#   nil
# end




# loop do
#   board = initialize_board
#   puts "Who goes first? Computer or User?"
#   who_first = gets.chomp
  
#   loop do
#     if who_first.downcase.start_with?('u')
#       display_board(board)
  
#       player_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
  
#       computer_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
#     else
#       computer_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
      
#       display_board(board)
  
#       player_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
#     end
#   end

#   display_board(board)

#   if someone_won?(board)
#     prompt("#{detect_winner(board)} won!")
#   else
#     prompt("It's a tie!")
#   end

#   prompt("Play again? (y or n)")
#   answer = gets.chomp
#   break unless answer.downcase.start_with?('y')
# end

# prompt("Thanks for playing. Goodbye.")








#new solution for 5d, let the computer choose who goes first






# require "pry"

# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]]              # diagonals
# INITIAL_MARKER = ' '
# PLAYER_MARKER = 'X'
# COMPUTER_MARKER = 'O'

# def prompt(msg)
#   puts "=> #{msg}"
# end

# def joinor(arr, sym=', ', word='or')
#   if arr.size > 2
#     "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
#   elsif arr.size == 2
#     "#{arr[0]} #{word} #{arr[1]}"
#   else
#     "#{arr[0]}"
#   end
# end

# def display_board(brd)
#   system 'clear'
#   puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
#   puts ""
#   puts "     |     |"
#   puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
#   puts "     |     |"
#   puts "-----+-----+-----"
#   puts "     |     |"
#   puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
#   puts "     |     |"
#   puts ""
# end

# def initialize_board
#   new_board = {}
#   (1..9).each { |num| new_board[num] = INITIAL_MARKER }
#   new_board
# end

# def empty_squares(brd)
#   brd.keys.select { |num| brd[num] == INITIAL_MARKER }
# end

# def player_places_piece!(brd)
#   square = ""
#   loop do
#     prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)
#     prompt("Sorry that's not a valid choice.")
#   end
#   brd[square] = PLAYER_MARKER
# end

# # def computer_places_piece!(brd)
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# # TTT bonus, #3 computer ai defense

# # def computer_places_piece!(brd)
# #   WINNING_LINES.each do |line|
# #     if (brd.values_at(*line).count(PLAYER_MARKER) == 2) && (brd.values_at(*line).count(INITIAL_MARKER) == 1)
# #       square = brd.values_at(*line).find_index(" ") 
# #       brd[line[square]] = COMPUTER_MARKER
# #       return
# #     end 
# #   end
# #   square = empty_squares(brd).sample
# #   brd[square] = COMPUTER_MARKER
# # end

# #their solution for TTT bonus #4, my additions for #5a, b and c 

# def find_at_risk_square(line, board, marker)
#   if board.values_at(*line).count(marker) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil

#   # offense first
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd, COMPUTER_MARKER)
#     break if square
#   end

#   # defense
#   if !square
#     WINNING_LINES.each do |line|
#       square = find_at_risk_square(line, brd, PLAYER_MARKER)
#       break if square
#     end
#   end
  
#   if brd[5] == ' '
#     square = 5
#   end

#   # just pick a square
#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end



# def board_full?(brd)
#   empty_squares(brd).empty?
# end

# def someone_won?(brd)
#   !!detect_winner(brd)
# end

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 3
#       return "Player"
#     elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
#       return "Computer"
#     end
#   end
#   nil
# end




# loop do
#   board = initialize_board
#   puts "Who goes first? Computer, User or random choice?"
#   who_first = gets.chomp
#   if who_first.downcase.start_with?("r")
#     who_first = ['c', 'u'].sample
#   end
  
#   loop do
#     if who_first.downcase.start_with?('u')
#       display_board(board)
  
#       player_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
  
#       computer_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
#     else
#       computer_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
      
#       display_board(board)
  
#       player_places_piece!(board)
#       break if someone_won?(board) || board_full?(board)
#     end
#   end

#   display_board(board)

#   if someone_won?(board)
#     prompt("#{detect_winner(board)} won!")
#   else
#     prompt("It's a tie!")
#   end

#   prompt("Play again? (y or n)")
#   answer = gets.chomp
#   break unless answer.downcase.start_with?('y')
# end

# prompt("Thanks for playing. Goodbye.")






#6





require "pry"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, sym=', ', word='or')
  if arr.size > 2
    "#{arr[0..-2].join(sym)}#{sym}#{word} #{arr[-1]}"
  elsif arr.size == 2
     "#{arr[0]} #{word} #{arr[1]}"
  else
    "#{arr[0]}"
  end
end

def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece!(brd, current_player)
  current_player == "player" ? player_places_piece!(brd) : computer_places_piece!(brd)
end 

def alternate_player(current_player)
  current_player == "player" ? "computer" : "player"
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry that's not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

# def computer_places_piece!(brd)
#   square = empty_squares(brd).sample
#   brd[square] = COMPUTER_MARKER
# end

# TTT bonus, #3 computer ai defense

# def computer_places_piece!(brd)
#   WINNING_LINES.each do |line|
#     if (brd.values_at(*line).count(PLAYER_MARKER) == 2) && (brd.values_at(*line).count(INITIAL_MARKER) == 1)
#       square = brd.values_at(*line).find_index(" ") 
#       brd[line[square]] = COMPUTER_MARKER
#       return
#     end 
#   end
#   square = empty_squares(brd).sample
#   brd[square] = COMPUTER_MARKER
# end

#their solution for TTT bonus #4, my additions for #5a, b and c 

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  
  if brd[5] == ' '
    square = 5
  end

  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end



def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end




loop do
  board = initialize_board
  puts "Who goes first? Computer, User or random choice?"
  who_first = gets.chomp
  if who_first.downcase.start_with?("r")
    current_player = ['computer', 'player'].sample
  elsif who_first.downcase.start_with?("c")
    current_player = "computer"
  else
    current_player = "player"
  end
  
  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt("#{detect_winner(board)} won!")
  else
    prompt("It's a tie!")
  end

  prompt("Play again? (y or n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing. Goodbye.")