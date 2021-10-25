=begin


#Practice Problems: Easy 2

#1 

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.key?("Spot")
p ages.include?("Spot")
p !!ages["spot"]



#2 
munsters_description = "The Munsters are creepy in a good way."



p munsters_description.swapcase == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.capitalize == "The munsters are creepy in a good way."
p munsters_description.downcase   == "the munsters are creepy in a good way."
p munsters_description.upcase     == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."



#3 

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages



#4 
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("dino")


#5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = w%(Fred Barney Wilma Betty BamBam Pebbles)

#6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"
p flintstones


#7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#flintstones.push("Dino", "Hoppy")
flintstones.concat(["Dino", "Hoppy"])

p flintstones



#8 

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0, 39)

p advice



#9 
statement = "The Flintstones Rock!"
p statement.count("t")

=end

#10
title = "Flintstone Family Members"

p title.center(40)