```
def get_letter(avg)
  case avg
  when (0   ... 60) then "F"
  when (60  ... 70) then "D"
  when (70  ... 80) then "C"
  when (80  ... 90) then "B"
  when (90  .. 100) then "A"
  end
end


def get_grade(score1, score2, score3)
  average = [score1, score2, score3].sum / 3
  get_letter(average)
end
```

The get_grade method is defined on lines 13 - 16, it takes three integer parameters. 
On line 14, we are initializing the local variable 'average' and assigning to it the return value of
the sum of all three score arguments divided by three. Then we call the get_letter method and pass
in the object that local variable average is referencing. 

The helper method get_letter is defined between lines 2 - 10, it takes one integer parameter. 
We use a case statement and pass in the local variable avg as an argument. Each line tests whether
the avg falls in between its range and when the test returns true, the condition passes and the
corresponding letter is returned from the method since it is the last line evaluated. 

THe letter is ultimately what is returned from the main method as well since it is the last
line executed. 







```

def buy_fruit(list)
  list.map! do |item|
    [item[0]] * item[1]
  end.flatten!
end
```

The method buy_fruit is defined between lines 40-44. It accepts one argument, a nested array. 
The method starts by calling the destructive Array#map! method on the list variable, defining
the block parameter as item. This will represent each inner array. The first element will be
inside of square brackets, then multiplied by the second item which is the count. This returns
a nested array with the specified number of fruit strings. Then we call the destructive
Array#flatten! method to get rid of the nested array and flatten the array inplace. This method
is destructive. 


```
def anagrams(word_arr)
  uniq_words = word_arr.map { |word| word.chars.sort.join }.uniq
  uniq_words.each_with_object([]) do |word, result|
    result << word_arr.select { |anag| word.chars.sort == anag.chars.sort }
  end.each { |arr| p arr }
end

```

The method anagrams is defined between lines 57-62, it takes one argument an array of strings. 
On line 58, we are initializing local variable uniq_words and assigning to it the return value
from calling the map method on the variable word_arr, sorting the letters in each word, then 
calling the uniq method to get only the words we need. Then we call each with object on the
word list, iterating over each word, selecting matches for that word, and appending those
arrays to the result array which is iterated over and printed with the each method. 