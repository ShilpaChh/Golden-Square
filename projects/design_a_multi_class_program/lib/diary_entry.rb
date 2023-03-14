class DiaryEntry
    def initialize(title, contents) # title, contents are both strings
        @title = title
        @contents = contents
    end

    def title
    # returns title as strings
        return @title
    end

    def contents
    # returns contents as strings
        return @contents
    end
end