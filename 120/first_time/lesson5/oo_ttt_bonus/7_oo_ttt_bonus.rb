

require 'yaml'
PROMPTS = YAML.load_file("tictactoe.yml")

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def get_unmarked_square_in_line_with(marker1, count1, marker2, count2)
    # return the square you are looking for or return false
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line).map(&:marker)
      if squares.count(marker1) == count1 && squares.count(marker2) == count2
        free_space_idx = @squares.values_at(*line).map(&:marker).index(' ')
        return line[free_space_idx]
      end
    end
    false
  end

  def which_square_to_defend?(marker)
    get_unmarked_square_in_line_with(marker, 2, ' ', 1)
  end

  def which_square_to_attack?(marker)
    get_unmarked_square_in_line_with(marker, 2, ' ', 1)
  end

  def is_5_open?
    unmarked_keys.include?(5)
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end
  # rubocop: disable Metrics/AbcSize
  # rubocop: disable Metrics/MethodLength

  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop: enable Metrics/AbcSize
  # rubocop: enable Metrics/MethodLength

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :score, :name

  def initialize
    @score = 0
    @name = nil
  end
end

class Human < Player
  
  def choose_marker
    marker = nil
    loop do
      puts PROMPTS["which_marker"]
      marker = gets.chomp.upcase
      break if /[A-Z0-9]/ =~ marker && marker.size == 1
      puts PROMPTS["invalid_marker"]
    end
    
    marker
  end
end

class Computer < Player
  
  
  def choose_marker(human_marker)
    # only two options for the computer
    human_marker == 'X' ? 'O' : 'X'
  end
end

class TTTGame
  GAME_WINNING_SCORE = 5

  attr_reader :board, :human, :computer, :human_marker, :computer_marker

  def initialize
    @board = Board.new
    @human = Human.new
    @computer = Computer.new
    @first_to_move = nil
    @current_marker = nil
    @human_marker = nil
    @computer_marker = nil
  end

  def play
    clear
    display_welcome_message
    set_names
    set_human_marker
    set_computer_marker
    who_goes_first?
    main_game
    display_goodbye_message
  end

  private

  def main_game
    loop do
      display_board
      player_move
      display_result
      increment_player_score
      someone_won_the_whole_game? ? display_final_score : display_current_score
      break unless play_again?
      reset
      display_play_again_message
    end
  end

  def set_names
    loop do
      puts PROMPTS["name"]
      human.name = gets.chomp
      break unless human.name.empty?
      puts PROMPTS["invalid_name"]
    end

    computer.name = ['R2D2', 'C3PO', 'Hal'].sample
  end

  def who_goes_first?
    answer = nil
    loop do
      puts "Who would you like to go first? (me/#{computer.name})"
      answer = gets.chomp.downcase
      break if ['me', computer.name.downcase].include? answer
      puts "Sorry, you must enter 'me' or '#{computer.name}'"
    end

    @first_to_move = answer == 'me' ? @human_marker : @computer_marker
    @current_marker = @first_to_move
  end
  
  def set_human_marker
    @human_marker = human.choose_marker
  end
  
  def set_computer_marker
    @computer_marker = computer.choose_marker(@human_marker)
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_welcome_message
    puts PROMPTS["welcome_message"]
    puts ""
  end

  def display_goodbye_message
    puts PROMPTS["goodbye_message"]
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_turn?
    @current_marker == @human_marker
  end

  def display_board
    puts "You're a #{@human_marker}. Computer is a #{@computer_marker}."
    puts ""
    board.draw
    puts ""
  end

  def joinor(arr, delimiter=', ', word='or')
    case arr.size
    when 0 then ''
    when 1 then arr.first
    when 2 then arr.join(" #{word} ")
    else
      arr[-1] = "#{word} #{arr.last}"
      arr.join(delimiter)
    end
  end

  def human_moves
    puts "Choose a square: #{joinor(board.unmarked_keys)}: "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts PROMPTS["invalid_square"]
    end

    board[square] = @human_marker
  end

  def computer_moves
    if board.which_square_to_attack?(@computer_marker)
      board[board.which_square_to_attack?(@computer_marker)] = @computer_marker
    elsif board.which_square_to_defend?(@human_marker)
      board[board.which_square_to_defend?(@human_marker)] = @computer_marker
    elsif board.is_5_open?
      board[5] = @computer_marker
    else
      board[board.unmarked_keys.sample] = @computer_marker
    end
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = @computer_marker
    else
      computer_moves
      @current_marker = @human_marker
    end
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when @human_marker
      puts "#{human.name} won this round!"
    when @computer_marker
      puts "#{computer.name} won this round!"
    else
      puts PROMPTS["tie_message"]
    end
  end

  def increment_player_score
    case board.winning_marker
    when @human_marker
      human.score += 1
    when @computer_marker
      computer.score += 1
    end
  end

  def display_current_score
    puts PROMPTS["current_score"]
    puts "#{human.name}: #{human.score} to #{computer.name}: #{computer.score}"
  end

  def display_final_score
    puts PROMPTS["final_score"]
    puts "#{human.name}: #{human.score} to #{computer.name}: #{computer.score}"
    display_winner
  end

  def display_winner
    if human.score == GAME_WINNING_SCORE
      puts "#{human.name} won the whole game!"
    elsif computer.score == GAME_WINNING_SCORE
      puts "#{computer.name} won the whole game!"
    end
    reset_scores
  end

  def reset_scores
    human.score = 0
    computer.score = 0
  end

  def someone_won_the_whole_game?
    human.score == GAME_WINNING_SCORE || computer.score == GAME_WINNING_SCORE
  end

  def play_again?
    answer = nil
    loop do
      puts PROMPTS["play_again?"]
      answer = gets.chomp.downcase
      break if %w(y yes n no).include? answer
      puts PROMPTS["invalid_answer"]
    end

    answer == 'y' || answer == 'yes'
  end

  def clear
    system "clear"
  end

  def reset
    board.reset
    @current_marker = @first_to_move
    clear
  end

  def display_play_again_message
    puts PROMPTS["play_again_message"]
    puts ""
  end
end

game = TTTGame.new
game.play
