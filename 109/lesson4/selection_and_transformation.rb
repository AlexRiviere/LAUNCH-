
#we want to select the key-value pairs where the value is 'Fruit'.


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }


# def select_fruit(hash)
#   fruit_hash = {}
#   hash_keys = hash.keys
#   counter = 0
#   loop do 
#     current_value = hash[hash_keys[counter]]
    
#     if current_value == "Fruit"
#       fruit_hash[hash_keys[counter]] = hash[hash_keys[counter]]
#     end 
    
#     counter += 1
#     break if counter == hash_keys.length 
#   end
#   fruit_hash
# end

# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

#could have made hash[hash_keys[counter]] just a variable then called it same with tth eother one

#If we wanted to, we could've easily decided that mutating the method argument is the right 
#approach. Can you implement a double_numbers! method that mutates its argument?


# def double_numbers!(numbers)
  
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2

#     counter += 1
#   end

#   numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
# p my_numbers

#What if we wanted to transform the numbers based on their position in the array rather
#than their value?
#Try coding a solution that doubles the numbers that have odd indices

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# # not mutated
# p my_numbers                      # => [1, 4, 3, 7, 2, 6]



#Try coding a method that allows you to multiply every array item by a specified value


# def multiply(arr, multiplier)
#   multipled_nums = []
#   counter = 0
#   loop do
#     break if counter == arr.size
#     multipled_nums << arr[counter] * multiplier
#     counter += 1
#   end
#   multipled_nums
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 5) # => [3, 12, 9, 21, 6, 18]


