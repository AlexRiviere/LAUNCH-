def method
  p block_given?
end

method

# level_1 = "outer-most variable"

# [1, 2, 3].each do |n|                   
#   level_2 = "inner variable"

#   ['a', 'b', 'c'].each do |n2|            
#     level_3 = "inner-most variable"

#     # 1. WHICH level_X variables are accessible here?
#   end

#   # 2. WHICH level_X variables are accessible here?

# end

# # 3. WHICH level_X variables are accessible here?



# # This class represents a todo item and its associated
# # data: name and description. There's also a "done"
# # flag to show whether this todo item is done.

# class Todo
#   DONE_MARKER = 'X'
#   UNDONE_MARKER = ' '

#   attr_accessor :title, :description, :done

#   def initialize(title, description='')
#     @title = title
#     @description = description
#     @done = false
#   end

#   def done!
#     self.done = true
#   end

#   def done?
#     done
#   end

#   def undone!
#     self.done = false
#   end

#   def to_s
#     "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
#   end

#   def ==(otherTodo)
#     title == otherTodo.title &&
#       description == otherTodo.description &&
#       done == otherTodo.done
#   end
# end



# # This class represents a collection of Todo objects.
# # You can perform typical collection-oriented actions
# # on a TodoList object, including iteration and selection.

# class TodoList
#   attr_accessor :title

#   def initialize(title)
#     @title = title
#     @todos = []
#   end
  
#   alias add << 
  
#   def add(todo)
#     todos << todo
#   end
  
#   def to_a
#     todos
#   end
  
#   private
  
#   attr_reader :todos
# end





# # given
# todo1 = Todo.new("Buy milk")
# todo2 = Todo.new("Clean room")
# todo3 = Todo.new("Go to gym")
# list = TodoList.new("Today's Todos")

# # ---- Adding to the list -----

# # add
# list.add(todo1)                 # adds todo1 to end of list, returns list
# list.add(todo2)                 # adds todo2 to end of list, returns list
# list.add(todo3)                 # adds todo3 to end of list, returns list
# list.add(1)                     # raises TypeError with message "Can only add Todo objects"



# # <<
# # same behavior as add

# # ---- Interrogating the list -----

# # size
# list.size                       # returns 3

# # first
# list.first                      # returns todo1, which is the first item in the list

# # last
# list.last                       # returns todo3, which is the last item in the list

# #to_a
# list.to_a                      # returns an array of all items in the list

# #done?
# list.done?                     # returns true if all todos in the list are done, otherwise false

# # ---- Retrieving an item in the list ----

# # item_at
# list.item_at                    # raises ArgumentError
# list.item_at(1)                 # returns 2nd item in list (zero based index)
# list.item_at(100)               # raises IndexError

# # ---- Marking items in the list -----

# # mark_done_at
# list.mark_done_at               # raises ArgumentError
# list.mark_done_at(1)            # marks the 2nd item as done
# list.mark_done_at(100)          # raises IndexError

# # mark_undone_at
# list.mark_undone_at             # raises ArgumentError
# list.mark_undone_at(1)          # marks the 2nd item as not done,
# list.mark_undone_at(100)        # raises IndexError

# # done!
# list.done!                      # marks all items as done

# # ---- Deleting from the list -----

# # shift
# list.shift                      # removes and returns the first item in list

# # pop
# list.pop                        # removes and returns the last item in list

# # remove_at
# list.remove_at                  # raises ArgumentError
# list.remove_at(1)               # removes and returns the 2nd item
# list.remove_at(100)             # raises IndexError

# # ---- Outputting the list -----

# # to_s
# list.to_s                      # returns string representation of the list

# # ---- Today's Todos ----
# # [ ] Buy milk
# # [ ] Clean room
# # [ ] Go to gym

# # or, if any todos are done

# # ---- Today's Todos ----
# # [ ] Buy milk
# # [X] Clean room
# # [ ] Go to gym











#reduce method iterates through the array, yields 2 args to the block, first accumulator
# second current element
# return value of the block is assigned to the accumulator object
# can initialize the accumulator to a default value

