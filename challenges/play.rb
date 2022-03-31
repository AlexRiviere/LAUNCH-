# proc = Proc.new {p a}

# proc.call

# def a 
#   "hello"
# end

# proc = Proc.new {p a}


# def a 
#   "hello"
# end
# proc.call

# def a
#   puts "pre block"
#   yield
#   puts "post block"
# end

# a { return 5 }


# def call_this
#   yield(2)
# end

# to_s = proc {|x| x.to_i}
# to_i = proc {|x| x.to_s}

# p call_this(&to_s) # => returns 2
# p call_this(&to_i) # => returns "2"

def some_method(block)
  block_given? # we want this to return `true`
end

bloc = proc { puts "hi" } # do not alter this code

p some_method(1, &bloc)