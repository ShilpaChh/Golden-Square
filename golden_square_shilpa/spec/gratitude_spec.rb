require 'gratitude'

RSpec.describe Gratitudes do
  it "gratitude to the user" do
    gratitude = Gratitudes.new
    gratitude.add("Pair prg'ing")
    gratitude.add("with Ray!")
    result = gratitude.format()
    expect(result).to eq "Be grateful for: Pair prg'ing, with Ray!"
  end
end