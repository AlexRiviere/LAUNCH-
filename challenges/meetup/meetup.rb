=begin
mini pedac
ins
outs
requirements
algo

reminders - liberal use of PEDAC
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements (get from tests and names of tests) instance or class methods?
- construct objects that represent a meetup date
- each object takes a month number (1-12) and a year
- your object should be able to get teh date from ^^ this info
- descriptors: first, second, third, fourth, fifth, last, teenth
  - teenth wednesday is the wednesday whose date is between 13-19
  - fifth day of the month may not happen every month
- days of the week are given by strings
- case is not important in any given string

- class Meetup
- #iniitalize - 2 int args, (year, month)
  - set the two instance variables
  
  
####day - 2 args(day, schedule)
  - both need to be case insensitive
  
in- 2 args(day, schedule), also access to year and month instance variables
outs- a date object with the specified date or nil if that date does not exist
requirements  - given 2 args a weekday and a schedule
              - return the day that that meeting would happen, or nil if that day does not 
              exist
algo
  - ideal, a list of the days that fit the first 3 decsriptors, 
  - helper method that takes schedule and list, returns day
  
  - CONSTANT weekday codes, hash with keys as weekdays, values as nums
  - array_of_days = empty array 
  - current_day = Starting at the first of the given month of the given year  
  - while we are still in that month
    - test to see whether that day is the given weekday value from the constant
      #cwday (returns 1-7)
      - if it is, add the #day number to the arr_of_days array
      - go to the #next_day
  - pass array_of_days and schedule to find_nth_day
  
#### Helper method- find_nth_day
in - a list of days, a schedule
out - a Date object that uses the year, month instance variables and the day that matches 
  the schedule or nil if it doesnt
requirements

algo
  -day_number =  case for schedule
  - first = 0 idx
  - second = 1 idx
  - third = 2 idx
  - fourth = 3 idx
  - fifth = 4 inx
  - last = -1 idx
  - teenth = return the num from the array that is between 13-19
  
  
initial thoughts/questions
Post-problem questions
what you liked from 2 other student's solutions
- Date.civil(year, month, -1) will give you the last day of that month
- using the schedule as a starting point
- #find returns the value of the first item it finds, but if you use break with an arg
it returns the arg
- automated weekday? by making it a symbol, thn used #send
=end

require 'date'
require 'pry'


class Meetup
  
  attr_reader :schedule
  
  WEEKDAY_NUMS = {  'monday' => 1,
                    'tuesday' => 2,
                    'wednesday' => 3,
                    'thursday' => 4,
                    'friday' => 5,
                    'saturday' => 6,
                    'sunday' => 7
  }
  
  def initialize(year, month)
    @year = year
    @month = month
  end
  
  def day(week_day, schedule)
    array_of_days = []
    current_day = Date.civil(@year, @month, 1)

    while current_day.month == @month
      array_of_days << current_day.day if current_day.cwday == WEEKDAY_NUMS[week_day.downcase] 
      current_day = current_day.next_day
    end

    find_nth_day(array_of_days, schedule.downcase)
  end
  
  private
  
  def find_nth_day(array_of_days, schedule)
    day_number =  case schedule
                  when 'first' then array_of_days[0]
                  when 'second' then array_of_days[1]
                  when 'third' then array_of_days[2]
                  when 'fourth' then array_of_days[3]
                  when 'fifth' then array_of_days[4]
                  when 'last' then array_of_days.last
                  when 'teenth' then array_of_days.find { |num| num.between?(13, 19) }
                  end

    day_number.nil? ? nil : Date.civil(@year, @month, day_number)
  end
end



meetup = Meetup.new(2016, 12)
p meetup.day('Wednesday', 'teenth')