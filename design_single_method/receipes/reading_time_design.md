# 1. Describe the Problem
## Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute

# 2. Design the Method Signature
## Include the name of the method, its parameters, return value, and side effects.
# EXAMPLE

...ruby...
reading_time = calculate_reading_time(calculate_reading_time(2000, 200))
# test is a string wirh words in it
# reading_time is a integer representing minutes
...
# The method doesn't print anything or have any other side-effects

# 3. Create Examples as Tests
## Make a list of examples of what the method will take and return.
# EXAMPLE

...ruby...
# eg 1
calculate_reading_time(2000, 200)
# => 0

# eg 2
calculate_reading_time(3600, 400)
# => 1

# eg 3
calculate_reading_time(3630, 600)
# => 1


## Encode each example as a test. You can add to the above list as you go.

# 4. Implement the Behaviour
## After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.