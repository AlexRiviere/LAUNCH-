class Player
  attr_reader :move

  def make_choice(move)
    case move
    when 'rock'
      Rock.new
    when 'paper'
      Paper.new
    when 'scissors'
      Scissors.new
    end
  end
end

class Human < Player
  def choose
    move = nil
    loop do
      puts "Do you choose rock, paper or scissors?"
      move = gets.chomp.downcase
      break if %w(rock paper scissors).include? move
      puts "That's not a valid option."
    end

    @move = make_choice(move)
  end
end

class Computer < Player
  def choose
    @move = [Rock.new, Paper.new, Scissors.new].sample
  end
end

class Move
  attr_reader :beats

  def >(other)
    beats.include?(other.to_s)
  end
  
  def to_s
    self.class.to_s.downcase
  end
  
end

class Rock < Move
  def initialize
    @beats = ['scissors']
  end
end

class Paper < Move
  def initialize
    @beats = ['rock']
  end
end

class Scissors < Move
  def initialize
    @beats = ['paper']
  end
end

class RPSGame
  attr_reader :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def play
    system 'clear'
    display_welcome_message
    human.choose
    computer.choose
    display_moves
    compare_moves
    display_goodbye_message
  end

  private

  def display_moves
    puts "You chose #{human.move}."
    puts "The computer chose #{computer.move}."
  end

  def compare_moves
    if human.move > computer.move
      puts "You won!"
    elsif computer.move > human.move
      puts "The computer won!"
    else
      puts "It ends in a tie!"
    end
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end
end

game = RPSGame.new
game.play
