[1, 2, 3].select do |num|
  num * 3
end
# What is the return value of select?

The select method is called on teh array [1, 2, 3]. 
It is passed the block delimited by do...end. The select method
passes each element of the array to the block, runs the block, and
evaluates the return value. When the select method is finished iterating, 
it returns a new array containing elements that, when passed to the block, returned
a value that evaluated to true. In this case, on line 2 the Integer#* method is called on
the local variable num which points to the element passed into the block, and passes in 3 as
an argument. All return values will evaluate to true, so the array that select returns after it
is finished iterating is a new array containing [1, 2, 3]. 

























[] small problems - advanced 1 - transpose 3x3 - further exploration






#good problems and examples for live coding
[] adv1 - egyptian fractions, just the unegyptian method
[] debugging -Countdown - explanation of code snippet for Countdown


#good examples of explanations of code snippets
[] debugging -Countdown - explanation of code snippet for Countdown










11/28/2021 
https://launchschool.medium.com/launch-school-live-session-beginning-ruby-c6432494ab34
First video of stumbling block, these are notes

-syntactical sugar sometimes makes it hard to understand ruby
-in method invocation, the parentheses are optional
-how would we describe the code ** puts 'hello'** -- this is a method invocation
-if you have a variable and a method w the same name and invoke it later ni the code
-   ruby will run the variable, if you want method, run w parentheses
-

-local var scoping
- new var initialized inside  ablock even a loop, is not accessible outside the loop
- 


11/29/2021
https://launchschool.medium.com/live-session-beginning-ruby-part-2-f87d821ce926
second video

-<< is a destructive method invocation




11/29
https://launchschool.medium.com/live-session-beginning-ruby-part-3-61180782f721
third video

-there are always exceptions to rules
-whaht is a collection? String, array or hash





--------------------------------------------------------------------------------

```
num = 5

3.times do |num|
  num = 11
end

puts num

# What is the output and return value on line 255?

```
This problem is showing us variable scoping rules. A variable initialized outside of the 
block is accessible inside of the block. Local variable num is initialized and has integer object 5 assigned to it. 
Then,  because of the variable scoping rules, inside the block the local variable num can be reassigned
to point to integer object 11 inside of the block. 

On the last line, the puts method is called and the object that local variable num is pointing to 
is printed which is 11, that line then returns nil because the puts method always returns nil. 











```


a = school
if a
  puts "core"
else
  puts "capstone"
end
# What does this code output?

```

This problem is showing conditional evaluation. The if statement will evaluate 
whatever is to the right of it to a boolean. All values besides nil and false evaluate to true. 
When the if statement evaluates the object that local variable a is referencing, which is `school`
, it will evaluate to true and print 'core'. This code will never evaluate to false because `school` 
will always evaluate to true. 