# str1 = "something"
# str2 = "something"
# p str1 == str2

# int1 = 1
# int2 = 1
# p int1 == int2

# sym1 = :something
# sym2 = :something
# p sym1 == sym2



# str1 = "something"
# str2 = "something"
# str1_copy = str1

# # p str1 == str2
# p str1.equal? str2
# p str1.equal? str1_copy
# p str2.equal? str1_copy


# int1 = 1
# int2 = 1
# p int1 == int2

# sym1 = :something
# sym2 = :something
# p sym1 == sym2





class Person
  attr_accessor :name
  
  def ==(other)
    name == other.name
  end
end

bob = Person.new
bob.name = "bob"

bob2 = Person.new
bob2.name = "bob"

p bob == bob2

bob_copy = bob
p bob == bob_copy