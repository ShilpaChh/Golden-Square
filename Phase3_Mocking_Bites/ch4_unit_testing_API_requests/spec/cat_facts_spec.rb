require "cat_facts"

RSpec.describe CatFacts do

    it "tells a fact about cat" do
        fake_requester = double :requester 
        allow(fake_requester).to receive(:get).with(
            URI("https://catfact.ninja/fact")
        ).and_return('{"fact":"Perhaps the most famous comic cat is the Cheshire Cat in Lewis Carroll\u2019s Alice in Wonderland. With the ability to disappear, this mysterious character embodies the magic and sorcery historically associated with cats.","length":216}')


        cat_facts = CatFacts.new(fake_requester)
        expect(cat_facts.provide).to eq "Cat fact: Perhaps the most famous comic cat is the Cheshire Cat in Lewis Carroll\u2019s Alice in Wonderland. With the ability to disappear, this mysterious character embodies the magic and sorcery historically associated with cats."
    end
end

