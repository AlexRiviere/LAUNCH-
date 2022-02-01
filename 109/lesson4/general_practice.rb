=begin


#Collections Basics

arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
p arr[2, 3] 
p arr[2, 3][0]


arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
arr         # => [2, 2, 3, 4, 5]
arr[1] += 3
arr[2] += 4
arr[3] -= 1
arr[4] += 7

arr

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh[:pear] = 'Fruit'
hsh[:carrot] = 'Vegetable'
hsh[:broccoli] = 'Vegetable'

p hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }

=end

#Introduction to PEDAC process

#"understand the problem" part of this problem on your own, and write the input,
# output, and rules for it. We'll provide a solution below. 

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

#forgot to write questions first

#understand the problem
#input: string
#output: an array of sub-strings that are palindromes
#rules: 
#   Explicit requirements: 
#     - all palindromes in the string must be included, even if they encapsulate other strings
#     - words are case sensitive(Dad is not, but dad is)
#   Implicit requirements: 
#     - return a new object
#     - if the string is empty, return an empty array

