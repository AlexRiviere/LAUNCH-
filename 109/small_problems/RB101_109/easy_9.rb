#Welcome Stranger

#problem
#		takes tw args, an array and hash, return a greeting w person's title
#			and occumpation
#input: array w three elements of a name, hash w title and occupation
#output: return a greeting with all three elements
#rules
#		explicit	-	the array will contain 2 or more elements
#								the hash will contain two keys
#data strucutre
#		string with string interpolation
#Algorithm
#		all in one string
#			join the name, access the hsh title and occupation

# def greetings(arr, hsh)
# 	"Hello, #{arr.join(" ")}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
# end




# #test cases
# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# #=> Hello, John Q Doe! Nice to have a Master Plumber around.









#Double Doubles
#problem
#		given integer, test for a double, if double return as is, if not, * 2
#input: integer
#output: integer with conditions
#rules
#		explicit	-	a double number is a number w an even # of digits, 
#								double num -- left-side digs are exactly the same as the
#									right side digs
#								if num is a double, return it
#								if not, return the num * 2
#data strucutre
#		array
#algorithm
#		turn num to string and get length , set to variable num of digs
#		if num of digs is even, turn num to string and split in half
#			mulitple assigning left and right 
#		if num has even num of digs
#		and if left side of num == right side of num 
#			return num
#		else
#			return num * 2

# def twice(int)
# 	num_of_digs = int.to_s.length
# 	left, right = int.to_s[0..(num_of_digs/2 - 1)], int.to_s[(num_of_digs/2)..] 
# 	if num_of_digs.even? && left == right
# 		return int 
# 	else
# 		return int * 2
# 	end
# end

# #test cases
# p twice(37) 		== 74
# p twice(44) 		== 44
# p twice(334433) == 668866
# p twice(444) 		== 888
# p twice(107) 		== 214
# p twice(103103) == 103103
# p twice(3333) 	== 3333
# p twice(7676) 	== 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) 			== 10









#Always Return Negative
#problem
#		given num as arg, if positive, return the neg if neg or 0, return orig
#input: integer
#ouptut: integer, pos or neg depending on the orig
#rules
#		explicit	-	if the argument is > 0, return the neg
#								if the arg is <= 0, return the orig
#data strucutre
#		control flow
#Algorithm
#		if num <= 0
#			num
#		else
#			num * -1

# def negative(int)
# 	if int <= 0
# 		int
# 	else
# 		-int
# 	end
# end

# def negative(int)
# 	return -int if int > 0
# 	int
# end

# #test cases
# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby







#Counting Up
#problem
#		given integer arg, return array of arr int in sequence between 1 
#			and the arg
#input: integer
#output: array of integers
#rules
#		explicit	-	arg will always be greater tahn 0
#data structure
#		array/ range
#algorithm
#		create a range from 1 to int, turn range to array

# def sequence(int)
# 	(1..int).to_a
# end

# #test cases
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]








#Uppercase Check
#problem
#		given string, return true if ALL alphabetic char are uppercase,
#			false if not
#input: str
#ouptut: boolean
#rules
#		explicit	-	if all alphabetic char are uppercase, return true
#								ignore non-alphabetic char
#		implicit	-	if empty str, return true
#data structure
#		array
#algorithm
#		split string into array
#		iterate over chars in array
#		check to see if each char is equal to the uppercase version of itself

# def uppercase?(str)
# 	str.split.all? {|char| char == char.upcase}
# end


# #test cases
# p uppercase?('t') 					== false
# p uppercase?('T') 					== true
# p uppercase?('Four Score') 	== false
# p uppercase?('FOUR SCORE') 	== true
# p uppercase?('4SCORE!') 		== true
# p uppercase?('') 						== true










#How long are you?
#problem
#		given str, return array with every word with space and length
#input: str
#output: arr
#rules
#		explicit	-	words in the string are separated by one space
#								any substring of non-space characters is a word
#		implicit	-	arr should have as many elements as words in the str
#data structure
#		array
#algorithm
#		split string at the spaces into an array
#		iterate over array
#			transform each element to include a space and the word length

# def word_lengths(str)
# 	str.split(" ").map do |word|
# 		"#{word} #{word.length}"
# 	end
# end

# #test cases

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []








