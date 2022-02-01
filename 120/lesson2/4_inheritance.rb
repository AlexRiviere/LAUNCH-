#1

# class Dog
#   def speak
#     'bark!'
#   end
  
#   def swim
#     'swimming!'
#   end
# end

# class Bulldog < Dog
#   def swim
#     "Can't swim!"
#   end
# end

# teddy = Dog.new
# puts teddy.speak
# puts teddy.swim







#2

class Animal

  
  def run
    'running!'
  end
  
  def jump
    'jumping!'
  end
end

class Dog < Animal
  def speak 
    'bark!'
  end
  
  def swim
    'swimming!'
  end
  
  def fetch
    'fetching!'
  end
  
end

class Bulldog < Dog
  def swim
    "Can't swim!"
  end
end

class Cat < Animal
  def speak
    'meow!'
  end
end

kitty = Cat.new
puts kitty.speak
puts kitty.jump
dog = Dog.new
puts dog.swim