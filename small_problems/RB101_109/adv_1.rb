#Madlibs Revisited
#problem
# =>  program that reads in text from a text file, then plugs in selection of randomized
# =>    nouns, verbs, adj and adverbs into the text and prints it
#input: given text
#output: the text from the text file with randomly input parts of speech
#rules
# =>  explicit  - text must be in txt file
# =>              can build list of nouns, verbs etc into program 
# =>              hint: check out format's abililty to substitute strings w %{name} format
# =>                or use gsub
#data structure
# =>  array for every word
#Algorithm
# =>  create constants with 4 parts of speech, 4 words each
# =>  read in text file
# =>  split text into words
# =>  iterate over the array with a case statement, 
# =>    if the word matches one of the formats for things that will be substituted
# =>      change it to take a sample of the corresponding list
# =>  join the array with spaces 
# =>  print the string

#first attempt
#issue is that when you split, one %{noun} has a comma attached and it wont match the case 
# =>  statement


# ADJECTIVES = %w(quick lazy sleepy ugly)
# NOUNS = %w(fox dog head leg)
# VERBS = %w( jumps lifts bites licks)
# ADVERBS = %w(easily lazily noisily excitedly)

# text = File.read('madlibs_revis.txt')

# def replace_words(str)
#   arr_of_replaced_words = str.split.map do |word|
#     case word
#     when '%{adjective}'
#       ADJECTIVES.sample
#     when '%{noun}'
#       NOUNS.sample
#     when '%{verb}'
#       VERBS.sample
#     when '%{adverb}'
#       ADVERBS.sample
#     else
#       word
#     end
#   end
#   arr_of_replaced_words
# end

# p replace_words(text)





#second attempt
#close but not quite, the method calls from gsub are replacing the parts of speech with the 
# =>  same word, not taking a new sample evertime

# ADJECTIVES = %w(quick lazy sleepy ugly)
# NOUNS = %w(fox dog head leg)
# VERBS = %w( jumps lifts bites licks)
# ADVERBS = %w(easily lazily noisily excitedly)

# text = File.read('madlibs_revis.txt')

# def replace_words(str)
#   str.gsub!('%{noun}', NOUNS.sample)
#   str.gsub!('%{adjective}', ADJECTIVES.sample)
#   str.gsub!('%{verb}', VERBS.sample)
#   str.gsub!('%{adverb}', ADVERBS.sample)
#   str
# end

# puts replace_words(text)



#third attempt
#also wrong, remember that ruby returns the last line evaluated, so it was returning and unch
# =>  anged word when doing this except for the adverbs which actually matched the last line

# ADJECTIVES = %w(quick lazy sleepy ugly)
# NOUNS = %w(fox dog head leg)
# VERBS = %w( jumps lifts bites licks)
# ADVERBS = %w(easily lazily noisily excitedly)

# text = File.read('madlibs_revis.txt')

# def replace_words(str)
#   arr_of_replaced_words = str.split.map do |word|
#     word.gsub('%{noun}', NOUNS.sample)
#     word.gsub('%{adjective}', ADJECTIVES.sample)
#     word.gsub('%{verb}', VERBS.sample)
#     word.gsub('%{adverb}', ADVERBS.sample)
#   end
#   arr_of_replaced_words
# end

# p replace_words(text)






#fourth attempt-- if statements and gsub
#this worked

# ADJECTIVES = %w(quick lazy sleepy ugly)
# NOUNS = %w(fox dog head leg)
# VERBS = %w( jumps lifts bites licks)
# ADVERBS = %w(easily lazily noisily excitedly)

# text = File.read('madlibs_revis.txt')

# def replace_words(str)
#   arr_of_replaced_words = str.split.map do |word|
#     if word =~ /%{noun}/
#       word.gsub('%{noun}', NOUNS.sample)
#     elsif word =~ /%{adjective}/
#       word.gsub('%{adjective}', ADJECTIVES.sample)
#     elsif word =~ /%{verb}/
#       word.gsub('%{verb}', VERBS.sample)
#     elsif word =~ /%{adverb}/
#       word.gsub('%{adverb}', ADVERBS.sample)
#     else
#       word
#     end
#   end
#   arr_of_replaced_words.join(" ")
# end

# p replace_words(text)







#their solution

# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS = %w(fox dog head leg).freeze
# VERBS = %w( jumps lifts bites licks).freeze
# ADVERBS = %w(easily lazily noisily excitedly).freeze

# File.open('madlibs_revis.txt') do |file|
#   file.each do |line|
#     puts format(line,  noun:       NOUNS.sample,
#                         adjective:  ADJECTIVES.sample,
#                         adverb:    ADVERBS.sample,
#                         verb:      VERBS.sample
#                         )
    
