# 1. Describe the Problem
## Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can analyse key words in my texts
I want to see a list of uppercase words

# 2. Design the Method Signature
## Include the name of the method, its parameters, return value, and side effects.
# EXAMPLE

# `extract_upper` extracts uppercase words from a string

...ruby...
uppercase_words = extract_uppercase(mixed_words)

mixed_words is a string (e.g. "hello WORLD")
uppercase_words is a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects

# 3. Create Examples as Tests
## Make a list of examples of what the method will take and return.
# EXAMPLE

...ruby...
# eg 1
extract_uppercase("hello WORLD") 
# => ["WORLD"]

# eg 2
extract_uppercase("HELLO WORLD") 
#=> ["HELLO", "WORLD"]

# eg 3
extract_uppercase("hello world") 
# => []

# eg 4
extract_uppercase("hello WoRLD") 
# => []

# eg 5
extract_uppercase("hello WORLD!") 
# => ["WORLD"]

# eg 6
extract_uppercase("") 
# => []
extract_uppercase(nil) throws an error

## Encode each example as a test. You can add to the above list as you go.

# 4. Implement the Behaviour
## After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.