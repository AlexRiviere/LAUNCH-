#Rotation (Part 1)
#problem
# =>  given an array, rotate the array, without mutating it, by moving the first element to the
# =>    end of the array
# =>  input: array (that is not to be modified/mutated)
# =>  output: rotated array (that points to a different object that the one passed in)
# =>  rules:
# =>    explicit  - do not modify the array passed in as an argument, return a new array
# =>              - no rotate method
# =>              - first element is last element, and the rest of the elements move up one idx
# =>    implicit  - an array of one element should return an array that looks exactly the same
#data structure
# =>  array
#algorithm
# =>  initialize new empty arr called result
# =>  iterate over each element in the array passed in
# =>    if its the first index, skip it
# =>    all other indexes, push to new arr
# =>  once finished with the iterations, push the first element from the given arr to the
# =>    result array
# =>  return the result array

#this worked
# def rotate_array(arr)
#   result = []
#   arr.each_with_index do |el, idx|
#     result << el unless idx == 0
#   end
#   result << arr[0]
# end




# #test cases
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true






#another one
# =>  reverse array
# =>  iterate through array
# =>    prepend to new array, 
# =>    push last element

# def rotate_array(arr)
#   result = []
#   arr.reverse.each_with_index do |el, idx|
#     if idx == arr.size - 1
#       result.push(el)
#     else  
#       result.unshift(el)
#     end
#   end
#   result
# end















































#Rotation (Part 2)

# **Problem**

# =>	objective: write a method that can rotate (moves first digit to the back and all the rest up)
# =>            the last `n` digits of a number. 
# =>	input: two integers. the first is to be rotated, the second specifies the number of digits
# =>            the method needs to rotate (starting from the last digit)

# =>  output: an integer, with specified digits rotated (the first number of specified chunk
# =>            is moved to the back, and the rest of the numbers are moved one space forward)
# =>	rules:
# =>		explicit	-	rotating 1 digit returns the original array
# =>              - can use method from last problem 
# =>              - can assume that n is always a positive integer
# =>		implicit	-
# =>	questions:  - what if n is larger than the number of digits in the number?
# =>              - what if the number is negative?

# **Data Structure**
# =>  array 

# **Algorithm**
# =>  convert the given integer into a string
# =>  split the characters of the string into an array of strings
# =>  remove the last n digits (that are strings) and pass them to the helper method,
# =>      specified below
# =>  concatenate the remaining elements with the return value from the helper method
# =>  return the array of integers (posing as strings), joined and convert it to an integer

# Edge Cases
# =>  rotating the whole number, if you pop all elements from an array can you concatenate
# =>    something to it?


# **Implementation Notes**

# =>  can use method from last problem

# def rotate_array(arr)
#   result = []
#   arr.each_with_index do |el, idx|
#     result << el unless idx == 0
#   end
#   result << arr[0]
# end

# def rotate_rightmost_digits(int, n)
#   arr_of_str = int.to_s.chars  
#   chunk_rotated = rotate_array(arr_of_str.pop(n))
#   new_number = arr_of_str.concat(chunk_rotated)
#   new_number.join.to_i
# end


# #Test Cases

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917