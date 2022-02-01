=begin
#question 1

#original numbers array because uniq without an exclamation mark did not mutate the caller

#2

#--1 not equals, use it in a conditional when you want to make sure something does not equal something else
#--2 one makes it the opposite, so if its true, its false
#--3 after something means it is mutateing the callers
#--4 not sure -- ternary operator 
#--5 returns boolean include?(arg)
#--6 !! bang bang before will give you true or false depending on the value of the variable

#3 
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")
p advice


#4 
numbers = [1, 2, 3, 4, 5]

numbers.delete(1)

p numbers


#5
puts (10..100).include?(42)



#6 

famous_words = "seven years ago..."
start =  "Four score and "
puts start + famous_words

puts famous_words.insert(0, start)

puts start << famous_words



#7 

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones

flintstones.flatten!

p flintstones

=end

#8 

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.select{|k, v| k == "Barney"}.to_a.flatten

