require 'calculate_reading_time'

RSpec.describe "calculate_reading_time method" do
    
    context"given a string of 2000 words" do
    it "returns ten minutes" do
        result = calculate_reading_time(2000, 200)
    expect(result).to eq 10
    end
    end

    context"given a text of over two hundred words" do
        it "returns eighteen mintues" do
        expect(calculate_reading_time(3600, 200)).to eq 18
        end
        end

        context"given a text of over 5000 words in decimals" do
            it "returns twenty-five minutes approx." do
            expect(calculate_reading_time(5125, 200)).to eq 26
            end
            end

end