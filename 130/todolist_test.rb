require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!
require 'simplecov'
SimpleCov.start

require_relative 'todo'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end
  
  def test_size
    assert_equal(3, @list.size)
  end
  
  def test_first
    assert_equal(@todo1, @list.first)
  end
  
  def test_last
    assert_equal(@todo3, @list.last)
  end
  
  def test_shift
    assert_equal(@todo1, @list.shift)
    assert_equal([@todo2, @todo3], @list.to_a)
  end
  
  def test_pop
    assert_equal(@todo3, @list.pop)
    assert_equal([@todo1, @todo2], @list.to_a)
  end
  
  def test_done?
    assert_equal(false, @list.done?)
    @list.mark_all_done
    assert_equal(true, @list.done?)
  end
  
  def test_add_raise_error
    assert_raises(TypeError) do
      @list.add("hello")
    end
  end
  
  def test_shovel
    @todo4 = Todo.new("laundry")
    @list << @todo4
    assert_equal([@todo1, @todo2, @todo3, @todo4], @list.to_a)
  end
  
  def test_add_alias_shovel
    new_todo = Todo.new("Feed the cat")
    @list.add(new_todo)
    @todos << new_todo
  end
  
  def test_item_at
    assert_equal(@todo1, @list.item_at(0))
    assert_raises(IndexError) {@list.item_at(4)}
  end
  
  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(4)}
    @list.mark_done_at(0)
    assert_equal(true, @todo1.done)
  end
  
  def test_mark_undone_at
  assert_raises(IndexError) { @list.mark_done_at(100) }
  @list.mark_all_done
  @list.mark_undone_at(0)
  assert_equal(false, @todo1.done?)
  assert_equal(true, @todo2.done?)
  assert_equal(true, @todo3.done?)
  end
  
  def test_done!
    @list.done!
    assert_equal(true, @todo1.done)
    assert_equal(true, @todo2.done)
    assert_equal(true, @todo3.done)
  end
  
  def test_remove_at
    assert_raises(IndexError) { @list.remove_at(100)}
    assert_equal(@todo1, @list.remove_at(0))
    assert_equal([@todo2, @todo3], @list.to_a)
  end
  
  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end
  
  def test_to_s_done
    @list.mark_done_at(0)
    
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT
  
    assert_equal(output, @list.to_s)
  end
  
  def test_to_s_all_done
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT
    @list.mark_all_done
    assert_equal(output, @list.to_s)
  end
  
  def test_each_iterates
    result = []
    @list.each { |todo| result << todo}
    assert_equal([@todo1, @todo2, @todo3], result)
  end
  
  def test_each_returns_calling_object
    assert_same(@list, @list.each{puts ""})
  end
  
  def test_select
    refute_same(@list, @list.select{ |todo| nil})
    @list.mark_done_at(0)
    result = @list.select { |todo| todo.done? }
    assert_equal([@todo1], result.to_a)
  end
end