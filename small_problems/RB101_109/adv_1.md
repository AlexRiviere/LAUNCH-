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












#Transpose MxN



'''
def get_all_nth_elements(rows, n, matrix)
  arr = []
  0.upto(rows - 1){|row| arr << matrix[row][n]}
  arr
end

def transpose(matrix)
  rows = matrix.size
  columns = matrix[0].size
  final_arr = []
  0.upto(columns - 1){|el| final_arr << get_all_nth_elements(rows, el, matrix)}
  final_arr
end
'''



same thing as above but one tweak, instead of running through the upto method in the transpose method definition (rows - 1) times, we will go to (columns - 1) since we'll need an array for a flexible number of
columns











#Rotating Matrices


'''
def extract_column(col, matrix, rows)
  arr = []
  (rows - 1).downto(0){|row| arr << matrix[row][col]}
  arr
end

def rotate90(matrix)
  columns = matrix.first.size
  rows = matrix.size
  arr = []
  (0 ... columns).each do |col|
    arr << extract_column(col, matrix, rows)
  end
  arr 
end
'''

the rotate90 method is defined on line 195-203, its block spans lines196-202. Rotate90 accepts one argument which is a matrix of variable size. First, we get the number of columns by assigning the variable
columns to the size of the first element in the matrix. Next we get the number of rows by assigning the variable to the size of the matrix. Next, we initialize an empty array where we will be returning
our final return value. Next, we iterate from 0 upto but not including the number of columns becaues the indexes start at 0. We call the each method on thie range with a block parameter of col representing
the column index we are addressing for the iteration. On each iteration, we are pushing the return value of calling extract_column to the Array arr. 

The helper method extract_column accepts three arguments (col, matrix and rows). It first initiates an empty Array called arr. Then, the downto method is called on (rows - 1) since the indexes start at 0. 
This will count down from rows - 1 to 0 and for each iteration, we have our block parameter defined as |row|. The integer at the index col of element 'row' in matrix is called each time. We started at 
rows - 1 so we can count backwards. Then the array is returned

at the end of the rotate90 method, the arr is returned. It is a new array that has left the original array untouched. 












'''
def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end
'''


The my_method method is defined on line 229 - 239. Its block spans 230- 238. It takes one argument, denoted by the parameter array. The block of this method is a conditional statement taht tests the
size of the array and carries out evaluations based on that size. Line 230 tests if the array is empty, if it is, the method will return an empty array. Line 232 called the method size on the argument array
and compared that return value to check if is was greater than 1, if it is, the method map will be called on the array. Map will iterate through each element of the array, and using the block parameter
value to represetn the value of array's elements, it will return the result of multipluing each element by itself. Map will return a new array and that return value will be returned by the method because it will
be the last value to be evaluated. If the size of the array is not 0 or is 1, the else condition will run which will return an array with one element. That element will be calculated by multiplying 7 by the 
one and only element in array (which can be found by calling the first method on the array). That array will be returned because it will be the last line eevaluated in our method. 












'''
def valid?(arr1, arr2)
  if arr1.empty? && !arr2.empty?
    arr2
  elsif !arr1.empty? && arr2.empty?
    arr1
  else
    []
  end
end

def merge(arr1, arr2)
  return valid?(arr1, arr2) if arr1.empty? || arr2.empty?
  
  arr = []
  min = [arr1.min, arr2.min].min
  counter = min
  loop do
    total = arr1.count(counter) + arr2.count(counter)
    total.times { arr << counter }
    counter += 1
    break if arr.size == (arr1.size + arr2.size)
  end
  arr
end
'''




THe merge method is defined between lines 272 - 285, it first checks to see if either array is empty, if thats true, it gives the arrays as arguments to the helper method is defined between lines 262 - 270
Valid? returns the non empty array or an empty array if both arrays are empty. 
On line 275, an empty result arr is assigned to an empty array. the minimum is found by calling min on both arrays, adding references to those in an array and calling min on that array. The variable counter is
assigned to the variable min. The loop is started. Total is assigned to count of counter in both arrays, then the times method is called total times and the counter is pushed to the array that many times. 
Counter is then incremented by 1. The break condition will be true when the arr size is equal to the size of the two given arrays combined. 
Finally, the arr results array is returned. 
















#Merge Sort



'''
def merge_sort(arr)
  return arr if arr.size == 1

  first_half = arr[0 .. ((arr.size / 2) - 1)]
  second_half = arr[(arr.size / 2) .. -1]
  
  first_half = merge_sort(first_half)
  second_half = merge_sort(second_half)
  
  return merge(first_half, second_half)
end



def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

'''



The program uses the merge method from the previous problem. Our merge_sort method is defiend 
between lines 318 - 328. It starts by returning arr if the size is one. If it is larger than
one, it is split between first half and second half, then those same halfs are reassigned 
to themselves being use as arguments in a recursive merge_sort method. When those are sufficiently
split (as in , when each half only has one element), then the last line of the method is called
It invokes the merge method using array 1 and 2 as arguments, returning a merged and sorted
array























'''
def unegyptian(arr)
  arr.reduce(0) {|sum, denom| sum + Rational(1, denom )}
end

def egyptian(num)
  arr = []
  sum, counter = 0, 0
  
  while sum < num 
    counter += 1
    if (sum + Rational(1, counter)) <= num
      arr << counter
      sum += Rational(1, counter)
    end 
  end
  arr 
end

'''

the unegyptian method is defined between lines 366 - 368. It accepts one argument represented by the arr parameter. The argument will come in teh form of an array. The method calls the reduce method on
the given array argument, and initializes the sum to 0. In the block, two parameters are sum and denominator. In the block, the sum (which was initialized to 0) has a rational number added to it. 
The rational number is made up of 1 and the denominators from the array. This method returns a Rational number and prints nothing. 

The egyptian method is defined between lines 370 - 382. It accepts one argument represented by the num parameter. For the sake of precision, the argument should be a Rational number. The method first initializes
an empty array, then parallel assigns two variables, sum and counter, to 0. Then the while loop starts with a condition of the sum being less than the given number. In the loop, the counter is first incrementeed.
Then an if statment tests whether adding the rational number 1 / counter to sum will push sum over the given number. If it will, the loop starts again (incrementing the counter which makes the fraction smaller).
If it won't, the counter is appended to the arr array and the assignment operator += is called on sum, and the ratioanl number with counter as the denominator is added to sum. the loop starts again until the 
sum is equal to num. After the loop, the array of denominators is returned. 