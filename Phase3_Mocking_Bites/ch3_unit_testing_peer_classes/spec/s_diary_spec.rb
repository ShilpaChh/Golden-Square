require "s_diary"

RSpec.describe "S_Diary" do

    it "sets contents and reads" do
        diary = Diary.new("MY CONTENTS")
        expect(diary.read).to eq "MY CONTENTS"
    end





end