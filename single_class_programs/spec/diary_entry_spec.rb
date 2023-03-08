require "diary_entry"

RSpec.describe DiaryEntry do
    it "contructs" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect(diary_entry.title).to eq "my_title"
        expect(diary_entry.contents).to eq "my_contents"
    end

    describe "@count_words" do
        it "returns the number of words in the contents" do
        diary_entry = DiaryEntry.new("my_title", "some contents here")
        expect(diary_entry.title).to eq "my_title"
        expect(diary_entry.count_words).to eq 3
        end
    end

    it "returns zero when contents are empty" do
        diary_entry = DiaryEntry.new("my_title", "")
        expect(diary_entry.count_words).to eq 0
    end

    describe "@reading_time" do
        context "given a wpm of some sensible number (200) " do
        it "returns the ceiling of the number of minutes it takes to read the contents" do
        diary_entry = DiaryEntry.new("my_title", "one " * 550)
        expect(diary_entry.reading_time(200)).to eq 3
            end
         end
    end

    context "given a wpm of 0" do
        it "fails" do 
            diary_entry = DiaryEntry.new("my_title", "one two three")
            expect {diary_entry.reading_time(0)}.to raise_error "Reading speed must be above zero."
            end
        end
 
    describe "@reading_chunk" do
        context "with a contents readble within the minute" do
        it "returns the full contents" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "one two three"
            end
         end
    end

    context "given a wpm of 0" do
        it "fails" do 
            diary_entry = DiaryEntry.new("my_title", "one two three")
            expect {diary_entry.reading_chunk(0, 5)}.to raise_error "Reading speed must be above zero."
            end
        end
     
    context "with a contents unreadble within the time" do
        it "returns a readble chunk" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
            end
         end 
 
    it "returns the next chunk, when we are asked" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "three"
    end
       
    #what if we finish exactly at the end
    it "inserts after reading the whole contents" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
    end

    it "restarts if it finishes exactly on the end" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(1, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
    end

end

