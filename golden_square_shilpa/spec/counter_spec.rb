require "counter"

RSpec.describe Counter do
  it "initially reports a count of zero" do
    counter = Counter.new
    #result = counter.report
    #expect(result).to eq "Counted to 0 so far."
    expect(counter.report).to eq "Counted to 0 so far."
  end
  it "reports a count of added values with one addition" do
    counter = Counter.new
    counter.add(7)
    counter.add(8)
    counter.add(1)
    expect(counter.report).to eq "Counted to 16 so far."
  end
end
