#generic greeting part 1

# class Cat
  
#   def self.generic_greeting
#     puts "Hello I'm a cat"
#   end
# end

# Cat.generic_greeting
# kitty = Cat.new
# kitty.class.generic_greeting




#hello chloe

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
  
#   def rename(new_name)
#     self.name = name
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.name
# kitty.rename('Chloe')
# p kitty.name




#identify yourself
# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
  
#   def identify
#     self
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.identify







#generic greeting part 2

# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
  
#   def self.generic_greeting
#     puts "Hello from all of us cats"
#   end
  
#   def personal_greeting
#     puts "hello from #{self.name}"
#   end
# end

# kitty = Cat.new('Sophie')

# Cat.generic_greeting
# kitty.personal_greeting






#counting cats

# class Cat
#   @@total_cats = 0
  
#   def initialize
#     @@total_cats += 1
#   end
  
#   def self.total
#     @@total_cats
#   end
# end


# kitty1 = Cat.new
# kitty2 = Cat.new

# p Cat.total











#colorful cat

# class Cat
#   COLOR = 'purple'
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
  
#   def greet
#     puts "Hello my name is #{name} and I'm a #{COLOR} cat"
#   end
    
# end

# kitty = Cat.new('Sophie')
# kitty.greet







#identify yourself part 2

# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#     "I'm #{name}"
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty












#public secret

# class Person
  
#   attr_accessor :secret
  
#   # def initialize 
#   #   @secret = ''
#   # end
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# puts person1.secret





#private secret

# class Person
#   attr_writer :secret
  
#   def share_secret
#     puts secret
#   end

#   private

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret













#protected secret
# class Person
#   attr_writer :secret
  
#   def compare_secret(other_person)
#     secret == other_person.secret
#   end

#   protected

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'

# person2 = Person.new
# person2.secret = 'Shh.. this is a different secret!'

# puts person1.compare_secret(person2)