# def reduce(arr, acc=0)
#   counter = 0
  
#   while counter < arr.size
#     current_elem = arr[counter]
#     acc += yield(acc, current_elem)    
#     counter += 1
#   end
  
#   acc
# end



# def reduce(array, default=nil)
#   counter = 0
#   if default
#     accumulator = default  
#   else
#     accumulator = array[0]
#     counter += 1
#   end
  

#   while counter < array.size
#     accumulator = yield(accumulator, array[counter])
#     counter += 1
#   end

#   accumulator
# end

# array = [1, 2, 3, 4, 5]

# reduce(array) { |acc, num| acc + num }                    # => 15
# reduce(array, 10) { |acc, num| acc + num }                # => 25
# reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

# reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
# reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']






# #write a select method
# # select takes a block, yields each element to the block, if true included in returned array
# # if false, not included

# def select(arr)
#   result = []
  
#   counter = 0
#   while counter < arr.size
#     result << arr[counter] if yield(arr[counter])
#     counter += 1
#   end
  
#   result  
# end

# array = [1, 2, 3, 4, 5]

# p select(array) { |num| num.odd? }      # => [1, 3, 5]
# p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
# p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true
 

#write our own each method

# iterates over given array, passing each element to the block, running the block, then
# returning the given argument as it was given

# def each(arr)
#   counter = 0
  
#   while counter < arr.size
#     yield(arr[counter])
#     counter += 1
#   end
  
#   arr
# end


# each([1, 2, 3, 4, 5]) do |num|
#   puts num
# end

# 1
# 2
# 3
# 4
# 5
# => [1, 2, 3, 4, 5]


# def times(int)
#   0.upto(int-1) { |number| yield(number) }
# end

# def times(number)
#   counter = 0
#   while counter < number do 
#     yield(counter)
#     counter += 1
#   end
  
#   number
# end


# times(5) do |num|
#   puts num
# end

# times(5) do |num|
#   puts num
# end

# 5.times do |num|
#   puts num
# end


# def sequence 
#   counter = 0
#   Proc.new { counter += 1}
# end

# s1 = sequence
# p s1.call
# p s1.call
# p s1.call
# puts

# s2 = sequence
# p s2.call
# p s1.call
# p s2.call

# def for_each_in(arr)
#   arr.each do |element|   
#     total = results[-1] + element
#     results.push(total)
#   end
# end

# arr = [1, 2, 3, 4, 5]
# results = [0]

# for_each_in(arr)
  
# p results

# p results

# def test2(block)
#   puts "hello"
#   block.call
#   puts "good-bye"
# end

# def test(&block)
#   puts "1"
#   test2(block)
#   puts "2"
# end

# test { |prefix| puts "xyz" }

# def test(&block)
#   puts "What's &block #{block}"
# end

# test { sleep(1) }

# def time_it
#   time_before = Time.now
#   yield
#   time_after = Time.now
  
#   puts "It took #{time_after - time_before} seconds."
# end

# p time_it {"hello world"}

# def compare(str)
#   puts "Before: #{str}"
#   after = yield(str)
#   puts "After: #{after}"
# end

# compare('hello') { |word| "nothing to do with anything" }

# def test 
#   yield(1)
# end

# test do |num1, num2|
#   puts "#{num1} #{num2}"
# end

# def test
#   yield(1, 2)
# end

# test { |num| puts num }


# def increment(number)
#   if block_given?
#     yield(number + 1)
#   end
#   number + 1
# end

# increment(5) do |num|
#   puts num
# end


# def say(words)
#   yield if block_given?
#   puts "> " + words
# end

# say("hi there") do 
#   system 'clear'
# end


# def echo_with_yield(str)
#   yield if block_given?
#   str
# end

# p echo_with_yield("hello")
# p echo_with_yield("hello") {puts "ass"}


# def echo(str)
#   str
# end

# echo 
# echo("hello!")
# echo("hello!", "world")

# echo { puts "world"}
# echo ("hello") { puts "world"}
# echo("hello", "world") {puts "world"}


# def hello
#   "hello"
# end

# p hello {puts "hi"}