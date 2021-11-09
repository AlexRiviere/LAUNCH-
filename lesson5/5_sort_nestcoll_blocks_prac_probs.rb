#1

#prob
# =>  given an array of number strings, sort by descending number value
#input: array of strings (that are really numbers)
#output: array of strings sorted by descendng numeric val
#rules
# =>  use blocks
#algorithm
# =>  sort numbers by ascending numeric value
# =>  reverse the order
#code

# def sort_num_str(arr)
#   arr.sort_by{|str| str.to_i}.reverse
# end


# #test cases
# arr = ['10', '11', '9', '7', '8']

# p sort_num_str(arr) == ['11', '10', '9', '8', '7']

#LS solved using the spaceship operator within sort , revresing a and b to get reverse
# =>  and then calling to_i on each letter







#2

#prob
# =>  order an array of hashes based on the year of publication , earliest to latest
#input: array of hashes
#output: array of hashes sorted by published key
#algorithm
# =>  sort_by the publsihed key 

# def sort_years(arr)
#   arr.sort_by{|book| book[:published]}
  
# end


# #test cases
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p sort_years(books) #== [{title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#                       # {title: 'Ulysses', author: 'James Joyce', published: '1922'}, 
#                       # {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#                       # {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'}]
                      
                      
                      
                      
                      
                      
#3


# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# p arr1[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# p arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# p arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# p hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# p hsh2[:third].keys[0]






#4

#change 3 to 4

# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
# p arr1

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4
# p hsh1

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4 
# p hsh2



#5

#figure out the total age of just the male members of the family.

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

#p munsters.inject(0) { |sum, pers| (munsters[pers]["gender"] == "male") ? sum + munsters[pers]["age"] : sum }


# sum = 0

# munsters.each do |name, val|
#   if munsters[name]["gender"] == "male"
#     sum += munsters[name]["age"]
#   end   
# end

# p sum






#6

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# # munsters.each do |name, val|
# #   puts "#{name} is a #{munsters[name]["age"]}-year-old #{munsters[name]["gender"]}"
# # end

# #make it better
# munsters.each do |name, val|
#   puts "#{name} is a #{val["age"]}-year-old #{val["gender"]}"
# end







#7

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] = 4 #arr = [4, [5, 8]]  #a = 4 # b is [5, 8]
# p arr 
# arr[1][0] -= a  #arr = [4, [1, 8]] a = 4 b = [1, 8]
# p arr
# p a
# p b

#this one was confusing we may need to come back to it




#8

#Using the each method, write some code to output all of the vowels from the strings.

# VOWELS = %w(a e i o u)

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


# hsh.values.flatten.each do |val|
#   val.chars.each do |let|
#     if VOWELS.include?(let)
#       puts let
#     end 
#   end
# end




#9

#Given this data structure, return a new array of the same structure but with the 
#sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# p arr.map {|arr| arr.sort{|a, b| b <=> a}}




#10
#Given the following data structure and without modifying the original array, use the
#map method to return a new array identical in structure to the original but where the 
#value of each integer is incremented by 1.

# a = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   hsh.each_key do |key|
#     hsh[key] += 1
#   end
# end

# p a


#11

#Given the following data structure use a combination of methods, including either the
#select or reject method, to return a new array identical in structure to the original 
#but containing only the integers that are multiples of 3.


# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# a = arr.map do |sub_arr|
#   sub_arr.select do |int|
#     int % 3 == 0
#   end
# end

# p a



#12
#Given the following data structure, and without using the Array#to_h method, 
#write some code that will return a hash where the key is the first item in each 
#sub array and the value is the second item.

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# hsh = {}

# arr.each do |sub_arr|
#   hsh[sub_arr[0]] = sub_arr[1]
# end

# p hsh

# p hsh == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

#another way

# a = arr.each_with_object({}) do |sub_arr, hsh|
#   hsh[sub_arr[0]] = sub_arr[1]
# end

# p a == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}




#13

#return a new array containing the same sub-arrays as the original but ordered 
#logically by only taking into consideration the odd numbers they contain.

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# # p arr.sort_by{|sub_arr| sub_arr[-1] }
# #this worked but its not really taking into account the 1


# a = arr.sort_by do |sub_arr|
#   sub_arr.select{|int| int.odd?}
# end

# p a
# #p a == [[1, 8, 3], [1, 6, 7], [1, 4, 9]]






#14

# return an array containing the colors of the fruits and the sizes of the vegetables.
#The sizes should be uppercase and the colors should be capitalized.

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# arr = []

# hsh.each do |k, v|
#   if v[:type] == 'fruit'
#     arr << v[:colors].map(&:capitalize)
#   else
#     arr << v[:size].upcase
#   end
# end

# p arr == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]


#15
#return an array which contains only the hashes where all the integers are even.

#if this problem was rejecting the whole hash if one integer was odd, this is my answer

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# a = arr.select do |hsh|
#   hsh.values.flatten.all? {|int| int.even?}
# end

# p a


#now returning individual hashes that contain even 

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# a = arr.map do |hsh|
#   hsh.select do |k, v|
#     v.all?{|int| int.even?}
#   end
# end

# p a




#16

#Write a method that returns one UUID when called with no parameters.

#8-4-4-4-12
# lets = ("a".."f").to_a
# nums = ("0".."9").to_a
# LETS_AND_NUMS = lets + nums
# # p LETS_AND_NUMS
# def randy
#   LETS_AND_NUMS.sample
# end

# def uuid
#   one = randy + randy + randy + randy + randy + randy + randy + randy
#   two = randy + randy + randy + randy
#   three = randy + randy + randy + randy
#   four = randy + randy + randy + randy
#   five = randy + randy + randy + randy + randy + randy + randy + randy + randy + randy + randy + randy
#   puts "#{one}-#{two}-#{three}-#{four}-#{five}"
# end

# uuid


