#1

# class BankAccount
#   attr_reader :balance

#   def initialize(starting_balance)
#     @balance = starting_balance
#   end

#   def positive_balance?
#     balance >= 0
#   end
# end

#Ben is right becuase he defined a `balance` getter method on line 2 which will return the 
#balance when called on line 9

#2

# class InvoiceEntry
#   attr_reader :quantity, :product_name

#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end

#   def update_quantity(updated_count)
#     # prevent negative quantities from being set
#     quantity = updated_count if updated_count >= 0
#   end
# end

#we dont have a setter method for `quantity`




#3
# class InvoiceEntry
#   attr_reader :quantity, :product_name

#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end

#   def update_quantity(updated_count)
#     quantity = updated_count if updated_count >= 0
#   end
# end




#4
# class Greeting
#   def greet(string)
#     puts string
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end  
# end 

# class Goodbye < Greeting
#   def bye
#     greeet("Goodbye")
#   end
# end

# hi = Hello.new
# hi.hi




#5
# class KrispyKreme
#   def initialize(filling_type, glazing)
#     if filling_type.nil? 
#       @filling_type = "Plain"
#     else
#       @filling_type = filling_type
#     end
#     @glazing = glazing
#   end
  
#   def to_s
#     if @glazing
#       "#{@filling_type} with #{@glazing}"
#     else
#       "#{@filling_type}"
#     end
#   end
# end

# donut1 = KrispyKreme.new(nil, nil)
# donut2 = KrispyKreme.new("Vanilla", nil)
# donut3 = KrispyKreme.new(nil, "sugar")
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# donut5 = KrispyKreme.new("Custard", "icing")

# puts donut1
#   # => "Plain"

# puts donut2
# #   # => "Vanilla"

# puts donut3
# #   # => "Plain with sugar"

# puts donut4
# #   # => "Plain with chocolate sprinkles"

# puts donut5
#   # => "Custard with icing"





#6

# class Computer
#   attr_accessor :template

#   def create_template
#     @template = "template 14231"
#   end

#   def show_template
#     template
#   end
# end


# class Computer
#   attr_accessor :template

#   def create_template
#     self.template = "template 14231"
#   end

#   def show_template
#     self.template
#   end
# end





#7

