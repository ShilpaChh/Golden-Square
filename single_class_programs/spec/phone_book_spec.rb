require "phone_book"

RSpec.describe PhoneBook do
    context "with no entries" do
    #xit "has an empty list" do # xit moves it to pending and not test drive yet
        it "has an empty list" do # once all the specs are writtem, 
            #keep taking x from xit one and by one and test/debug it to move ahead.
        phone_book = PhoneBook.new
        expect(phone_book.list).to eq []
        end
    end

    context "given an entry wuth a number only" do
    it "stores the number" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("07981234321")
        expect(phone_book.list).to eq ["07981234321"]
        end
    end

    context "given an entry wuth a number in it" do 
    it "stores the number" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("I was calling my friend 07981234321 the other day")
        expect(phone_book.list).to eq ["07981234321"]
    end
    end

    context "given an entry with two numbers in it" do
    it "stores both the numbers" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("My favs: 07981234321, 07551234321")
        expect(phone_book.list).to eq ["07981234321", "07551234321"]
    end
end

    context "given an entry wuth no numbers" do
    it "stores nothing" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("My favs: ")
        expect(phone_book.list).to eq []
    end
end

    context "given two entries with numbers" do
    it "stores all the numbers" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("My friend Swati is 07981234321")
        phone_book.extract_numbers("My friend Shruti is 07551234321")
        expect(phone_book.list).to eq ["07981234321", "07551234321"]
    end
end

    context "given an entry with a two digits in it" do
    it "does not store the number" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("My friend Swati is 079814321")
        expect(phone_book.list).to eq []
    end
end

    context "given entries that have duplicate numbers" do
    it "does not store the number" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("My friend Swati is 07981234321")
        phone_book.extract_numbers("My friend Swati is 07981234321")
        expect(phone_book.list).to eq ["07981234321"]
    end
end

end