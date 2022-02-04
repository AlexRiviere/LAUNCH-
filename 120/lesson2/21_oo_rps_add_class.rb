class Move
  attr_reader :value, :wins_against
  
  VALUES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
  
  def initialize(value)
    @value = value
  end
  
  def beats?(other_move)
    self.wins_against.any? { |type| other_move.class == type }
  end
  
end

class Rock < Move
  def initialize(choice)
    super(choice)
    @wins_against = [Lizard, Scissors]
  end
  
  def to_s
    'rock'
  end
end

class Paper < Move
  def to_s
    'paper'
  end
  
  def initialize(choice)
    super(choice)
    @wins_against = [Rock, Spock]
  end
end

class Scissors < Move
  def to_s
    'scissors'
  end
  
  def initialize(choice)
    super(choice)
    @wins_against = [Paper, Lizard]
  end
end

class Lizard < Move
  def to_s
    'lizard'
  end
  
  def initialize(choice)
    super(choice)
    @wins_against = [Paper, Spock]
  end
end

class Spock < Move
  def to_s
    'spock'
  end
  
  def initialize(choice)
    super(choice)
    @wins_against = [Rock, Scissors]
  end
end



class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
  
  def make_choice(choice)
    case choice
    when 'rock'
      Rock.new(choice)
    when 'paper'
      Paper.new(choice)
    when 'scissors'
      Scissors.new(choice)
    when 'Lizard'
      Lizard.new(choice)
    when 'spock'
      Spock.new(choice)
    end
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

    self.move = make_choice(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', "Hal", "Chappie"].sample
  end

  def choose
    choice = Move::VALUES.sample
    self.move = make_choice(choice)
    puts move
  end
end

class RPSGame
  attr_accessor :human, :computer

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
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move.beats?(computer.move)
      puts "#{human.name} won this round!"
      human.score += 1
    elsif computer.move.beats?(human.move)
      puts "#{computer.name} won this round"
      computer.score += 1
    else
      puts "It's a tie this round"
    end
  end
  
  def display_score
    puts "The current score is #{human.name}: #{human.score} to #{computer.name}: #{computer.score} "
  end
  
  def display_final_score
    if human.score > computer.score
      puts "#{human.name} won the whole game!"
    elsif human.score < computer.score
      puts "#{computer.name} won the whole game!"
    else
      puts "It ended in a tie!"
    end
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
      human.choose
      computer.choose
      display_moves
      display_winner
      display_score
      break unless play_again?
    end
    display_final_score
    display_goodbye_message
  end
end

# RPSGame.new.play
liz = Lizard.new('lizard')
scic = Scissors.new('scissors')
p (liz.beats?(scic))
#add a class for each move