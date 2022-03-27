=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- program that manages factory floor
- when robots are created, they have no name
- the first time you boot them up, they are given a random name (capital letters and numbers)
- sometimes you need to reset a robot to factory settings, their name will be wiped 
  - next time you ask for the name, it will respond with a new name
- names must be random
- dont allow for the use of a name twice (class variable??)
- name has 2 capital letters, 3 numbers
- reset will reset the name
- random names, no sequences
- no collisions, no two names twice
- 
initial thoughts/questions
- class name is robot
- name getter method
- #reset method resets the name
- class variable that stores used names


- random_name
  - create an arary of 5 elements
  - iterate over each element (map). with_index
    - if the idx is 0 or 1
      - return a random capital letter 
        - rand(65..90).chr
    - else
      - return a random number
        - rand(0..9)
  - join the arary and return it


Post-problem questions
what you liked from 2 other student's solutions
- could have made a few private methods
- conditionally assigned name while the name was taken or it was uninitialized
- delete the name when 
=end

class Robot
  attr_reader :name 

  @@list_of_names = []
  
  def initialize
    reset
  end
  
  def random_name
    new_name = Array.new(5).map.with_index do |char, idx|
      idx > 1 ? rand(0..9) : rand(65..90).chr
    end.join
    
    name_taken?(new_name) ? random_name : new_name
  end
  
  def reset
    @name = random_name
    @@list_of_names << @name
  end
  
  def name_taken?(name)
    @@list_of_names.include?(name)
  end
end

alex = Robot.new
p alex.name
alex.reset
p alex.name