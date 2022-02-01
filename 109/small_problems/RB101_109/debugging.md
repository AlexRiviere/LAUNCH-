#Countdown

--original
'''
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'
'''

This program starts by defining the method decrease between lines 5-7. Decrease accepts one arguments represented by the parameter counter. In the method definition block, 
the assignment operator . -= is called on counter with an argument of 1, decrementing counter. 
Then another local variable counter is assigned to the integer 10 on line 9. Then the times method is called with an argument of 10. In the method invocation block, the 
puts method is called with the argument counter. Then decrease is called with the argument counter. This method prints 10 10 times because local variable defined outside of method definitions are not accessible to operations inside of method definitions unless
they are passed in as arguments. In this case, the variable counter is passed in but integers are immutable, so when the assignment operator is called on the argument
counter, it is not mutating the caller, it is making a copy in another place. That is why the counter 10 never changes. 

#solution
  #this method is uneeded
def decrease(counter)
  
end

counter = 10

10.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'

Instead of decrementing the counter variable inside the method definition block, I decremented it inside the method invocation block which has access to variables 
initialized outside of its block. this decrements and reassigns the counter variable for every iteration of the times method.  

























#HEY YOU!

'''
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
'''

Explanation
The method shout_out_to is defined between lines 71-75, it takes one argument represented 
by the method parameter name. 

On line 77, the method shout_out_to is invoked with an argument of 'you'.

On line 72, the method chars is called on the method paramater
name, argument 'you'. This returns an array of each individual character in 'you', then the 
method each is called, which iterates through the array. In the method invocation block of each
c is assigned as the block parameter, and as it iterates through each character in name, 
each char will be passed into the block as c. On each iteration, the destructive method
upcase! is called on the char that was passed in, this mutates the caller. In this case, the
caller is the array returned from calling chars on name, so it is NOT mutating name. The
original array is returned from the each method invocation. So, when the final line of the method invocation is
run, it puts HEY in all caps but name is unchanged. 


#My Solution

'''

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') 
'''

THe method shout_out_to is defined between the lines 101 and 105. On line 107, the shout_out_to method
is called with the argument 'you'. When the method is invoked, name (the parameter) is reassigned
to the return value of calling the chars method on name, then calling the each method on every character
that is separated due to the chars method. On each iteration of the each method, the characters are 
converted to uppercase destructively. Then join is called on the return value of the chars method being called
on the name method, this joins the, now uppercase, characters into one string. When name is called in the puts
method on line 104, it is the new uppercase name. 









#Valid Series?

'''
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3
end
'''

The method valid_series? is defined between lines 129 - 134. IT takes one argument, an array
represented by the method parameter nums. The first line returns false if when the sums 
method is invoked on the nums array, the return value does not equal 47. This is an explicit
return, meaning that if the statement returns true, the method will return false without
executing any of the lines below in teh method definition block. If the first condition 
is passed, then the variable odd count is assigned to the return value of themethod count
called on the nums array with a block parameter of n, n representing each number in the numsa
array. Each iteration will call the method odd? on the number, testing
whether the number is in fact odd. If it is true, the count method will add this instance
to the total odd number count. Lastly, the odd_count variable is compared to the integer 3, 
Having already passed teh first condition, it will return false if false and true if true. 





























#Reverse Sentence

'''
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
'''


The issue with this method occurs on line 186. words[i] returns a string, and reversed_words
points to an array. These different data types cannot be coerced into being combined, 
one needs to either be appended or prepended to the other. 




'''
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
'''

