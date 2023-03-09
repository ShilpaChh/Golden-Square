# Getting Visibility 

#Final Answer without print statements:
def factorial(n)
    product = 1
    while n > 1
      product *= n
      n -= 1 
    end
    puts "Factorial of the given number is: #{product}"
  end

puts factorial(5)

  #### Debugging stages:

# def factorial(n)
#     #n += 1 # add n starting from 1 so we do get 120 as correct answer
#     product = 1
#      p "p starts with: #{product}" 
#     #while n > 1 change 0 to 1
#     while n > 1
#       p "loops starts with the value of n we gave: #{n}" #=> so as we gave n as 5 in puts, n is starting at 5
#      ## n -= 1 # subtract 1 from n ### move this line after product *= n
#     ###  p "we subtract 1 from n to get new n: #{n}"
#     puts "we multiply product (#{product}) by n (#{n})"
#       product *= n
#       n -= 1 
#     #  p "we subtract 1 from n to get new n: #{n}"
#     ###  puts "we multiply product (#{product}) by n (#{n})"
#       puts "we get new product as: (#{product})"
#     end
#     puts "we finally return product: (#{product})"
#     product
#   end

# puts factorial(5)

# def factorial(n)
#     product = 1
#     p "at the start product is #{product}"
#     while n > 0
#       n -= 1
#       p "we multiply #{product} by #{n}"
#       product *= n
#       p "we get #{product}"
#     end
#     product
#   end