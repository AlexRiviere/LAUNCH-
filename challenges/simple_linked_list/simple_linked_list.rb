=begin
mini pedac
in
out
requirements
algo

reminders - liberal use of PEDAC
          - this is test prep, do it with the same intenisty and thoroughness
          - circular learning to load problem into brain
          - don't rush but don't wait
requirements (get from tests and names of tests) instance or class methods?
- write a simple linked list solution
- singly linked list
- each element contains data and a 'next' field pointing to the next element in the list of 
elements
- used to rep sequences or push down stacks, LIFO
- create a singly linked list, whose elements may contain a range of data (1..10)
- provide functions to `: reverse the linked list
                        : convert a linked list to and from an array



initial thoughts/questions
- class name Element
- readers for datum and next
- #initialize takes 1 or 2 arguments (first is first, second is default to nil)
  - @datum instance variable is set to the first arg
  - @next instance variable set to the second
    - actually points to the object one index less than the current object
- #tail? returns boolean
  - return true if next == nil
  - its the tail if it is at index 0 in the linked list array

- class name SimpleLinkedList
- #initialize doesnt take any args
  - make some tupe of instance variable that will be the list 
  - @list = [] ??????
- #size 
  - right after instantiation, this should return 0
  - after we #push, it should return 1
- #empty? 
  - it should return true if its right after instantiation
  - after we push an element to the lsit, it should return false
- #push takes one argument
  - instantiates an Element object, passes in arg
  - There may have to be a way to now set the #nexxt_datum of the previous element on the list
  - adds the argument to the @list from the front of the array #shift
- #peek 
  - returns the datum of the last element on the list 
  - or nil if the list is empty
- #head
  - returns the most recently added (last index of the array)
- class method ::from_a() takes one argument, an array
  - but the object it returns wants access to all the instance methods, so we may just 
  instantiate an object, create the @list instance variable, use the array elements to 
  instantiate Element objects, and set their @datum and @next
- #to_a
  - returns the @list instance variable but integers, not objects
- #reverse
  - reverses the @list variable
Post-problem questions
what you liked from 2 other student's solutions
=end
require 'pry'
class Element
  
  attr_reader :datum
  attr_accessor :next
  
  def initialize(datum, next_datum=nil)
    @datum = datum
    @next = next_datum
  end
  
  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  
  attr_reader :list
  
  def self.from_a(arr)
    new_list = SimpleLinkedList.new
    return new_list if arr.nil?
    arr.reverse.each do |int|
      new_list.push(int)
    end
    new_list
  end
  
  def initialize
    @list = []
  end
  
  def size
    list.size
  end
  
  def empty?
    list.empty?
  end
  
  def push(int)
    element = Element.new(int)
    element.next = head unless empty?
    list << element
  end
  
  def peek
    empty? ? nil : head.datum
  end
  
  def head
    list[-1]
  end
  
  def pop
    list.pop.datum
  end
  
  def to_a
    list.dup.map(&:datum).reverse
  end
  
  def reverse
    SimpleLinkedList.from_a(self.to_a.reverse)
  end
end
