require "grammar_stats"

RSpec.describe GrammarStats do
    it "to check if the test is string" do
        grammar_check = GrammarStats.new
        result = grammar_check.check("Hello World.")
        expect(result).to eq true
    end

    it "to check if the first letter is starting with Capital letter" do
        grammar_check = GrammarStats.new
        result = grammar_check.check("hello World.")
        expect(result).to eq false
    end

    it "to check if the text is ending with a valid punctuation mark" do
        grammar_check = GrammarStats.new
        result = grammar_check.check("Hello World")
        expect(result).to eq false
    end

    it "return the percentage of texts checked" do
        grammar_check = GrammarStats.new
        grammar_check.check("Hello World.")
        grammar_check.check("Hello World.")
        grammar_check.check("Hello World")
        result = grammar_check.percentage_good 
        expect(result).to eq 66.67
    end

end
