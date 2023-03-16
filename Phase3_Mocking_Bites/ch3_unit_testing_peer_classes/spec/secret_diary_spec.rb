require "secret_diary"

RSpec.describe "SecretDiary" do

    context "initially" do
        it "does not read the diary because it is locked" do
            diary = double :diary # creating a double
            # don;t need a method as yet as in read it shdn't read teh diary anyways

            secret_diary = SecretDiary.new(diary)
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

    context "when unlocked" do
        it "reads the underlying diary" do
            diary = double :diary, read: "FAKE CONTENTS" # creating a double with a read method to have fake contents 
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            expect(secret_diary.read).to eq "FAKE CONTENTS"
        end
    end

    context "when relocked" do
        it "does not read the underlying diary" do
            diary = double :diary # creating a double BUT now we don't need read method as it wud create errors
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            secret_diary.lock
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

end