require "report_length"

RSpec.describe "creport_length.method" do
    it "the length of the given string" do
        result = report_length("Golden Square")
        expect(result).to eq "This string was 13 characters long."
    end
end
