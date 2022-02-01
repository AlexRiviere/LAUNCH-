# [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end
# 1
# 3
# => [[1, 2], [3, 4]]

#What's happening in this, seemingly simple, piece of code? Take it apart and try 
#to describe every interaction with precision.

#really the array only has two elements, although those elements are arrays so each is iterating
#over the two elements and printing the first element from each array 
#each is NOT iterating over all elements in the nested array, in order to do that, you 
#would have had to call flatten

# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
#   arr.first
# end

# line    action        object      side effect   return value    is return value used
# 1       method call   outerarray  none          new arr         no 
#         map                                     [1,3]
        
# 1-4     block         each sub arr  none        arr.first       yes for transformation
# 2       puts          0 index of sub arr        nil             no because not last line

# 3       first         sub array                 element at 0 index  yes for trans


#guess output
#1
#3
#return value   [1, 3]

#example 4

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

#variable assignment so the return value will get assigned, i know each will return orig 
#array so return value will be [[18, 7], [3, 12]]
#for output, iterates through first array, then iterates through sub arrays, puts numbers 
#greater than 5 so 18 and 12 and 7



#example 5

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

#return val [[2, 4], [6, 8]]
#iterates through outer, iterates through elements of inner, mult by 2, replacing each num




#example 6

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

#array of two hashes, select iterates over each hash , 
#hash.all? iterates through each key/value pair testing if the first letter of the value 
#matches the symbol
#it will return only the last hash because elephant ruins it for the first hash 






#example 7

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]


#example 8

[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]

#map is used not only to iterate but to return a new array with only the selected values in

#example9

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

#first call within map is each, so we know the return value will be a new array that matches
#the orig array



#example 10

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

#what will be the final return value?
#keep everything in the same array structure, it returns everything + 1