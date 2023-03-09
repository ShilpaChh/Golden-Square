require "listening_music"

RSpec.describe MusicTrack do

    context "add a song" do
        it "add a song to the list" do 
            track = MusicTrack.new
            expect(track.add("Ranjha")).to eq ["Ranjha"]
        end
    end

    context "add another song" do
        it "add another song to the list" do 
            track = MusicTrack.new
            result = track.add("Ranjha")
            result = track.add("Kesariya")
            expect(result).to eq ["Ranjha", "Kesariya"]
        end
    end

    context "get a list of songs" do
        it "count the list of songs" do 
            track = MusicTrack.new
            track.add("Ranjha")
            track.add("Kesariya")
            expect(track.track_count).to eq ["Ranjha", "Kesariya"]
        end
    end

end