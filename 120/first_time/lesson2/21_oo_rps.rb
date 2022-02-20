class Move
  VALUES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
  HAL_VALUES = ['rock', 'scissors', 'scissors', 'scissors', 'scissors', 'spock', 'lizard']
  attr_reader :value

  def initialize(value)
    @value = value
  end

  @@winning_hash = {  'rock' => ['scissors', 'lizard'],
                      'paper' => ['rock', 'spock'],
                      'scissors' => ['paper', 'lizard'],
                      'spock' => ['rock', 'scissors'],
                      'lizard' => ['spock', 'paper'] }

  def >(other_move)
    @@winning_hash[@value].include?(other_move.value)
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def set_name
    n = nil

    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, you must enter a value."
    end

    self.name = n
  end

  def choose
    choice = nil

    loop do
      puts "Please choose rock, paper, scissors, spock or lizard:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end

    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', "Hal", "Chappie"].sample
  end

  def choose
    self.move = case self.name
                when 'R2D2'
                  Move.new('rock')
                when 'Hal'
                  Move.new(Move::HAL_VALUES.sample)
                when 'Chappie'
                  Move.new(Move::VALUES.sample)
                end
  end
end

class RPSGame
  attr_accessor :human, :computer

  @@history_of_moves = []

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Spock, Lizard!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Spock, Lizard. Good bye!"
  end

  def display_moves
    player_move = "#{human.name} chose #{human.move}"
    @@history_of_moves << player_move
    puts player_move
    computer_move = "#{computer.name} chose #{computer.move}"
    @@history_of_moves << computer_move
    puts computer_move
  end

  def display_history_of_moves
    puts "History of Moves:"
    round = 1
    @@history_of_moves.each_slice(2) do |slice|
      puts "In round #{round}, #{slice[0]} and #{slice[1]}"
      round += 1
    end
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won this round!"
      human.score += 1
    elsif computer.move > human.move
      puts "#{computer.name} won this round"
      computer.score += 1
    else
      puts "It's a tie this round"
    end
  end
  
  def who_won_the_game?
    if human.score > computer.score
      puts "#{human.name} won the whole game!"
    elsif human.score < computer.score
      puts "#{computer.name} won the whole game!"
    else
      puts "It ended in a tie!"
    end
  end

  def display_final_score
    puts "The final score is #{human.name}: #{human.score} to #{computer.name}: #{computer.score}"
  end

  def play_again?
    answer = nil
    return false if human.score == 3 || computer.score == 3
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end
    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def play
    display_welcome_message
    loop do
      system 'clear'
      human.choose
      computer.choose
      display_moves
      display_winner
      break unless play_again?
    end
    who_won_the_game?
    display_final_score
    display_history_of_moves
    display_goodbye_message
  end
end

RPSGame.new.play
