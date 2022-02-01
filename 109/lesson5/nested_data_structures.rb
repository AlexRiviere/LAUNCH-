arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2 << 'd'

p arr2 # => ["a", "B", "c"]
p arr1 # => ["a", "B", "c"]

arr2[1].upcase!

p arr2 # => ["a", "B", "c"]
p arr1 # => ["a", "B", "c"]