#original solution

class GuessingGame
  attr_accessor :num_of_guesses, :guess, :target_number

  def initialize
    @target_number = 0
    @num_of_guesses = 7
    @guess = nil
  end

  def play
    reset_target_number
    loop do
      puts ""
      break if num_of_guesses == 0
      display_num_of_guesses
      get_user_input
      break if analyze_guess
    end

    display_result
    reset_guesses
  end

  private

  def reset_guesses
    self.num_of_guesses = 7
  end

  def display_result
    if guess_matches?
      puts "You won!"
    else
      puts "You ran out of guesses!"
      puts "The number was #{target_number}"
    end
  end

  def high_or_low
    @guess > @target_number ? (puts "Your guess is too high.") : (puts "Your guess is too low.")
  end

  def decrement_guesses
    @num_of_guesses -= 1
  end

  def display_user_won_message
    puts "That's the number!"
  end

  def guess_matches?
    @guess == @target_number
  end

  def analyze_guess
    if guess_matches?
      display_user_won_message
      true
    else
      decrement_guesses
      high_or_low
    end
  end

  def get_user_input
    loop do
      print "Enter a number between 1 and 100: "
      @guess = gets.chomp.to_i
      @guess.between?(0, 100) ? break : print("Invalid guess. ")
    end
  end

  def reset_target_number
    @target_number = rand(1..100)
  end

  def display_num_of_guesses
    puts "You have #{num_of_guesses} guesses remaining"
  end
end

game = GuessingGame.new
game.play
