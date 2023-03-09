require 'check_grammar'

RSpec.describe 'check_grammar method' do
    
    context "given an empty string" do
    it "fails" do
    expect{check_grammar("")}.to raise_error "Not a sentence."
    end
    end

    context "given a sentence with a capital letter and a full stop" do
    it "returns true" do
    result = check_grammar("Hello, I am Shilpa.")
    expect(result).to eq true
    end
    end
    
    context "given a sentence with no capital letter and full stop only" do
        it "returns false" do
        result = check_grammar("hello, I am Shilpa.")
        expect(result).to eq false
        end
    end

    context "given a sentence with no full stop" do
        it "returns false" do
        result = check_grammar("Hello, I am Shilpa")
        expect(result).to eq false
        end
    end

    context "given a sentence with neither capital letter nor a full stop" do
        it "returns false" do
        result = check_grammar("hello, I am Shilpa")
        expect(result).to eq false
        end
    end

    context "given a sentence with first word as uppercase" do
        it "returns true" do
        result = check_grammar("HELLO, I am Shilpa.")
        expect(result).to eq true
        end
    end

    context "given a correct sentence with exclaimation at the end " do
        it "returns true" do
        result = check_grammar("Hello, I am Shilpa!")
        expect(result).to eq true
        end
    end

    context "given a correct sentence with question mark at the end " do
        it "returns true" do
        result = check_grammar("Hello, I am Shilpa!")
        expect(result).to eq true
        end
    end

    context "given a sentence with comma at the end " do
        it "returns false" do
        result = check_grammar("Hello, I am Shilpa,")
        expect(result).to eq false
        end
    end

end