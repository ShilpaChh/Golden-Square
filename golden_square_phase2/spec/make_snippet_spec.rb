#A method called make_snippet that takes a string as 
#an argument and returns the first five words and then a '...' if there are more than that.

require "make_snippet"

RSpec.describe "make_snippet method" do
    context "given an empty string" do
        it "returns an empty string" do
            result = make_snippet("")
            expect(result).to eq ""
        end
    end

    context "give a string of five words" do
        it "returns that string" do
            result = make_snippet("It is too cold today!")
            expect(result).to eq "It is too cold today!"
        end
    end

    context "give a string of six words" do
        it "returns the first five with a ..." do
            result = make_snippet("It is too cold today !")
            expect(result).to eq "It is too cold today ..."
        end
    end

end