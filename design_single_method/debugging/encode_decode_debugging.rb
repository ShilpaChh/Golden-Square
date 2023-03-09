 # Exercise 2

 #Final Solution:

 def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
     cipher[char.ord - 65]
    end
    return plaintext_chars.join
  end
  
puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
puts "theswiftfoxjumpedoverthelazydog"

#  def encode(plaintext, key)
#     #puts "cipher is: #{cipher = key.chars.uniq}"
#     cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
#     ###p key.chars.uniq
#     #p ('a'...'z').to_a ### shows no z is there in the array
#     #This implies that instead of three dots we need two dots for the range
#     ###p ('a'..'z').to_a 

#     #exit
#     #puts "plaintext is: #{plaintext.chars.map}"
#     ciphertext_chars = plaintext.chars.map do |char|
#         # puts "cipher.find_index(char): "
#         # puts cipher.find_index(char)
#         # p char
#         # p cipher
#       (65 + cipher.find_index(char)).chr
#     end
#     return ciphertext_chars.join
#   end
  
#   def decode(ciphertext, key)
#     cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
#     plaintext_chars = ciphertext.chars.map do |char|
#         ##p char # first letter is e which is 69. 
#        ## p char.ord
#        # #out_char =  cipher[(65 - char.ord).abs ]
#           # returns -4 => negative value so swap with char.ord and theh 65
#        ## p "should be h"
#         ##p "Actual is #{out_char}"
#         # Can't take away bigger num from small so swap char.ord take away 65
#         ##p char.ord # irb => a.ord is eq 97
#      ### cipher[char.ord - 65]
#      cipher[char.ord - 65]
#     end
#     #p plaintext_chars
#     return plaintext_chars.join #joins array to string
#   end
  
# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# puts "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

# puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# puts "theswiftfoxjumpedoverthelazydog"

  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"


#  def encode(plaintext, key)
#     cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#     ciphertext_chars = plaintext.chars.map do |char|
#       (65 + cipher.find_index(char)).chr
#     end
#     return ciphertext_chars.join
#   end
  
#   def decode(ciphertext, key)
#     cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#     plaintext_chars = ciphertext.chars.map do |char|
#       cipher[65 - char.ord]
#     end
#     return plaintext_chars.join
#   end
  
#   # Intended output:
#   #
#   # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
#   # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#   #
#   # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
#   # => "theswiftfoxjumpedoverthelazydog"

# EM is:
# encode_decode_debugging.rb:6:in `+': nil can't be coerced into Integer (TypeError)