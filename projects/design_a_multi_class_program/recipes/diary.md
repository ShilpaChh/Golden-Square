Task Multi-Class Planned Design Recipe

1. Describe the Problem:

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

2. Design the Class System

# look for verbs and nouns in the user story

Make use of diagram tools like ASCIIflow.com, excalidraw.com, draw.io or miro.com

Used -> excalidraw.com

class Diary
    def add(entry) # entry is an instance of DiaryEntry
    end

    def entries
    # returns a list of DiaryEntries
    end
end

class DiaryEntry
    def initialize(title, contents) # title, contents are both strings
    end

    def title
    # returns title as strings
    end

    def contents
    # returns contents as strings
    end
end

class PhoneNumberCrawler
    def initialize(diary) # diary is an instance of Diary
    end

    def extract_numbers
        # returns a list of strings representing phone numbers gathered across all diary entries
    end
end

class DiaryReader
    def initialize(wpm, diary)
        # wpm is a number representing how many words the reader can read in one minute
        # diary is an instance of Diary
    end

    def find_most_readable_in_time
        # returns an instance of DiaryEntry, corresponding to the entry with the longest contents 
        #that is still within the time based on the wpm specified earlier
    end
end

class TaskList
    def add(task) # task is an instance of Task
    end

    def all
        # returns a list of tasks
    end
end

class Task
    def initialize(title) # title is a string
    end

    def title
        # returns the title as string
    end
end

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

<!-- As a user
So that I can record my experiences
I want to keep a regular diary 

As a user
So that I can reflect on my experiences
I want to read my past diary entries
-->

# 1
diary = Diary.new
entry_1 = DiaryEntry.new("High Stakes", "Danielle Steel")
entry_2 = DiaryEntry.new("Slated", "Teri Terry")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.entries).to eq [entry_1, entry_2]

# 2 fits exactly 
<!-- As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed -->

diary = Diary.new
reader = DiaryReader.new(2, diary)
entry_1 = DiaryEntry.new("title_1", "one word")
entry_2 = DiaryEntry.new("title_2", "two words")
entry_3 = DiaryEntry.new("title_3", "three words read")
entry_4 = DiaryEntry.new("title_4", "four words being read")
entry_5 = DiaryEntry.new("title_5", "five words have been read")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.add(entry_4)
diary.add(entry_5)
expect(reader.find_most_readable_in_time(2)).to eq entry_4 # 2 wpm so entry_4

# 3 does not fit exactly - no readable entry in time
diary = Diary.new
reader = DiaryReader.new(2, diary)
entry_1 = DiaryEntry.new("title_1", "one word")
entry_2 = DiaryEntry.new("title_2", "two words")
entry_3 = DiaryEntry.new("title_3", "three words read")
entry_4 = DiaryEntry.new("title_4", "five words have been read")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.add(entry_4)
expect(reader.find_most_readable_in_time(2)).to eq entry_3

# 4 nothing readable in time
diary = Diary.new
reader = DiaryReader.new(2, diary)
entry_1 = DiaryEntry.new("title_1", "five words have been read")
diary.add(entry_1)
expect(reader.find_most_readable_in_time(2)).to eq nil

# 5 nothing at all is present
diary = Diary.new
reader = DiaryReader.new(2, diary)
expect(reader.find_most_readable_in_time(2)).to eq nil

# 6 Error Case when wpm is invalid
diary = Diary.new
DiaryReader.new(0, diary)  # should fail with "WPM must be above 0"


<!-- As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary -->

# 7 
task_list = TaskList.new
task_1 = Task.new("Walk the dog")
task_2 = Task.new("Walk the cat")
task_list.add(task_1)
task_list.add(task_2)
expect(task_list).to eq [task_1, task_2]


<!-- As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries --> 

diary = Diary.new
phone_book = PhoneNumberCrawler.new(diary)
diary.add(DiaryEntry.new("title1", "my friend 07800000000 is nice"))
diary.add(DiaryEntry.new("title2", "my friends 07800000000, 07800000001 and 07800000002, 07800000002 are nice")) # 2 new numbers and 1 is duplicate number
expect(phone_book.extract_numbers).to eq [
    "07800000000",
    "07800000001",
    "07800000002"
]

-----

# 4 Create Examples as Unit Test

---ruby
# Do as we go along
----

# 5 Implement the Behaviour