The method reverse_sentence is defined between lines 206 and 217. It takes one arguemnt, a
string which is represented by the method parameter sentece. The variable words is assigned
to the return value of calling split with an argument of ' ' on sentence. Then the variable
reversed_words is assigned to an empty array. A counter variable i is assigned to 0. Then,
a while loop is initiated, with a break conidtion of i becoming equal to or greater than the
return value from the length method beign called on the words array. 
In the while loop, the unshift method is called on the reversed_words array with an argument
of words[i], which returns the value at the i index of the words array. By using unshift, 
the returned value is prepended to the reverse_words array, pushing whatever is first, 
further towrads the back. Then i is incremented with an assignment operator. 
when i reaches the length of the words array, execution breaks out of the loop, and the join 
method is called on the reverse_words array with an argument of " ", returnign an array with 
all of the words in the reverse_words array with a space in between them 












#Card Deck

'''
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.map do |card|
    score(card)
  end.sum
end

puts sum
'''

The variable cards is assigned to the array containing card and face card values. the variable deck is assigned to a hash with suits as symbol keys and clones of the cards array as values. This way, when
we shuffle and pop off a card from this, we dont mutate the caller and pop the card from all teh suits. The method score is defined between lines 258 - 266. It takes one argument, represented by  the
method parameter 'card'. A case statement is run on the value of card, it will return the number if the card is not a face card, and return the corresponding value if it is. 
Player_cards is assigned to an empty array. Then an array of the keys of the deck hash is iterated through with the each method. Teh variable cards is assigned to calling using each suit as an agrguement
when calling the deck hash to retrieve the clone of the original cards array. Shuffle is called, then pop, that return value is appended to the player_cards array. 4 times. 
Sum is assigned to the return value of the reduce method being invoked on the deck hash. The sum is initialized to 0. The method invocation block parameters are assigned to sum, nothing becaus ewe dont needs
the keys, and remaining_cards which references the values. On remaining_cards, the map method is invoked because the face cards are not numbers and can't be summed, each card is input into the score method as 
an arguemnt. At this point, sum = 0. Then the same thing is done to get the final score, sum is operator re-assigned the return value of calling sum on the previous method invocation of map on remaining_cards.
then teh puts method is invoked with an argument of sum. 








































'''
def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)
'''

todo is assigned to an array of strings with different tasks. done is assigned to an array
of different tasks that have been completed. On line 353, the move method is invoked with 
arguments of 2, todo and done. On lines 342 - 346, the method move is defined and passed in 
three arguments. A base case is defined, the recursion will break if n is equal to zero. 
if not, it will continue and remove the first element from the from_array and appended it to
the to array, then it will recursively invoke itself with the same arguments except the frist
one will be decremented by one. 









































'''
def neutralize(sentence)
  words = sentence.split(' ')
  words.reject!{ |word| negative?(word) }
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
'''

puts is invoked with an arguemtn of themethod neutralize being invoked with a string argument. The neutralize method is defined between lines 405 - 409, it accepts on argument,  a string represented by the 
method parameter sentence. in the method definition block, the variable words is assigned to the return value of the split method being invoked on variable sentence with an argument of ' '. Then, the 
array words is iterated over when the destructive method reject! is invoked. The method invocation parameter is set to word, on each iteration, the method negative? is invoked with an argument of 'word' and
a boolean is returned, if true, the word is deleted, and kept if false. 

The negative? method is defined between lines 411 - 417, it accepts one argument, a string, represented by the method definition parameter word. Then the include method is called on an array of negative
words with an arguemnt of word , which was the argument of the method. a boolean is returned. 

Back in the neutralize method, the join method is then called on the mutated words array with an argument of ' ' which will separate each element in teh array. This is what is returned  and printed from the last
line















































'''

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp
  
  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
'''

The password variable is assigned to nil. The method set_password is defined between lines 
483-487. It does not accept any arguments. The puts method is invoked with an argument of a 
string asking the user what they want their new password to be, then the variable new_password
is assigned to the value of calling the gets method which accepts the user's input, then the chomp
method is called to remove the new line from the end of the string. new_password is returned
from the method. 

The method verify_password is defined between lines 489 - 499. It accepts one arguement, 
password is the method defniition parameter. it invokes the puts method
with an argument of a string with a login welcome message and prompts the user for their password. 
The user's input, without the new line at the end is assigned to the variable input. 
A conditional test is run, if what the user input matches the password argument passed in, 
puts will be invoked with a string argument welcoming the user, if it doesnt match, puts will 
be invoked with a string argument of failure. 

