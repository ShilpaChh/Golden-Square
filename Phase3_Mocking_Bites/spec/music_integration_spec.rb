# Test-drive these classes. Include:

# Integration tests
# Unit tests, exercising all of the class's functionality, without using or referring to the other class.

# TESTING CLASSES IN ISOLATION 

require "music_library"
require "track"

RSpec.describe "Music Integration" do

  it "adds and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title1", "artist1")
    track_2 = Track.new("title2", "artist2")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do
    music_library = MusicLibrary.new
    track_1 = Track.new("Tu maan meri jaan", "King")
    track_2 = Track.new("Nayan", "Dhvani")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("maan")).to eq [track_1]
  end


end