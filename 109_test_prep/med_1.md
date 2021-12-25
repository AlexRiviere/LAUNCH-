```
def rotate_array(arr)
  result = []
  arr.each_with_index do |el, idx|
    result << el unless idx == 0
  end
  result << arr[0]
end
```
The method rotate_array is defined between lines 2-8, it takes one parameter. On line 3, we
are initializing local variable result (whose scope is limited to this block) and assigning
to it an empty array object. Then we iterate over the elements in the given arr object by 
calling the method Enumerable#each_with_index. In the block, we append each element to our
result array except for the first element. When we are finished iterating, we append the element
at index 0 of the given arr to the result array, this returns the results array which serves
as the return value for our method as well since it is the last line executed. 




```
def rotate_array(arr)
  result = []
  arr.each_with_index do |el, idx|
    result << el unless idx == 0
  end
  result << arr[0]
end

def rotate_rightmost_digits(int, n)
  arr_of_str = int.to_s.chars  
  chunk_rotated = rotate_array(arr_of_str.pop(n))
  new_number = arr_of_str.concat(chunk_rotated)
  new_number.join.to_i
end
```

The method rotate_rightmost_digits is defined between lines 30 - 35 and accepts two parameters. 
On line 31, we are initializing arr_of_str and assigning to it the return value that comes from 
calling the method to_s on the int argument passed in, which converts the integer
into a string, then calling the chars method on the return value of that method call, which 
separates all the characters of the string into inidividual elements of an array. So arr_of_str
is pointing to an array of strings. On line 32, we are initializing local variable chunk_rotated
to point to the return value of calling the pop method on arr_of_str and passing in local variable
n as an argument. Then passing that return value to our helper method rotate_array, which returns
an array of strings rotated. On line 33, we are initializing a locaal variable new_number and
assigning to it the return value from the local variable arr_of_str calling the concat method
and passing in the local variable chunk_rotated as an argument. This returns an array of strings. 
On line 34, we are calling the join method on new_number then calling the to_i method on the return
value to convert it to an integer. Since it is the last line in the block executed, it gets returned. 