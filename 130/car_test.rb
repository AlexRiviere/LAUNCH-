require "minitest/autorun"

class Car
  attr_accessor :wheels, :name

  def initialize
    @wheels = 4
  end
  
  def ==(other)
    other.is_a?(Car) && name == other.name
  end
end

class CarTest < MiniTest::Test
  def test_value_equality
    car1 = Car.new
    car2 = Car.new

    car1.name = "Kim"
    car2.name = "Kim"

    assert_equal(car1, car2)
    assert_same(car1, car2)
  end
end







# require 'minitest/autorun'

# require_relative 'car'

# class CarTest < MiniTest::Test
  
#   def setup
#     @car = Car.new
#   end
  
#   def test_car_exists
#     assert(@car)
#   end
  
#   def test_wheels
#     assert_equal(4, @car.wheels)
#   end
  
#   def test_name_is_nil
#     assert_nil(@car.name)
#   end
  
#   def test_raise_initialize_with_arg
#     assert_raises(ArgumentError) do 
#       Car.new(name: "Joey")
#     end
#   end
  
#   def test_instance_of_car
#     assert_instance_of(Car, @car)
#   end
  
#   def test_includes_car
#     arr = [1, 2, 3]
#     arr << @car
    
#     assert_includes(arr, @car)
#   end
# end

# require 'minitest/autorun'
# require 'minitest/reporters'
# Minitest::Reporters.use!
# require_relative 'car'

# class CarTest < MiniTest::Test
#   def test_wheels
#     car = Car.new
#     assert_equal(4, car.wheels)
#   end
  
#   def test_car_exists
#     car = Car.new
#     assert(car)
#   end
  
#   def test_name_is_nil
#     car = Car.new
#     assert_nil(car.name)
#   end
  
#   def test_assert_initialize_with_arg
#     assert_raises(ArgumentError) do
#       car = Car.new("joey")
#     end
#   end
  
#   def test_instance_of_car
#     car = Car.new
#     assert_instance_of(Car, car)
#   end
  
#   def test_includes_car
#     car = Car.new
#     arr = [1, 2, 3]
#     arr << car
    
#     assert_includes(arr, car)
#   end
# end