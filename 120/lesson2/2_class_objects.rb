#1

# class Person
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new('bob')
# p bob.name                  # => 'bob'
# bob.name = 'Robert'
# p bob.name                  # => 'Robert'









#2

# class Person
#   attr_reader :first_name
#   attr_accessor :last_name
  
  
#   def initialize(name)
#     @first_name = name
#     @last_name = ''
#   end
  
#   def name
#     @first_name + ' ' + @last_name
#   end
# end

# bob = Person.new('Robert')
# p bob.name                  # => 'Robert'
# p bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# p bob.name                  # => 'Robert Smith'











#3

# class Person
#   attr_accessor :first_name, :last_name
  
  
#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

  
#   def name=(full_name)
#     parse_full_name(full_name)
#   end

    
#   def name
#     "#{first_name} #{last_name}".strip
#   end
  
#   private
  
#   def parse_full_name(full_name)
#     names = full_name.split
#     self.first_name = names.first
#     self.last_name = names.size > 1 ? names[1] : ' '
#   end
# end

# bob = Person.new('Robert')
# p bob.name                  # => 'Robert'
# p bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# p bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# p bob.first_name            # => 'John'
# p bob.last_name             # => 'Adams'











#4

# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     parse_full_name(full_name)
#   end
  
#   def same_name?(other_person)
#     return "error same name" if self.name == other_person.name
#   end

#   private

#   def parse_full_name(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')

# p bob.same_name?(rob)








# class Person
#   attr_accessor :first_name, :last_name
  
#   @@list_of_names = []
  
#   def initialize(full_name)
#     parse_full_name(full_name)
    
#     if @@list_of_names.include?(name)
#       puts 'name already exists'
#     else
#       @@list_of_names << name
#     end 
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     parse_full_name(full_name)
#   end
  
#   def to_s
#     name
#   end

#   private

#   def parse_full_name(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')

# bob = Person.new("Robert Smith")
# puts "The person's name is: #{bob}"