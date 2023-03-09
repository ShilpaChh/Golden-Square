# File: factorial.rb

def factorial(n)
  product = 1
  #binding.irb
  while n > 1
   binding.irb # Mystery new line!
    product *= n
    n -= 1
    #binding.irb
  end
  #binding.irb
  p "Factorial of the given number is: #{product}"
end

p factorial(5)


# def factorial(n)
#     product = 1
#     binding.irb
#     while n > 0
#      binding.irb # Mystery new line!
#       n -= 1
#       binding.irb
#       product *= n
#       binding.irb
#     end
#     binding.irb
#     product
#   end
  
#   p factorial(5)