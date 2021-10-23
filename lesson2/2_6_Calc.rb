#this was my quick version I tried before I watched the video 
=begin
puts "What are the two numbers?"
numbers = gets.chomp.split(" ").map{|n| n.to_i}

puts "What is the operation to perform: add, subtract, multiply or divide?"
operation = gets.chomp

if operation == "add"
  puts "#{numbers[0] + numbers[1]}"
elsif operation == "subtract"
  puts numbers[0] - numbers[1]
elsif operation == "multiply"
  puts numbers[0] * numbers[1]
elsif operation == "divide"
  puts numbers[0] / numbers[1]
else
  puts "invalid operation"
end 

#video walk through

#ask user for two numbers 
#ask the user for an operation to perform
# perform the operation on the two numbers
#output the result

puts "Welcome to Calculator!"

puts "What's the first number?"
number1 = gets.chomp

puts "What's the second number?"
number2 = gets.chomp

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
else 
  result = number1.to_f / number2.to_i
end

puts "The result is #{result}"



#7.psuedo code

#1 method that returns the sum of two integers
  #GET two integers, SET first to a, second to b. SET result equal to the sum
#2 a method that takes an array of strings, and returns a string that is all those strings concatenated together
  #GET the array, and join the array with a space in between each string. 
#3 a method that takes an array of integers, and returns a new array with every other element
  #get the array, SET every_other to an empty array. set iterator to 0 while iterator is less than the length of the array, check each element's idx, if it's even, push, if not, next  
  
  
  
  
  
puts "gimme a num"
input = gets.chomp


def number?(num)
  (num.to_i.to_s == num) || (num.to_f.to_s == num)  
end

puts number?(input)

=end

require "yaml"
MESSAGES = YAML.load_file('2_6_Calc_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  if num == "0"
    true
  else
    num.to_i != 0
  end
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['welcome'])

name = ''

loop do
  name = gets.chomp

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do #main loop
  number1 = ''
  loop do 
    prompt(MESSAGES['first_num'])
    number1 = gets.chomp
    
    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['not_a_num'])
    end
  end
  
  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = gets.chomp
  
    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['not_a_num'])
    end
  end
  
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)

  operator = ''
  
  loop do
    operator = gets.chomp
    
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, 4")
    end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_i
            end
  
  puts "The result is #{result}"
  
  puts "Do you want to perform another calculation?(Y to calculate again)"
  
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for doing this with us. ")






