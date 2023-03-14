class DiaryReader
    def initialize(wpm, diary)
        # wpm is a number representing how many words the reader can read in one minute
        # diary is an instance of Diary
        fail "WPM must be above 0" unless wpm.positive?
        @wpm = wpm
        @diary = diary
    end

    def find_most_readable_in_time(time)
        # returns an instance of DiaryEntry, corresponding to the entry with the longest contents 
        #that is still within the time based on the wpm specified earlier
        # readable_entries = @diary.entries.reject do |entry| calculate_reading_time(entry) > time # reading time is greater than time
        # once all is green to refactor, creating a private method, readable_entries
        return readable_entries(time).max_by do |entry| count_words(entry)
        end
    end

    private

    def calculate_reading_time(entry)
        return (count_words(entry) / @wpm.to_f).ceil
    end

    def count_words(entry)
        return 0 if entry.contents.empty?
        return entry.contents.count(" ") + 1
    end

    def readable_entries(time)
        return @diary.entries.reject do |entry| calculate_reading_time(entry) > time 
        end
    end

end