=begin
mini pedac
in
out
requirements
algo

reminders - liberal use of PEDAC
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements (get from prob description, tests and names of tests) instance or class methods?
- class Player
- #initialize can take 1 or two args (name, health=50)
  - capitalize name
  - default health to 50
- #health accessor method
= #to_s if alive, alive message w health
  - else, dead message
- #boost
  - raise error if health is less than 0
  - otherwise, raise health by 20
- #hurt
  - - raise error if health is less than 0
  - otherwise, hurt health by 10
- #dead? 
  - return true if health < 0
initial thoughts/questions
Post-problem questions
minitest and rubocop
=end


