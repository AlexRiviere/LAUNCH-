=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- create a clock that is independent of state
- be able to add minutes to and subtract minutes from the time
  - represented by a given clock object
  - two clock objects that represent the same time should be equal to one another
  - no built-in date or time functionality

initial thoughts/questions/look at tests and names of tests
- class name is Clock
- calling #to_s prints 'HH:MM' format 
- initialize takes one or two integer arguments
  - if one, set the hour, then minutes to 0
  - if two, set the hour and the minutes respectively
  - @hours variable
  - @minutes variable
  - use a splat operator and test the size of the array 
  
  
- #+ adds the argument in minutes
  - changes the time vaariabel 
  
- explicit - given a numer in minutes, adjust the time by subtracting that many minutes  
- #- subtracts the argument in minutes
  - changes the time variable
  - subtract
  - adjust times
    - adjust hour
      - 

Post-problem questions
what you liked from 2 other student's solutions
- one call to format
- everything from minutes
- checked minutes and hours for other #==
- use default for minutes
- break it down to minutes first, hours are just afterthought

=end


require 'pry'

class Clock
  
  def self.at(*times)
    new(times)
  end
  
  def initialize(times)
      @hour, @minutes = times
      @minutes = 0 if @minutes.nil?
  end
  
  def to_s
    "#{format("%02i", @hour)}:#{format("%02i", @minutes)}"
  end
  
  def +(minutes)
    hours, minutes = minutes.divmod(60)
    add_or_sub_time(hours, minutes)
    adjust_added_time
    create_new_object
  end
  
  def -(minutes)
    hours, minutes = minutes.divmod(60).map { |x| x * -1 }
    add_or_sub_time(hours, minutes)
    adjust_subtracted_time
    create_new_object
  end
  
  def ==(other)
    to_s == other.to_s
  end
  
  private
  
  def create_new_object
    Clock.at(@hour, @minutes)
  end

  def add_or_sub_time(hours, minutes)
    @hour += hours 
    @minutes += minutes
  end


  def adjust_subtracted_time
    adjust_subtracted_minutes
    adjust_subtracted_hours
  end
  
  def adjust_subtracted_minutes
    while @minutes < 0
      @minutes += 60
      @hour -= 1
    end
  end
  
  def adjust_subtracted_hours
    while @hour < 0
      @hour += 24
    end
  end
  
  def adjust_added_time
    adjust_added_hours
    adjust_added_minutes
  end
  
  def adjust_added_hours
    while @hour >= 24
      @hour -= 24
    end
  end
  
  def adjust_added_minutes
    while @minutes > 60
      @minutes -= 60
    end
  end
end
