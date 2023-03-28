# class Greeter
#     def greet
#       puts "What is your name?"
#       name = gets.chomp
#       puts "Hello, #{name}!"
#     end
#   end

# Greeter.new.greet

# ➜  ch5_unit_testing_terminal_IO git:(main) ✗ cd lib
# ➜  lib git:(main) ✗ ruby greeter.rb 
# What is your name?
# Shilpa
# Hello, Shilpa!

#### THIS HAS NO ARGUMENT AND NO RETURN VALUE 

  ##############


# class Greeter

#   def greet
#     Kernel.puts "What is your name?"
#     name = Kernel.gets.chomp
#     Kernel.puts "Hello, #{name}!"
#   end

# end

# Greeter.new.greet

# Kernel is a special object in Ruby that provides a number of special methods like gets and puts. 
# You've not seen it until now because it is usually implicit — Ruby adds in the Kernel. behind the scenes.

# Now that we have Kernel in there, we can create a double for it. We're going to call it @io because it's a bit more descriptive.

class Greeter
  def initialize(terminal_io)
    @terminal_io = terminal_io
  end

  def greet
    @terminal_io.puts "What is your name?"
    name = @terminal_io.gets.chomp
    @terminal_io.puts "Hello, #{name}!"
  end
end


# # If we want to run `Greeter` for real, we do it like this
# # greeter = Greeter.new(Kernel)
# # greeter.greet