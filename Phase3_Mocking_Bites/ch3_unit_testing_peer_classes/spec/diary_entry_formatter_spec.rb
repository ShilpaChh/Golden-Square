require "diary_entry_formatter"

RSpec.describe DiaryEntryFormatter do

    it "formats a diary entry" do
        diary_entry = double :diary_entry, title: "FAKE TITLE", contents: "FAKE CONTENTS"

        diary_entry_formatter = DiaryEntryFormatter.new(diary_entry)  ####### we created a double and passed in the initializer here and not in the method.
        # and it stored inside the class DiaryEntryFormatter just as the real object would be
        # we inject the things we depend upon in the initializer

        expect(diary_entry_formatter.format).to eq "FAKE TITLE: FAKE CONTENTS"
        end

  end