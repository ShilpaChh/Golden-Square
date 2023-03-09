require "check_codeword"

RSpec.describe "check_codeword.method" do
    it "returns wrong msg for incorrectly given codeword" do
        result = check_codeword("queen")
        expect(result).to eq "WRONG!"
    end
    it "correct msg for right codeword" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "incorrect letter placement msg" do
        result = check_codeword("hme")
        expect(result).to eq "Close, but nope."
    end
    it "incorrect first letter placement msg" do
        result = check_codeword("happen")
        expect(result).to eq "WRONG!"
    end
    it "incorrect last letter placement msg" do
    result = check_codeword("happen")
    expect(result).to eq "WRONG!"
    end
end