# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def done?
    @todos.all? { |todo| todo.done? }
  end

  def <<(todo)
    raise TypeError, 'can only add Todo objects' unless todo.instance_of? Todo

    @todos << todo
  end
  alias_method :add, :<<

  def item_at(idx)
    @todos.fetch(idx)
  end

  def mark_done_at(idx)
    item_at(idx).done!
  end

  def mark_undone_at(idx)
    item_at(idx).undone!
  end

  def done!
    @todos.each_index do |idx|
      mark_done_at(idx)
    end
  end

  def remove_at(idx)
    @todos.delete(item_at(idx))
  end

  def to_s
    text = "---- #{title} ----\n"
    text << @todos.map(&:to_s).join("\n")
    text
  end

  def to_a
    @todos.clone
  end

  def each
    @todos.each do |todo|
      yield(todo)
    end
    self
  end

  def select
    list = TodoList.new(title)
    each do |todo|
      list.add(todo) if yield(todo)
    end
    list
  end

  # returns first Todo by title, or nil if no match
  def find_by_title(title)
    select { |todo| todo.title == title }.first
  end

  def all_done
    select { |todo| todo.done? }
  end

  def all_not_done
    select { |todo| !todo.done? }
  end

  def mark_done(title)
    find_by_title(title) && find_by_title(title).done!
  end

  def mark_all_done
    each { |todo| todo.done! }
  end

  def mark_all_undone
    each { |todo| todo.undone! }
  end
end


































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


# class TodoList
#   attr_accessor :title

#   def initialize(title)
#     @title = title
#     @todos = []
#   end
  
#   def add(todo)
#     if todo.class == Todo
#       todos << todo
#     else
#       raise TypeError, "Can only add Todo Objects"
#     end
#   end
  
#   alias_method :<<, :add 
  
#   def to_a
#     todos.clone
#   end
  
#   def size
#     todos.size
#   end
  
#   def first
#     todos.first
#   end
  
#   def last
#     todos.last
#   end
  
#   def done?
#     todos.all? { |todo| todo.done?}
#   end
  
#   def item_at(idx)
#     todos.fetch(idx)
#   end
  
#   def mark_done_at(idx)
#     item_at(idx).done!
#   end
  
#   def mark_undone_at(idx)
#     item_at(idx).undone!
#   end
  
#   def done!
#     todos.each { |todo| todo.done!}
#   end
  
#   def shift
#     todos.shift
#   end
  
#   def pop
#     todos.pop
#   end
  
#   def remove_at(idx)
#     todos.fetch(idx)
#     todos.delete_at(idx)
#   end
  
#   def to_s
#     puts "---- Today's Todos ----"
#     todos.each { |todo| puts todo.to_s}
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
# # list.add(1)                     # raises TypeError with message "Can only add Todo objects"

# # <<
# # same behavior as add

# # ---- Interrogating the list -----

# # size
# p list.size                       # returns 3

# # first
# p list.first                      # returns todo1, which is the first item in the list

# # last
# p list.last                       # returns todo3, which is the last item in the list

# #to_a
# p list.to_a                      # returns an array of all items in the list

# #done?
# p list.done?                     # returns true if all todos in the list are done, otherwise false

# # ---- Retrieving an item in the list ----

# # item_at
# # list.item_at                    # raises ArgumentError
# p list.item_at(1)                 # returns 2nd item in list (zero based index)
# # list.item_at(100)               # raises IndexError

# # # ---- Marking items in the list -----

# # mark_done_at
# # list.mark_done_at               # raises ArgumentError
# list.mark_done_at(1)            # marks the 2nd item as done
# # list.mark_done_at(100)          # raises IndexError

# # mark_undone_at
# # list.mark_undone_at             # raises ArgumentError
# list.mark_undone_at(1)          # marks the 2nd item as not done,
# # list.mark_undone_at(100)        # raises IndexError

# # done!
# list.done!                      # marks all items as done
# # p list.to_a

# # # ---- Deleting from the list -----

# # shift
# # p list.shift                      # removes and returns the first item in list

# # pop
# # p list.pop                        # removes and returns the last item in list
# # p list.to_a
# # remove_at
# # list.remove_at                  # raises ArgumentError
# # list.remove_at(1)               # removes and returns the 2nd item
# # p list.to_a
# # list.remove_at(100)             # raises IndexError

# # # ---- Outputting the list -----

# # to_s
# # list.to_s                      # returns string representation of the list

# # # ---- Today's Todos ----
# # # [ ] Buy milk
# # # [ ] Clean room
# # # [ ] Go to gym

# # # or, if any todos are done

# # # ---- Today's Todos ----
# # # [ ] Buy milk
# # # [X] Clean room
# # # [ ] Go to gym







# # LS

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

#   def size
#     @todos.size
#   end

#   def first
#     @todos.first
#   end

#   def last
#     @todos.last
#   end

#   def shift
#     @todos.shift
#   end

#   def pop
#     @todos.pop
#   end

#   def done?
#     @todos.all? { |todo| todo.done? }
#   end

#   def <<(todo)
#     raise TypeError, 'can only add Todo objects' unless todo.instance_of? Todo

#     @todos << todo
#   end
#   alias_method :add, :<<

#   def item_at(idx)
#     @todos.fetch(idx)
#   end

#   def mark_done_at(idx)
#     item_at(idx).done!
#   end

#   def mark_undone_at(idx)
#     item_at(idx).undone!
#   end

#   def done!
#     @todos.each_index do |idx|
#       mark_done_at(idx)
#     end
#   end

#   def remove_at(idx)
#     @todos.delete(item_at(idx))
#   end

#   def to_s
#     text = "---- #{title} ----\n"
#     text << @todos.map(&:to_s).join("\n")
#     text
#   end

#   def to_a
#     @todos.clone
#   end
  
#   def each
#     @todos.each do |todo|
#       yield(todo)
#     end
#     self
#   end
  
#   def select
#     list = TodoList.new(title)
#     each do |todo|
#       list.add(todo) if yield(todo)
#     end
#     list
#   end
  
#   def find_by_title(str)
#     select do |todo|
#       todo.title.downcase == str.downcase
#     end.first
#   end
  
#   def all_done
#     select do |todo|
#       todo.done?
#     end
#   end
  
#   def all_not_done
#     select do |todo|
#       !todo.done?
#     end
#   end
  
#   def mark_done(str)
#     find_by_title(str) && find_by_title(str).done!
#   end
  
#   def mark_all_done
#     each do |todo|
#       todo.done!
#     end
#   end
  
#   def mark_all_undone
#     each do |todo|
#       todo.undone!
#     end
#   end
# end



# todo1 = Todo.new("Buy milk")
# todo2 = Todo.new("Clean room")
# todo3 = Todo.new("Go to gym")

# list = TodoList.new("Today's Todos")
# list.add(todo1)
# list.add(todo2)
# list.add(todo3)

# list.mark_all_done
# list.mark_all_undone

# puts list.inspect