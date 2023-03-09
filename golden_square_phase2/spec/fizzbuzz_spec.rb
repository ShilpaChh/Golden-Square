require "fizzbuzz"

RSpec.describe "fizzbuzz" do
it "for an ordinary number it returns the number" do
    #when i call fizzbuzz(1), I should get 1
    result = fizzbuzz(1)
    expect(result).to eq 1 #what we expect from the it
end

#test driven approach, test one and then keep adding complex design elements, help in structure
it "returns fizz if the number is divisible by 3" do
    result = fizzbuzz(3)
    expect(result).to eq "Fizz"
end

it "returns buzz if the number is divisible by 5" do
    result = fizzbuzz(10)
    expect(result).to eq "Buzz"
end

it "returns fizzbuzz if the number is divisible by 15" do
    result = fizzbuzz(30)
    expect(result).to eq "Fizzbuzz"
end

end