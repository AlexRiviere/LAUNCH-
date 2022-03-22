=begin
reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements
- write a program that will calculate the Hamming distance between two DNA strands
- a mutation is a mistake, causes ripple effects (rare one are beneficial)
- point mutation replaces one base with another at a single nucleotide
- Hamming distance- the count of the number of differences between two DNA strands
- only defined for sequences of equal length
- if you have two difference lengths, compute the Hamming distance over the shorter length

initial thoughts/questions
- maybe this will be two strings then we count the differences
- i can do this with the indexes and the #count method
- gotta iterate over the shorter one
- make sure you return the proper type of data 

- one class DNA
  - initialize
    - takes a string argument
    - can be an empty string
    
  - #hamming_distance
    - takes a string argument
    - can be empty
    - ignores extra from original strand when its longer
    - irgnores extra from other strand when its longer
    
- somehow, i will have to determine which one is longer and not iterate over any extra letters
- i dont see any errors raising in the test cases 

Post-problem questions
2 other student's solutions
- got the length by including both in an array and taking the min
- used inject to return the sum
=end

# class DNA
#   def initialize(og_strand)
#     @og_strand = og_strand
#   end
  
#   def hamming_distance(test_strand)
#     size = find_smaller_size(test_strand)
#     distance = 0
#     0.upto(size-1) { |idx| distance += 1 if differs?(test_strand, idx) }
#     distance
#   end
  
#   private
  
#   def differs?(test_strand, idx)
#     @og_strand[idx] != test_strand[idx]
#   end
  
#   def find_smaller_size(test_strand)
#     @og_strand.size <= test_strand.size ? @og_strand.size : test_strand.size
#   end
# end

# p (DNA.new('ACCAGGG').hamming_distance('ACTATGG'))