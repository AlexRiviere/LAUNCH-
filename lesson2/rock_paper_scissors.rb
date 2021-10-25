=begin
VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' || second == 'spock')) ||
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
  (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
  (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if  win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost :(")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: r: rock, p: paper, sc: scissors, l: lizard, sp: spock")
    input = gets.chomp
    choice =  case input
              when 'r'
                'rock'
              when 'p'
                'paper'
              when 'sc'
                'scissors'
              when 'l'
                'lizard'
              when 'sp'
                'spock'
              end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "You chose: #{choice}; Computer chose: #{computer_choice}"
  display_results(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye")




#Keep score of the player's and computer's wins. When either the player or computer reaches three wins, the match is over, and the winning player becomes the grand winner. Don't add your incrementing logic to display_results. Keep your methods simple; they should perform one logical task — no more, no less.
#ghetto way without using a method 

VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' || second == 'spock')) ||
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
  (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
  (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if  win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost :(")
  else
    prompt("It's a tie!")
  end
end

you_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: r: rock, p: paper, sc: scissors, l: lizard, sp: spock")
    input = gets.chomp
    choice =  case input
              when 'r'
                'rock'
              when 'p'
                'paper'
              when 'sc'
                'scissors'
              when 'l'
                'lizard'
              when 'sp'
                'spock'
              end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "You chose: #{choice}; Computer chose: #{computer_choice}"
  display_results(choice, computer_choice)
  
  if  win?(choice, computer_choice)
    you_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1 
  end
  
  prompt("Your score: #{you_score}; Computer score: #{computer_score}")
  
  break if you_score == 3 || computer_score == 3
  
end

prompt("Thank you for playing. Goodbye")

=end

VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  win_hash = {'rock' => ['scissors', 'lizard'],
            'paper' => ['rock', 'spock'],
            'scissors' => ['paper', 'lizard'],
            'lizard' => ['paper', 'spock'],
            'spock' => ['scissors', 'rock'] }
  
  win_hash[first].include?(second)
end

def display_results(player, computer)
  if  win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost :(")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: r: rock, p: paper, sc: scissors, l: lizard, sp: spock")
    input = gets.chomp
    choice =  case input
              when 'r'
                'rock'
              when 'p'
                'paper'
              when 'sc'
                'scissors'
              when 'l'
                'lizard'
              when 'sp'
                'spock'
              end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "You chose: #{choice}; Computer chose: #{computer_choice}"
  display_results(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye")