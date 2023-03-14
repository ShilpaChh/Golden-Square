# File: letter_counter.rb
# Aim to find the most common alphabet

class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(0)
      most_common = nil
      most_common_count = 1
      @text.chars.each do |char|
        next unless is_letter?(char)
        counter[char] = (counter[char] || 1) + 1
        #binding.irb
        if counter[char] > most_common_count
           # binding.irb
          most_common = char
          #binding.irb
          most_common_count += 1
          #binding.irb
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  #counter = LetterCounter.new("Digital Punk")
  #counter = LetterCounter.new("aaaaaabbbcc")
  counter = LetterCounter.new("I have myself debugged the code.")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]
