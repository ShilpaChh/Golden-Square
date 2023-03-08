require "listening_music_count"

# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

RSpec.describe MusicTrack do

    it "add track to Music" do
        track = MusicTrack.new
        expect(track.add("Senorita")).to eq ["Senorita"]
    end

    it "Count of tracks listened so far" do
        track = MusicTrack.new
        track.add("Senorita")
        track.add("Dilbar")
        expect(track.track_count).to eq ["Senorita", "Dilbar"]
    end

end