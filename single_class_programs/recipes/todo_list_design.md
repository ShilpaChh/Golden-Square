# {PROBLEM} Tasks Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

# 2. Design the Class Interface
# Include the initializer and public methods with all parameters and return values.

-- ruby --
class TodoList
    def initialize
    end

    def add(task) # task is a string representing an instruction
    return nothing
    end

    def list
    # returns a list of tasks added as strings
    end

    def complete(task) # task is a string representing a task to mark complete
    # returns nothing
    # fails if the task doesn't exist
    end

end

-----

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

--- ruby ----
# 1 Create new instance of the class
todo_list = TodoList.new
todo_list.list # => []

# 2 Add a task
to_list = TodoList.new
todo_list.add("Wash the car")
todo_list.list # => ["Wash the car"]

# 3 Add another task
to_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Weekly grocery shopping")
todo_list.list # => ["Wash the car", "Weekly grocery shopping"]

# 4 If one task gets completed => remove from list
to_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Weekly grocery shopping")
to_list.complete ("Wash the car")
todo_list.list # => ["Weekly grocery shopping"]


# 5 If task is not in the list => throw error
to_list = TodoList.new
todo_list.add("Wash the car")
to_list.complete("Help with Meghna's homework") # => fails "No such task."
todo_list.list 


-----

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->