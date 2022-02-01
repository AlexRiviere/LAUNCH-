=begin

#Practice Problems: Hard 1

#1

if false
  greeting = "hello world"
end

p greeting

#if statements dont have their own block so it will be fine
#this was wrong, it is nil because even though the if block never got executed, the variable is initialized to nil



#2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

#guess {a: 'hi there'} because it mutated the caller



#3 

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#guess-- one, two three, method def initions cant change variables 



def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
#still the same , it just made a local variable copy not mutating the caller 



def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#guess -- two, three, one because the caller was mutated in the method definition 

=end

#4

#determine if an input string is an IP address 
#is_an_ip_number? probably returns a boolean 

#first option 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

#second option 
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if is_an_ip_number?(word)
  end
  return true
end