Madlibs Revisited

'''

ADJECTIVES = %w(quick lazy sleepy ugly)
NOUNS = %w(fox dog head leg)
VERBS = %w( jumps lifts bites licks)
ADVERBS = %w(easily lazily noisily excitedly)

text = File.read('madlibs_revis.txt')

def replace_words(str)
  arr_of_replaced_words = str.split.map do |word|
    if word =~ /%{noun}/
      word.gsub('%{noun}', NOUNS.sample)
    elsif word =~ /%{adjective}/
      word.gsub('%{adjective}', ADJECTIVES.sample)
    elsif word =~ /%{verb}/
      word.gsub('%{verb}', VERBS.sample)
    elsif word =~ /%{adverb}/
      word.gsub('%{adverb}', ADVERBS.sample)
    else
      word
    end
  end
  arr_of_replaced_words.join(" ")
end

p replace_words(text)

'''

The program starts by assigning four constant variables to arrays. Each array contains a list of string elements that correspond with the constant variable name (each name is a part of speech).
Next, the variable text is assigned the to value that is returns from reading the text from the madlibs file. 
OR, the read method in the File class is called with an argument of the madlibs file. 
the replace_words method is defined. It accepts one argument named str. its block spans from line 11 to 24
the variable arr_of_replaced_words is assigned to the return calue of calling the method split on the argument str (passed into the method), this will split the string into an array of words, separated at the spaces
Then, the method map is called on the return value of split being called on str, since it is an array, the map method will iterate over the elements in the array 
for element in the array, the word will be tested against a regex that matches the madlib blanks which specify the parts of speech needed. this will occur in an if statement
If a match is not found, the array will return the original word, unchanged. 
But, if a match is found, the word will have the method gsub called on it, replacing the blank with a random sample from the corresponding constant variable listing parts of speech in that category
after the map method has iterated over each word in the sentece, the join method will be called on the arr_of_replaced_words variable with an arugment of a space , this will join the words together into one
string, with spaces in between the words

at the end of the program, the replace_words method is called with an argument of text, the return value is printed











#Seeing Stars

'''
def star(int)
  left_side_size = int / 2
  left_side = ['*']
  (left_side_size - 1).times{|x| left_side << " "}
  right_side = left_side.reverse
  
  # lines above middle line
  (int / 2).times do |time|
    puts left_side.join + "*" + right_side.join 
    last_el = left_side.pop
    left_side.unshift(last_el) # remove last element and unshift it to the beginning of the left side
    right_side = left_side.reverse
  end
  
  # middle line
  puts "*"*int
  
  left_side = ['*']
  (left_side_size - 1).times{|x| left_side.unshift(" ")}
  right_side = left_side.reverse

  # lines below middle line
  (int / 2).times do |time|
    puts left_side.join + "*" + right_side.join
    first_el = left_side.shift
    left_side.push(first_el) #removed first element, ppush to end of array
    right_side = left_side.reverse
  end
  
end
'''

the star method is defined starting on line 60, to line 89. It accepts one argument, the name of the parameter is int becuase it is an integer. Each line, except the middle line, is created with two arrays
, left_side and right_side, printed with a star in the middle of them since each line has a star in the middle index of the string. the left side array is initialized to an array containing one element, a star
then the times method is called on for left_side_size - 1 number of times (because star is taking one spot). Each iteration, a string element of a space is pushed to the end of teh array
Once the left side array is finished, the right side array is set to the reverse of the left side array. 
Next, the times method is called (int / 2) times because the number of rows above the line matches that number. Each iteration prints the left side, star and right side, then adjusts the left side array to reflect
the next line. The Last element is popped off using the pop method and it is unshifted to the front of the array. This moves the star down one index and adds a space at the beginning of the array. The right
side is set to the left side called with the reverse method. Then the middle line is printed. 
Then the opposite operation is performed for the lines below the middle line. The lines are set up so the left side has a star in the last element, and spaces for the rest of the elements. 
(int / 2) times the line is printed and then adjusted. This time, the adjusted is made by removing the first element with the shift method and adding it to the back of the array with the psuh mehtod, then 
right side is set to the reverse of the left side










#Transpose 3x3

'''
def get_all_nth_elements(rows, n, matrix)
  arr = []
  0.upto(rows - 1){|row| arr << matrix[row][n]}
  arr
end

def transpose(matrix)
  size = matrix.size
  final_arr = []
  0.upto(size - 1){|el| final_arr << get_all_nth_elements(size, el, matrix)}
  final_arr
end
'''
The transpose method is defined on lines 121-126, its block spans from lines 122-125. the transpose method takes one argument, the name of the parameter is matrix. The method's block starts by getting the size
of the array. this will let get the number of rows in the array. THen it initializes the Array final_arr. To start, it is empty. Then the up to method is called on 0 and given an argument of size minus one
because the indexes start at 0. in the block of the upto method call, el is the block parameter, which will iterate through the numbers of the indexes. in the block, the return from our helper method will
be appended to the final_arr array. 

The helper method get_all_nth_elements is defined and takes three parameters, rows, n and matrix. in the method definition block, an empty array is initialized and assigned to the variable arr. 
startin from 0, the upto method is called with an argument of size - 1. In the method invocation block, el is defined as the ***name for things between vert bars*** . then to arr is pushed the element at 
matrix row n . arr is returned from the method. 

Finally, the final_arr will be returned since it is the last line of the method. 


