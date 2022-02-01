def valid_number?(num)
  (num.to_i != 0) && num.to_i > 0
end

def prompt(message)
  puts "=> #{message}"
end

puts "Welcome to the loan calculator!"

loan_amount = ''
loop do
  puts "What is the loan amount in dollars?"
  loan_amount = gets.chomp
  break if valid_number?(loan_amount)
  prompt("That isn't a valid number")
end

puts "What is the Annual Percentage Rate? (ex 6%)"
annual_percentage_rate = gets.chomp

monthly_interest_rate = annual_percentage_rate.to_i / 12.0 / 100

puts "What is the loan duration in years?"
loan_duration = gets.chomp.to_i * 12

monthly_payment = loan_amount.to_i * (monthly_interest_rate / (1 - (1 +
                  monthly_interest_rate)**(-loan_duration)))

puts "Your monthly payment is going to be $#{format('%.2f', monthly_payment)}"
