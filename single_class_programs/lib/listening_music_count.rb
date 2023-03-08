class MusicTrack

    def initialize
        @track_music = []
    end

    def add(song_name)
        @track_music << song_name
    end

    def track_count
        return @track_music
    end


end