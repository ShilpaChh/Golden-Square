require "e_extractor"

RSpec.describe "e_extractor method" do
it "given an empty string" do
    result = e_extractor("")
    expect(result).to eq ""
end

it "giving string without e in it" do
    result = e_extractor("I will play in sun")
    expect(result).to eq "I will play in sun"
end

it "giving string with e in it, brings that to the start" do
    result = e_extractor("hello")
    expect(result).to eq "ehllo"
end

it "giving string with multiple e's in it, brings that to the start" do
    result = e_extractor("heeeello")
    expect(result).to eq "eeeehllo"
end

it "gif e at start, still moves them earlier" do
    result = e_extractor("eeeello")
    expect(result).to eq "eeeello"
end


end