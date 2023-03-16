# File: spec/diary_entry_formatter_spec.rb

# A peer relationship between classes is one where a class is associated with another class one-to-one.
# The principle of unit testing peer classes is very similar to testing parent-child classes. 

require "diary_entry"
require "diary_entry_formatter"

RSpec.describe DiaryEntryFormatter do

            # it "formats a diary entry" do
            #   fake_diary_entry = double(:fake_diary_entry, title: "Hello", contents: "Hello, world!")
            #   formatter = DiaryEntryFormatter.new(fake_diary_entry)
            #   expect(formatter.format).to eq "Hello: Hello, world!"
            # end

    it "formats a diary entry" do
        diary_entry = DiaryEntry.new("my title", "my contents")
        diary_entry_formatter = DiaryEntryFormatter.new(diary_entry)
        expect(diary_entry_formatter.format).to eq "my title: my contents"
    end

  end