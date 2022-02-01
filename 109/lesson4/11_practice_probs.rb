#1

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

#problem
#turn this array into a hash where the names are keys and values are positions in array

#not defining a method, just using calling one
#input is an arrray, output is a hash
#remember that to add something to an array, you need to assign the key a value
#lets go with each _with_object

# new_hash = flintstones.each_with_object({}) do |name, hsh|
#   hsh[name] = flintstones.find_index(name)
# end

# p new_hash

#that worked, lets try another way

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# hsh = {}

# flintstones.each_with_index do |name, idx|
#   hsh[name] = idx
  
# end

# p hsh

#this was probably less complex, easier to read and easier to write

#2

#this was the first way

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.sum

#another one

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# puts ages.reduce(0) {|sum, (key, value)| sum + value}

#3

#first way

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.select!{|k, v| v < 800}

#another one

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# young_ppl = {}
# ages.each do |k, v|
#   if v < 100
#     young_ppl[k] = v
#   else
#     next
#   end
# end

# p young_ppl


#4

#first way
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.min

#another one
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# #if looking for just the min age
# p ages.values.min

#another

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.sort_by{|k,v| v}.first

#5
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.index{|name| name.start_with?('Be') }


#6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.map{|name| name[0..2]}

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# counter = 0
# loop do
#   new_word = flintstones.shift[0..2]
#   flintstones.push(new_word)
#   counter += 1
#   break if counter == flintstones.size
# end

# p flintstones

#7

# statement = "The Flintstones Rock"

# hsh = {}
# statement.chars.each do |let|
#   hsh[let] = statement.count(let)
# end

# p hsh 


#8

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# p numbers 
#prints 1, removes 1, when it goes to iterate again, it starts from the second index


# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# p numbers 

#9

# words = "the flintstones rock"

# p words.split.map{|wrd| wrd.capitalize}.join(" ")


#10
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |k, v|
#   if munsters[k]["age"] < 18
#     munsters[k]["age_group"] = "kid"
#   elsif munsters[k]["age"] < 65
#     munsters[k]["age_group"] = "adult"
#   else
#     munsters[k]["age_group"] = "senior"
#   end
# end

# p munsters

#another with hint

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 55502, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p munsters["er"]

# munsters.each do |k, v|
#   case munsters[k]["age"]
#   when  (0..17)
#     munsters[k]["age_group"] = "kid"
#   when (18..65)
#     munsters[k]["age_group"] = "adult"
#   when (66..)
#     munsters[k]["age_group"] = "senior"
#   end
# end
munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
p munsters



