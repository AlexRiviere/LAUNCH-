=begin

# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	given an array of integers
              - return a string of the integers joined conditionally
              - depending on how many of them there are 

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
  - join the index 0 to second to last with delimiter
  - join the last two with delimiter and word

=end
require "pry"
def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 1
    arr[0].to_s
  when 2
    arr[0..1].join(" #{word} ")
  when (3..)
    arr[0...-2].join(delimiter) +"#{delimiter}"+ arr[-2..-1].join("#{delimiter}#{word} ")
  end
end



p joinor([1, 2])                   == "1 or 2"
p joinor([1, 2, 3])                == "1, 2, or 3"
p joinor([1, 2, 3], '; ')          == "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   == "1, 2, and 3"