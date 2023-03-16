# File: lib/s_diary.rb

# Test-drive these classes. Include:

# Integration tests
# Unit tests, exercising all of the class's functionality, without using or referring to the other class.


class Diary
    def initialize(contents) # contents is a string
        @contents = contents
    end
  
    def read
      # Returns the contents of the diary
      return @contents
    end
  end