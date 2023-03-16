# # File: lib/diary_entry.rb

# class DiaryEntry
#     def initialize(title, contents) # title, contents are both strings
#         @title = title
#         @contents = contents
#     end
  
#     def title
#       # Returns the title as a string
#       return @title
#     end
  
#     def contents
#       # Returns the contents as a string
#       return @contents
#     end
#   end


# ONE WAY TO REFACTOR THIS IS TO:-
# FIRST ALTERNATIVE METHOD:

# class DiaryEntry < Struct.new(:title, :contents)
# end

#### by using Struct
###### Struct is a shorthand for classes we've been writing. 
###### They take some args in the initilizer and they expose some methods to return those args

# OR SECOND ALTERNATIVE method is:

DiaryEntry = Struct.new(:title, :contents)

