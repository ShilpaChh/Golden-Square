class GrammarStats
    def initialize
      @array = []
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    #  if 
       valid_text = text.start_with?(/[A-Z]/) && text.to_s[-1].match?(/[.?!]/)
            # return true
    #     else 
    #         return false 
    #   end
        @array << valid_text
        return valid_text
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
        array_count = @array.count()
        true_array_count = @array.count(true)
        percentage = (true_array_count.to_f/array_count.to_f) * 100
        return percentage.round(2)
    end
  end