a conditional test is run to check is password is truthy, or more specifically, not falsey. 
If it is, which it will be because we assigned password to nil, password will be re-assigned 
to the return value of calling the set_password method (which returns the new password). 

The verify_password is invoked on line 505 and passed in an argument of password which will be
compared to the user's input. 










































```
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

     end
  end
end

guess_number(10, 3)

```
The method valid_integer? is defined between lines 572 - 574. It accepts one argument, represented by the method definition parameter string. It is an equality comparison between the argument string and  
the to_i method invoked on string, and the method to_s called on the return value. This will return a boolean value. 
The method (main method) guess_number is defined between lines 576 - 603. It accepts two integer arguments represented by the method definition parameters max_number and max_attempts. Winning_number is assigned
to the return value of teh method sample being invoked on teh return value of the method to_a being invoked on a range that goes (inclusively) bewteen 1 and the arguemnet max_number. The variable attempts
is assigned to the integer zero. The loop method is invoked, in the loop block , the variable attempts is operator re-assigned to be incremented by one. An if condition of attempts being greater than max attempts
is tested, if true, the loop will break. The variable input is assigned to nil. A conditional until statement will test whetehr the input is a valid integer, it will print make a guess until the input is valid. 
guess is set to the return value of the method to_i being invoked on the input. A conditional if statement tests whether the variable guess is equal to the winning_number, with an equality comparison. 
If its true, a winning message is printed to the console, and the loop breaks, if not a message of bigger or smaller is printed  based on a comparison of the guess and the winning number. 
On line 603, teh method guess_number is invoked with the two integer arguemnts, 10 and 3. 











































```
def tfidf(term, document, documents)
  result = tf(term, document) * idf(term, documents)
  format("%.1f", result)
end

def tf(term, document)
  document.split(/[\s-]/).count { |word| word.downcase == term }
end

def idf(term, documents)
  number_of_documents = documents.length
  number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }

  #Math.log(Rational(number_of_documents, number_of_documents_with_term))
  Math.log(number_of_documents / number_of_documents_with_term.to_f)
  
end
```
The tfidf method is defined between lines 659-662, it takes three arguments, a string, a longer
string, and an array of strings. The variable result is assigned to the return value of
multiplying the return value of invoking the method tf with arguments of the term and document. 
by the return value of invoking the method idf with term and documents arguments. 
It then formats the result to have only 1 decimal place. 

The tf method takes two arguments. it calls the split method with a regex on document, returning 
an array, then counts how many times the term appears in the array and returns the value. 

the idf method assignes the number_of_documents variable to the return value of the length methodb
being called on the documents array. 
Then the number_of_documents_with_term variable is set to the return value of the method count 
being called on the documents array, a block parameter d represents each document, it is passed
as an arguemnt, along with the term, to the tf method and a test is run to see if the count
is higher than 0, if so it will add 1 to the return value of count. 
Then math log is invoked with an arguemnt of the evaluation of number_of_documents divided by number_of_documents_with_term
which is then called with the to_f method, making sure that the return value of the evaluation
is a floating point number. 










































#What's wrong with the output?
 ```
 arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

```

The variable arr is assigned to an array of numeric strings. Then the method p is invoked with
and argument of the method sort being invoked on the variable arr. Initially, without the 
parentheses, the p was binding more closely with arr.sort than arr.sort was binding with 
its block. This led to the arr not being sort properly. With the parentheses, arr is 
forced to bind with sort and its block more closely than p. In the block, x and y are defined
as block parameters, their return values from having the to_i method called on them are compared
with the spaceship operator. This returns -1 if y is smaller, 1 if y is bigger, and 0 if
they are equal. This sorts the numeric string from greatest to least, then p prints the array. 

