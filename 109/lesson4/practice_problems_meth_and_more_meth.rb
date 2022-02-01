#1

# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

#return vallue will be [1, 2, 3] because 'hi' will return truthy every time

#2

# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

#it will return 1, it is counting the return values that are true
# from teh docs If a block is given, it counts the number of elements yielding a true value.

#3

# p [1, 2, 3].reject do |num|
#   num.odd?
# end

#guess- it will delete if the block is true, but it will always be falsy with puts returning nil
#guess -- returns an empty array
#from the docs Returns an array for all elements of enum for which the given block returns false.
#new guess-- it has to be FALSE exactly, not falsey to reject it from collection
#ansewr reject actually returns a new array containing items where the block's return value is falsey

#4

# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end

#guess -- {a: ant, b: bear, c: car} making the first letter [value[0]] = value and adding to the hash
#nearly correct, it wasn't symbols it was strings

#5

#Removes the first hash entry (see Entry Order); returns a 2-element Array containing the removed key and value:

# hash = { a: 'ant', b: 'bear' }
# hash.shift


#6

# ['ant', 'bear', 'caterpillar'].pop.size

#guess pop is last element, size is number of characters. 11

#7

# p [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end

#guess-- block's return value -- true or false
#guess-- return value of any? -- original array? maybe not sure
#guess -- waht does it output? 1 2 3 on separate lines
#a computer never does anything it doesnt have to, as soon as 1 is true, it returns true and 
#stops iterating through the array


#8

# p arr = [1, 2, 3, 4, 5]
# p arr.take(2)
# p arr

#not destructive since when i printed arr, it was the same

#9

# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

#guess -- return value of map -- {a: nil, b: nil}? the if statement wont run if size <= 3 
#map always returns an array!!!
#so it returns [nil, 'bear']

#10

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

#guess -- what is the return value -- [1, nil, nil]