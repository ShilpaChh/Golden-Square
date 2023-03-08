# {PROBLEM}} Class Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my phone numbers
I want to keep a record of all phone numbers I use in my diary entries

# 2. Design the Class Interface
# Include the initializer and public methods with all parameters and return values.

-- ruby --
class PhoneBook

    def initialize

    end

    def extract_numbers(text) # text is a string represents a journal entry
    # returns nothing
    end
    
    def list
    # returns a list of strings representing phone numbers
    end

end

-----

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

--- ruby ----
# EXAMPLE 1
phone_book = PhoneBook.new
phone_book.list # => []

# EXAMPLE 2
phone_book = PhoneBook.new
phone_book.extract_numbers("07981234321")
phone_book.list # => ["07981234321"]

# EXAMPLE 3
phone_book = PhoneBook.new
phone_book.extract_numbers("if I was calling a friend the other day")
phone_book.list # => ["07551234321"]

# EXAMPLE 4
phone_book = PhoneBook.new
phone_book.extract_numbers("My favs: 07981234321, 07551234321")
phone_book.list # => ["07981234321", "07551234321"]

# EXAMPLE 5
phone_book = PhoneBook.new
phone_book.extract_numbers("My favs: ")
phone_book.list # => []

# EXAMPLE 6
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend Swati is 07981234321")
phone_book.extract_numbers("My friend Shruti is 07551234321")
phone_book.list # => ["07981234321", "07551234321"]

# EXAMPLE 7 - too few digits
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend Swati is 079814321")
phone_book.list # => []

# EXAMPLE 8 - no duplicates
phone_book = PhoneBook.new
phone_book.extract_numbers ("My friend Swati is 07981234321")
phone_book.extract_numbers("My friend Swati is 07981234321")
phone_book.list # => ["07981234321"]

-----

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->