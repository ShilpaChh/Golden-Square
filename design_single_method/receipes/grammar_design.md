# 1. Describe the Problem
## Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can improve my grammar
I want to verify that the text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 2. Design the Method Signature
## Include the name of the method, its parameters, return value, and side effects.
# EXAMPLE

...ruby...
is_correct = check_grammar(text)

# text is a string with words in it
# is_correct is a boolean depending on whether it checks out

...
# The method doesn't print anything or have any other side-effects

# 3. Create Examples as Tests
## Make a list of examples of what the method will take and return.
# EXAMPLE

...ruby...
# eg 1
check_grammar("")
# => fail "Not a sentence."

# eg 2
check_grammar("Hello, I am Shilpa.")
# => true

# eg 3
check_grammar("Hello, I am Shilpa")
# => false

# eg 4
check_grammar("hello, I am Shilpa.")
# => false

# eg 4.5
check_grammar("hello, I am Shilpa")
# => false

# eg 5
check_grammar("HELLO, I am Shilpa.")
# => true

# eg 6
check_grammar("Hello, I am Shilpa!")
# => true

# eg 7
check_grammar("Hello, I am Shilpa?")
# => true

# eg 7
check_grammar("Hello, I am Shilpa,")
# => false


## Encode each example as a test. You can add to the above list as you go.

# 4. Implement the Behaviour
## After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.