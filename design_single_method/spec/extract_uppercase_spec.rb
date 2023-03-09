require 'extract_uppercase'

RSpec.describe "extract_uppercase method" do
  it "returns an empty string if given an empty string" do
    expect(extract_uppercase("")).to eq []
  end

  it "returns an empty string if given a string with no uppercase words" do
    expect(extract_uppercase("")).to eq []
  end

  it "returns only uppercase words from mixed words" do
    expect(extract_uppercase("hello WORLD")).to eq ["WORLD"]
  end

  it "returns the uppercase words given a string with uppercase words" do
    expect(extract_uppercase("HELLO WORLD")).to eq ["HELLO", "WORLD"]
  end

  it "does not extract mixed case words" do
    expect(extract_uppercase("heLLO woRLD")).to eq []
  end

  it "ignores and strips punctuations" do
    expect(extract_uppercase("HELLO WORLD!")).to eq ["HELLO", "WORLD"]
  end


end