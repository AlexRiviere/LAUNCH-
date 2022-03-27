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
=end


require 'pry'

class Clock
  
  def self.at(*times)
    self.new(times)
  end
  
  def initialize(times)
    if times.size == 2
      @hour, @minutes = times
    else
      @hour = times[0]
      @minutes = 0
    end
  end
  
  def to_s
    hour_format = @hour.to_s.length == 2 ? @hour : ('0' + @hour.to_s)
    minutes_format = @minutes.to_s.length == 2 ? @minutes : ('0' + @minutes.to_s)
    "#{hour_format}:#{minutes_format}"
  end
  
  def +(minutes)
    hours, minutes = minutes.divmod(60)
    @hour += hours 
    @minutes += minutes
    adjust_added_time
    Clock.at(@hour, @minutes)
  end
  
  def -(minutes)
    hours, minutes = minutes.divmod(60)
    @hour -= hours 
    @minutes -= minutes
    adjust_subtracted_time
    Clock.at(@hour, @minutes)
  end
  
  def ==(other)
    to_s == other.to_s
  end
  
  private
  
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
