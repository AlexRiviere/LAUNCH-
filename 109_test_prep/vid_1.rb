#this is where i will practice teh things from the first video
#https://launchschool.medium.com/launch-school-live-session-beginning-ruby-c6432494ab34


#local var scope
# arr = [1, 2, 3, 4]

# counter = 0
# sum = 0
# loop do
#   sum += arr[counter]
#   counter += 1
#   break if counter == arr.size
# end

# puts "your total is #{sum}"





#pass by reference/value

# def amethod(param)
#   param += ' universe' # this code is reassignmnetn, returns new object
#   #param + ' universe' # string concatenations, it returns a new object
#   param << ' world' #when there is a method that mutates the calling object, you see the diference
#                     #outside the method
# end 

# str = "hello"
# amethod(str)

# p str

#will this str var be modified?






#variables are pointers to objects

# a = 'hello'
# b = a



# b << " world"

# puts a 
# puts b

# a = 'hey'

# b  << " universe"

# puts a
# puts b














# def prefix(str)
#   "Mr. " + str
# end

# name = 'joe'
# name = prefix(name)

# puts name

















#third video

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# idx = 0

# loop do 
  
#   puts arr[idx]
#   idx += 1
#   break if idx == arr.size
# end



# arr.each do |n|
#   puts n if n > 5  
# end

# arr << 12

# arr.unshift(0)

# arr << 1

# arr << 2

# arr << 3

# p arr

# arr.uniq!
# p arr






#extract all odd nums into new arr. 


# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# new_arr = arr.select{|n| n.odd?}
# p new_arr

#increment all nums by 1

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# #mutate
# arr.map!{|n| n + 1}

# p arr

#non -mutate to new arr

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# new_arr = arr.map{|n| n + 1}

# p new_arr
# p arr

# #sum all numbers 

# p arr.sum







# #hashes
# hsh = {a: 1, b: 2, c: 3, d: 4}

# hsh[:e] = 5

# # hsh.each do |k, v|
# #   puts "#{k} : #{v}"
# # end

# new_hsh = hsh.select do |k, v|
#   v < 3.5
# end
# hsh.delete_if {|k, v| v < 3.5}

# p hsh






a = 4
b = 1

loop do
  a = 5
  b = 3
  break
end

puts a
puts b