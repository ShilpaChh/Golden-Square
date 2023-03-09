require 'greet'

RSpec.describe 'greet.method' do
    it "greet a given user" do
    result = greet("SC")

    expect(result).to eq "Hello, SC!"

end
end