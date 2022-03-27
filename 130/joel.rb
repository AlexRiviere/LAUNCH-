=begin
Conceptual
#1 Explain the difference between using an & in an method argument vs using it in a method parameter.
#2 What are the similarities and differences between Procs and blocks?
#3 Explain the mechanism that happens when you use the symbol to proc shortcut.
#4 What is the SEAT approach? Give an example for each letter
#5 What is the difference between assert_same and assert_equal?
=end

#Code

##########################################################################
#1 binding


# explain the output and the difference 

# ===EXAMPLE 1===
a = 1
b = 2
my_proc = Proc.new do
  p a
  p b
end
my_proc.call
c = 3


# this works, and outputs the values of a and b

# ===EXAMPLE 2===

my_proc = Proc.new do
  p c
end
my_proc.call
c = 3 

# => undefined local variable or method `c' for main:Object (NameError)

# this doesn't work, because c was not in scope (and so not part of the proc's binding), 
# when the proc was created


# ===EXAMPLE 3===

my_proc = Proc.new do |num|
  p num
end

c = 3
my_proc.call(c)

# this works, but only because we are passing in c as an argument to 
# the  Proc.call method, *not* because c is part of the proc's binding


##########################################################################

#2 write the method so that it prints the specified output
  # - first for an implicit block
  # - second for an explicit block
# follow up qs
# - what is the advantage of allowing methods to take blocks?


look('giraffe') { |x| x.upcase }



#output
# "Looking at this GIRAFFE is hurting my neck."


##########################################################################

#assertions


class Surfer
  
  attr_accessor :name
  
  def initialize(name, wave_height)
    @name = name
    @max_wave_height = wave_height
  end
  
  def tube_ride
    puts "IN THE TUBE"
  end
  
  def thats_too_big(wave_height)
    raise ArgumentError if wave_height > @max_wave_height
  end
end

#Write a test that verifies that the #name getter method is working
#Write a test that verifies that the #tube_ride instance method is working
#Write a test that verifies that the #thats_too_big instance method is working