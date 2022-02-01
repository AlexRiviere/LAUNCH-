# hsh = {1 => 'one', 2 => 'two', 3 => 'three'}

# p (hsh.map {|k, v| })






# Question: Consider the code below. Explain why line `8` returns `7` rather than `12`? What concept does this demonstrate?

# ```ruby
# num = 12

# 3.times do |_|
#     num = 7
#     break
# end

# num #=> 7
# ```
# ```

# ***This code demonstrates the concept of local variable scoping rules in Ruby with respect to method invocation blocks. Specifically that local variables that are initialized in the outer scope are accessible in an inner scope.***

# The local variable `num` is initialized  on line `1` to the integer object `12` . On lines `3` to `6` the `Integer#times` method is invoked on the integer object `3` . The `do..end` structure following the `times` method invocation is a block which is passed to the `times` method as an argument . `do..end` blocks following a method invocation create a new scope for local variables known as inner scope. On line `4`  `num` is reassigned to the integer object `7`. This reassignment is possible because local variables initialized in an outer scope (outside the `do..end` block)  can be accessed and reassigned in an inner scope.




# Question: Consider the code below. Explain why line `8` returns `7` rather than `12`? What concept does this demonstrate?

# ```ruby
# num = 12

# 3.times do |_|
#     num = 7
#     break
# end

# num #=> 7
# ```
# ```

# This code demonstrates the concept of local variable scoping rules in Ruby with respect to method invocation blocks. Specifically that local variables that are initialized in the outer scope are accessible in an inner scope.

# The local variable `num` is initialized  on line `1` to the integer object `12` . On lines `3` to `6` the `Integer#times` method is invoked on the integer object `3` . The `do..end` structure following the `times` method invocation is a block which is passed to the `times` method as an argument . `do..end` blocks following a method invocation create a new scope for local variables known as inner scope. On line `4`  `num` is reassigned to the integer object `7`. This reassignment is possible because local variables initialized in an outer scope (outside the `do..end` block)  can be accessed and reassigned in an inner scope.

# what is the relationship between the variable word initialized on line 5 and the parameter str defined on line 1? With reference to this relationship, explain why line 8 in the below code prints hey rather than heyhey.

# ```ruby

# def repeat(str)
#   str * 2
# end

# word = "hey"
# repeat(word)

# puts word

# ```



# The variable word points to the strnig object with value `hello`. When the object referenced by word is passed into the repeat method as an argument, the local variable str is bound to the same string object that word references.r, which means they both point to the same object. 

# Line 8 prints hey because the object that word is pointing to was never mutated. In the method, the String#* method was called on the object that str was referenceing and returns `heyhey`which is a new stirng, without mutating the object that str points to.  










# Question: Consider the code below. Explain why line `8` returns `7` rather than `12`? What concept does this demonstrate?

# ```ruby
# num = 12

# 3.times do |_|
#     num = 7
#     break
# end

# num #=> 7
# ```
# ```

# This code demonstrates the concept of local variable scoping rules in Ruby with respect to method invocation blocks. Specifically that local variables that are initialized in the outer scope are accessible in an inner scope.

# The local variable `num` is initialized  on line `1` to the integer object `12` . On lines `3` to `6` the `Integer#times` method is invoked on the integer object `3` . The `do..end` structure following the `times` method invocation is a block which is passed to the `times` method as an argument . `do..end` blocks following a method invocation create a new scope for local variables known as inner scope. On line `4`  `num` is reassigned to the integer object `7`. This reassignment is possible because local variables initialized in an outer scope (outside the `do..end` block)  can be accessed and reassigned in an inner scope.

# what is the relationship between the variable word initialized on line 5 and the parameter str defined on line 1? With reference to this relationship, explain why line 8 in the below code prints hey rather than heyhey.

# ```ruby

# def repeat(str)
#   str * 2
# end

# word = "hey"
# repeat(word)

# puts word

# ```



# The variable word points to the strnig object with value `hello`. When the object referenced by word is passed into the repeat method as an argument, the local variable str is bound to the same string object that word references.r, which means they both point to the same object. 

# Line 8 prints hey because the object that word is pointing to was never mutated. In the method, the String#* method was called on the object that str was referenceing and returns `heyhey`which is a new stirng, without mutating the object that str points to.  


# [:, ].sort



# def some_method(str)
#   str = "HOLA"
#   str.downcase!
# end

# word = "HELLO"
# some_method(word)

# puts word





# a = "hello"
# b = a
# c = b.upcase

# d = c

# #how many are in play?


