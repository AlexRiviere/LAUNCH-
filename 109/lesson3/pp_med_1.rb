=begin

#Practice Problems: Medium 1

#1
str = "The Flintstones Rock!"
10.times{|space| puts "#{"\s"*space}#{str}"}



#2 

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"



#3 

def factors(number)
  divisor = number
  factors = []
  begin
    break if divisor <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(10)
p factors(0)
factors(-10)

#purpose of number % divisor is to see if when you divide, you get any remainder, if you dont, add it to the factor list
#gotta make sure that the last thing you evaluate is what you want to return



#4 

#one is mutating the caller, the other is not



#5 



def fib(first_num, second_num, limit)
  
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"



#6

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8



#7

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

#munsters is a hash 
#mess with is  a method that takes a hash
#on each value increase the age by 42, make gender "other"
# we know that each returns the original hash so that is not changing anything
#but what is done in each is another issue, 
#this is array/hash assignment like a[0] = 5
#so i am going to guess that the munsters hash was changed 

p munsters



#8

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#guess--puts paper

=end

#9

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

#guess-- yes