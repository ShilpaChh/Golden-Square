require "diary_entry"


RSpec.describe DiaryEntry do

    it "constructs" do
        diary_entry = DiaryEntry.new("High Stakes", "Danielle Steel")
        expect(diary_entry.title).to eq "High Stakes"
        expect(diary_entry.contents).to eq "Danielle Steel"
    end



end