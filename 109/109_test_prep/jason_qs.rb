#warm-up
#a

def method(str)
  str += "holiday season"
end

a = "it's the"
puts a.object_id
b = method(a)
puts a  # =>  what will this  print?
puts b  # =>  what will this  print?
puts b.object # =>  will this match the call to object id on a two lines above?

#b

def method(str)
  str << "IS COMING TO TOWN"
end

a = "santa claus"
puts a.object_id
b = method(a)
puts a  # =>  what will this  print?
puts b  # =>  what will this  print?
puts b.object # =>  will this match the call to object id on a two lines above?


#when the puts method is called and the  object that local variable a is referencing is 
#passed in as an argument, the object is bound to local variable str, the method definition 
#parameter, then str calls the String#<< method and passes in the stirng object with value
#"IS COMING TO TOWN", which mutates the object that both str and a are pointing to by appending
#that string to the end of the object. 
#a prints santa is coming to town
#b prints santa is coming to town
#the object ids will match beecause they are both referencing the same obejct


#1 mutating/non-mutating

# a = [2]
# puts a.object_id

# b = [1, 3]
# c = [a, b]

# c[0][0] = 5

# p c # =>  what will this print and why?
# p a # =>  what object is a referencing? 
# puts a.object_id # => Will this match the first object_id that is printed?

# #answer
# # =>  [[5], [1, 3]]
# # =>  a is pointing to [5]
# # =>  the object ids will match because we changed the element inside the array not the array itself
# # =>  the line c[0][0] = 5 is most important. The first part (c[0]) is a reference to the first element 



#2 mutating/non-mutating

a = 'ahhhh'
puts a.object_id

b = ['brow', 'ball']
c = [a, b]

c[0] = 10

p c # =>  what will this print and why?
p a # =>  what will this print?
puts a.object_id # => will this match the object id above?

#answer
# =>  [10, ["brow", "ball"]]
# =>  "ahhhh"
# =>  object id is still the same






#3 mutating/non-mutating


def change_it_up(str)
  str << '-freaking'
  str += '-table'
end

table = 'big'
puts table.object_id

new_table = change_it_up(table)
puts new_table  # =>  what will this print?

puts table.object_id  # =>  will this match the call above?
puts new_table.object_id  # =>  will this match the table object id?
puts table  # =>  what will this print?




#answer
# =>  'big-freaking-table'
# =>  yes, table will still be pointing to the same object, but it will be mutated to 'big-freaking'
# =>  no, new_table was reassigned in the second line of the method
# =>  'big-freaking'





#4 mutating/non-mutating



def change_it_up(str)
  str += '-table'
  str << '-freaking'
end

table = 'big'
puts table.object_id

new_table = change_it_up(table)
puts new_table  # =>  what will this print?

puts table.object_id  # =>  will this match the call above?
puts new_table.object_id  # =>  will this match the table object id?
puts table  # =>  what will this print?




#answer
# =>  new_table will print 'big-freaking-table'
# =>  table object id will match the one before
# =>  new_table was reassigned so it wont match table id
# =>  table will still be 'big'









#5 mutating/non-mutating

def make_snowman(str)
  str = str << 'OO'  
end

snow = 'O'

snowman = make_snowman(snow)

puts snow # =>  what will this print?
puts snowman  # =>  what will this print?
puts snow.object_id 
puts snowman.object_id  # =>  will these two match?






#6 scoping

#Question: Consider the code below. Explain why line `8` returns `7` rather than `12`? What concept does this demonstrate?

```ruby
num = 12

3.times do |_|
    num = 7
    break
end

num #=> 7
```





#7

# =>  How many variables are in play by the end of these lines?

a = "hello"
b = a
c = b.upcase

d = c






-------------------------------------------------------------------------

num = 5
3.times do |num|
  num = 11
end
puts num
# What is the output and return value on line 255?