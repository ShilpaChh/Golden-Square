require "gratitude"

RSpec.describe Gratitude do
    it "add and provides a list of gratitudes" do
        gratitude = Gratitude.new
        gratitude.add("your cat")
        gratitude.add("nice people")
        expect(gratitude.format).to eq "Be grateful for: your cat, nice people"
    end

end