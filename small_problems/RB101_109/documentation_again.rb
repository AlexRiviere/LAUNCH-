
=begin
#Class and Instance Methods
#Locate the ruby documentation for methods File::path and File#path. How are they different?

#File::path -- string representation of the path , not used with a new file. class method
#File#path -- returns the pathname used to create the file as a string. instance method


#Optional Arguments Redux
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)



#Default Arguments in the Middle

#it will print [4, 5, 3, 6]

#Mandatory Blocks
#The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:
a = [1, 4, 8, 11, 15, 19]

#How would you search this Array to find the first element whose value exceeds 8?

p a.bsearch{|num| 8 < num}



#Multiple Signatures

a = %w(a b c d e)
#puts a.fetch(7) #nil ----this was actually an error
puts a.fetch(7, 'beats me') #beats me
puts a.fetch(7) { |index| index**2 } #49



#Keyword Arguments

5.step(to: 10, by: 3){ |value| puts value } # 5 \n 8

# min(2) to get the smallest two objects in an array

=end




