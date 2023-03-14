Task Multi-Class Planned Design Recipe

1. Describe the Problem:

As a user 
So that I can keep tracks of my tasks
I want a program that I can add todo tasks to and see a list of them

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list

2, Design the Class System

# look for verbs and nouns in the user story

---
Nouns:
todo tasks
list of todo tasks
Verbs:
mark as complete
add
---

Make use of diagram tools like ASCIIflow.com, excalidraw.com, draw.io or miro.com


---ruby

# 1
class TaskList

def add(task)
end

def all
# returns a list of Task instances
# but only the non-completed ones
end

def complete
# returns a list of Task instances
# but only the ompleted ones
end

end

# 2
class Task
def initialize(title)
end

def title
# returns the title as string
end

def mark_complete
# Marks the task as comeplete
# returns nothing
end

def complete?
# returns true if marked completed, otherwise false
end

end
------

3. Create Examples as Integration Tests

---- ruby
# 1
task_list = TaskList.new
task_1 = Task.new("Walk the cat")
task_2 = Task.new("Walk the dog")
task_list.add(task_1)
task_list.add(task_2)
task_list.all # => [task_1, task_2]

# 2
task_list = TaskList.new
task_1 = Task.new("Walk the cat")
task_2 = Task.new("Walk the dog")
task_list.add(task_1)
task_list.add(task_2)
task_2.mark_complete
task_list.all # => [task_1]

# 3
task_list = TaskList.new
task_1 = Task.new("Walk the cat")
task_2 = Task.new("Walk the dog")
task_list.add(task_1)
task_list.add(task_2)
task_2.mark_complete
task_list.complete # => [task_2]

# 4 Create Examples as Unit Test

---ruby
# 1 
task_list = TaskList.new
task_list.all # => []

# 2
task_list = TaskList.new
task_list.complete # => []

# 3
task = Task.new("Walk the dog")
task.title # => "Walk the dog"

# 4
task = Task.new("Walk the dog")
task.mark_complete
task.complete? # => true

----



<!-- Use object-oriented design and test-driven development, backed up by your debugging and pairing skills, to develop the following program.

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

Some pointers:

Remember that user stories don't map to classes 1:1. You'll need to digest the full problem and then develop a multi-class system that meets the user's needs.
Don't worry about user interface or input-output. That means you shouldn't be using gets and only use puts for debugging purposes. -->