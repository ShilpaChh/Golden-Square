require "count_words"

RSpec.describe "count_words method" do
    it "count the number of words in a string" do
    result = count_words("Snowing here")
    expect(result).to eq 2
end


end