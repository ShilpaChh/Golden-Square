require "find_string"

RSpec.describe "find_string method" do

    context "find #TODO in a given string" do
        it "returns true" do
        result = find_string("This is my #TODO list.")
        expect(result).to eq true
        end
    end


    context "if part of #TODO is there in a given string" do
        it "returns false" do
        result = find_string("This is my #TOD list.")
        expect(result).to eq false
        end
    end

end