#Name Swapping
#problem
#		given a str w fist name space and last name, return a string that is
#			last name comma first name
#input: str
#output: str in different order
#rules
#		explicit	-	return a string that has last name, comma, space, first name
#data strucutre
#		str interpolation
#Algorithm
#		split the string and save to arr variable
#		string interpolation to order the variables in the array

# def swap_name(str)
# 	arr = str.split(" ")
# 	"#{arr[1]}, #{arr[0]}"
# end

# #test cases
# p swap_name('Joe Roberts') == 'Roberts, Joe'




#Sequence Count
#problem
#		given two int, return arr w same num of elem as first arg, while
# 		values are multiples of second arg
#input: two int
#output: array w # of el as first arg, and all values mulitples of second
#rules
#		explicit	-	count arg (first) is >= 0
#								start arg (second) any int value
#								if count is 0, empty arr returned
#								if start is neg, move backward
#		implicit	-	arr is start * 1, *2, *3, *4 etc until it reaches size
#data structure
#		array
#algorithm
#		initiate empty arr
#		counter = start
#		loop 
#			add counter to arr
#			counter += counter
#			break if arr.size == first arg/count arg
#		return arr

# def sequence(count, start)
# 	arr = []
# 	return arr if count == 0
# 	counter = start
# 	loop do 
# 		arr << counter
# 		counter += start
# 		break if arr.size == count 
# 	end
# 	arr
# end



# #test cases
# p sequence(5, 1) 				#== [1, 2, 3, 4, 5]
# p sequence(4, -7) 			#== [-7, -14, -21, -28]
# p sequence(3, 0) 				#== [0, 0, 0]
# p sequence(0, 1000000) 	#== []


#another way

# def sequence(count, start)
# 	return [] if count == 0
# 	(1..count).to_a.map{|mult| start * mult} 
# end


# #test cases
# p sequence(5, 1) 				== [1, 2, 3, 4, 5]
# p sequence(4, -7) 			== [-7, -14, -21, -28]
# p sequence(3, 0) 				== [0, 0, 0]
# p sequence(0, 1000000) 	== []








#Grade book
#prob
#		given three grades, calc mean and return corresp letter grade
#input: three int
#output: str of uppercase letter representing the grade
#rules
#		explicit	-	if score is >= 90 or <= 100, 'A' etc
#								tested values are all between 0 and 100
#data structure
#		case statement/helper function
#algorithm
#		real func
#				calc mean
#		helper funciton with mean arg
#			case if mean between 90-100
#				"A"
#			if mean between 80-90
#				"B"
#			etc
#		real function
#		print return val

# def which_grade(mean)
# 	case mean
# 	when (90..100)
# 		"A"
# 	when (80..89)
# 		"B"
# 	when (70..79)
# 		"C"
# 	when (60..69)
# 		"D"
# 	when (0..59)
# 		"F"
# 	end 
# end


# def get_grade(gr1, gr2, gr3)
# 	mean = (gr1 + gr2 + gr3) / 3
# 	which_grade(mean)
# end


# #test cases
# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"











#Grocery List
#problem
#		given nested array, w fruits and quant, return array with num of times
#input: nested array
#output: array with duplicates specified in orig array
#data structure
#		array
#Algorithm
#		initiate new arr
#		iterate over sub-arr
#			add sub_arr[0] to arr for sub_arr[1] number of times
#		return arr

# def buy_fruit(arr)
# 	new_arr = []
# 	arr.each do |sub_arr|
# 		sub_arr[1].times {|i| new_arr << sub_arr[0]}
# 	end
# 	new_arr
# end



# #test cases
# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
# ["apples", "apples", "apples", "orange", "bananas","bananas"]









#Group Anagrams
#problem
#		given an array, return a nested array of anagrams
#input: array of words
#output: nested array of groups of words that are anagrams
#rules
#		explicit	-	anagrams are words that have the same exact letters in them
#data structure
#		arrays
#Algorithm
#		initiate new arr
#		iterate over arr, with index
#		iterate over arr with word at index
#			select and return array with matching anagrams
#				if word.chars.sort == other word.chars.sort
#			add return value from select to arr

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
	'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
	'flow', 'neon']

def all_anag(arr)
	new_arr = []

	arr.each_with_index do |word, idx|
		new_arr << arr.select do |othr|
			word.chars.sort == othr.chars.sort 
		end
	end
	new_arr.uniq 
end

#test case
p all_anag(words)