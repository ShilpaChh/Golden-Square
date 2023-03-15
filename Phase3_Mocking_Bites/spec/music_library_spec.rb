require "music_library"

RSpec.describe MusicLibrary do

  it "adds and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do # mocking comes here and we need to be careful as only track that returns TRUE to come out
    music_library = MusicLibrary.new
    track_1 = double :track, matches?: true
    track_2 = double :track, matches?: false
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("maan")).to eq [track_1]
  end

  it "searches tracks that match" do # in music_library.rb => search method matching with keyword and not with any undefined word.
    music_library = MusicLibrary.new
    track_1 = double :track
    expect(track_1).to receive(:matches?).with("meri").and_return(true)
    track_2 = double :track
    expect(track_2).to receive(:matches?).with("meri").and_return(false)
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("meri")).to eq [track_1]
  end

end