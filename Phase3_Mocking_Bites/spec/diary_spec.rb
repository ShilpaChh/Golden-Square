require "diary"

RSpec.describe Diary do

    it "adds and lists diary entries" do
        diary = Diary.new
        # fake_diary_entry_1 = FakeDiaryEntry.new
        # creating fake classes can become cubersome so, we can replace the above line with syntax as below (concise way) and remove the class FakeDiaryEntry
        fake_diary_entry_1 = double :fake_diary_entry
        # where fake_diary_entry , is just a name we give for our understanding and it is an object with no methods on it.
        # fake_diary_entry_2 = FakeDiaryEntry.new
        fake_diary_entry_2 = double :fake_diary_entry
        diary.add(fake_diary_entry_1)
        diary.add(fake_diary_entry_2)
        expect(diary.entries).to eq [fake_diary_entry_1, fake_diary_entry_2]
    end

    it "counts words in the entries given" do
        diary = Diary.new
        # fake_diary_entry_1 = FakeTwoWordDiaryEntry.new
        # for count_words as well we have syntax as: 
        # fake_diary_entry is the name of our choce + the method's name it relies on and the value we are expecting it to return, 2 and then 3 for second instance
        fake_diary_entry_1 = double :fake_diary_entry, count_words: 2
        # fake_diary_entry_2 = FakeThreeWordDiaryEntry.new
        fake_diary_entry_2 = double :fake_diary_entry, count_words: 3
        diary.add(fake_diary_entry_1)
        diary.add(fake_diary_entry_2)
        expect(diary.count_words).to eq 5 # 2 + 3 words = 5
    end


end

# class FakeDiaryEntry

# end

# class FakeTwoWordDiaryEntry

#     def count_words
#         return 2
#     end

# end

# class FakeThreeWordDiaryEntry

#     def count_words
#         return 3
#     end

# end