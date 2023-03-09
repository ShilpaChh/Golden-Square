require 'string_builder'

# We use the class name here rather than a string
RSpec.describe StringBuilder do
  it "returns a string as o/p" do
    str_builder = StringBuilder.new
    str_builder.add("Shilpa")
    expect(str_builder.output).to eq "Shilpa"
  end
  it "checks size string as o/p" do
    str_builder = StringBuilder.new
    str_builder.add("Raymond")
    expect(str_builder.size).to eq 7
  end

  context "given one addition of a string" do
    it "outputs that string" do
        str_builder = StringBuilder.new
        str_builder.add("Hello")
        expect(str_builder.output).to eq "Hello"
    end
        it "length of that string" do
            str_builder = StringBuilder.new
            str_builder.add("Hello")
            expect(str_builder.size).to eq 5
        end
    end
end