#   end
# end
























#seeing stars
#problem
# =>  write a method that prints an 8 pointed star, in an n x n grid, where n is an odd
# =>    integer that is an argument to the method,
#input: odd integer, bigger than 7
#output: 8 point star in specified grid
#rules:
# =>  explicit  - smallest star will be 7x7 grid
# =>  implicit  - number of rows above and below middle row is int / 2
# =>              each row above/below middle line has three stars and int - 3 spaces
# =>              middle row is '*' * int
# =>              first row above/below middle, start are together, space on outside
# =>              top and last row are star, 
# =>              middle is always star
# =>              middle is always known, first few star moves one inside every time one, two, three
# =>              the other sid eof middle is first side, reversed
#data structure
# =>  top three rows w loop, middle row, bottom three rows w loop
#algorithm- just the top
# =>  one side size = int / 2
# =>  create first side of top row arr
# =>    star, then fill the rest with spaces
# =>    initialize arr = ['*']
# =>    size - 1 times push a sp to the array
# =>  use times instead of loop and counter var
# =>    print left side, star, right side in a line
# =>    pop last el from left side, unshift to first el 
# =>    make right side reverse of left side
# =>  print middle row
# =>  use times to loop THIS IS FOR BOTTOM ROWS
# =>    it will be the same as the top but shift and push instead of pop and unshift

# def star(int)
#   left_side_size = int / 2
#   left_side = ['*']
#   (left_side_size - 1).times{|x| left_side << " "}
#   right_side = left_side.reverse
  
#   # lines above middle line
#   (int / 2).times do |time|
#     puts left_side.join + "*" + right_side.join 
#     last_el = left_side.pop
#     left_side.unshift(last_el) # remove last element and unshift it to the beginning of the left side
#     right_side = left_side.reverse
#   end
  
#   # middle line
#   puts "*"*int
  
#   left_side = ['*']
#   (left_side_size - 1).times{|x| left_side.unshift(" ")}
#   right_side = left_side.reverse

#   # lines below middle line
#   (int / 2).times do |time|
#     puts left_side.join + "*" + right_side.join
#     first_el = left_side.shift
#     left_side.push(first_el) #removed first element, ppush to end of array
#     right_side = left_side.reverse
#   end
  
# end





#test cases

# star(7)
# star(9)
# star(21)

#me writing the pattern
#one, sp, sp, four, sp, sp, seven
#sp, two, sp, four, sp, six, sp
#sp, sp, three, four, five, sp, sp

#how to print array ['*', ' ', ' ']

# beg_arr = ['*', ' ', ' ']
# end_arr = beg_arr.reverse

# # p beg_arr
# # p end_arr

# puts beg_arr.join + "*" + end_arr.join
















#Transpose 3x3
#problem
# =>  write a method that takes a 3x3 matrix and returns the transposed of original
#input: nested array
#output: nested array transposed
#rules
# =>  explicit  - no transpose method or matrix class
# =>              do not modify the original array, produce a new matrix
#data structure
# =>  nested array
#algorithm
# =>  create new array with Array.new three elements 
# =>    each el references the right spot in the matrix
# =>  do for each line
# =>  combine arrays


#correct but not elegant, try again
# def transpose(matrix)
#   line1 = [matrix[0][0], matrix[1][0], matrix[2][0]]
#   line2 = [matrix[0][1], matrix[1][1], matrix[2][1]]
#   line3 = [matrix[0][2], matrix[1][2], matrix[2][2]]
#   [line1, line2, line3]
# end




# #test cases
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]






#second attempt at a more elegant solution
#algorithm
# =>  get all first elements

# def get_all_nth_elements(rows, n, matrix)
#   arr = []
#   0.upto(rows - 1){|row| arr << matrix[row][n]}
#   arr
# end

# def transpose(matrix)
#   size = matrix.size
#   final_arr = []
#   0.upto(size - 1){|el| final_arr << get_all_nth_elements(size, el, matrix)}
#   final_arr
# end

# #test cases
# matrix = [
#   [1, 5, 8, 13],
#   [4, 7, 2, 14],
#   [3, 9, 6, 15],
#   [10, 11, 12, 16]
# ]

# new_matrix = transpose(matrix)

# p new_matrix #== [[1, 4, 3, 10], [5, 7, 9, 11], [8, 2, 6, 12]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6], [10, 11, 12]]








#in place transpose!

# def transpose!(matrix)
#   matrix[0] = [matrix[0][0], matrix[1][0], matrix[2][0]]
  
# end





# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose!(matrix)

# p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix #== [[1, 5, 8], [4, 7, 2], [3, 9, 6]]























#Transpose MxN
#problem
#   fix the 