# {PROBLEM} Tasks Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


# 2. Design the Class Interface
# Include the initializer and public methods with all parameters and return values.

-- ruby --
class MusicTrack
    def initialize
    #an empty array, track_music
    end

    def add(song_name) # song_name is a string representing a song
    #return nothing but would add the songs to the array
    end

    def track_count
    # returns a list of songs added as strings to the array
    end

end

-----

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

--- ruby ----
# 1 Create new instance of the class
track = MusicTrack.new

# 2 Add a song
track = MusicTrack.new
track.add("Ranjha")


# 3 Add another song
track = MusicTrack.new
track.add("Ranjha")
track.add("Kesariya")

# 4 Track the count of the songs added to the list
track = MusicTrack.new
track.add("Ranjha")
track.add("Kesariya")
track.track_count ["Ranjha", "Kesariya"]


-----

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->