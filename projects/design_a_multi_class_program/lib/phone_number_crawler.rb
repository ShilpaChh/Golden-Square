class PhoneNumberCrawler

    def initialize(diary) # diary is an instance of Diary
        @diary = diary
    end

    def extract_numbers
        # returns a list of strings representing phone numbers gathered across all diary entries
            # @diary.entries.map do |entry| extract_numbers_from_entry(entry)
            # end.flatten.uniq # to avoid this EM:
            # # expected: ["07800000000", "07800000001", "07800000002"]
            # # got: [[], ["07800000000"], ["07800000000", "07800000001", "07800000002", "07800000002"]]
            # ## and then uniq to remove duplicates
            # ### we can also use .flat_map as below:
        return @diary.entries.flat_map do |entry| extract_numbers_from_entry(entry)
        end.uniq
    end

    private

    def extract_numbers_from_entry(entry)
        return entry.contents.scan(/07[0-9]{9}/) # string starting with 07, any numbers between 0 to 9 which are repeated 9 times
    end

end