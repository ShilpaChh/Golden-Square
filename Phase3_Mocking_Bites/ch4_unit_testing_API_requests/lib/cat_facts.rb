require 'json'
# require 'net/http'

class CatFacts

    def initialize(requester)
        @requester = requester 
    end

    def provide
        return "Cat fact: #{get_cat_fact["fact"]}"
    end

    private

    def get_cat_fact
        text_response = @requester.get(URI("https://catfact.ninja/fact"))
        return JSON.parse(text_response)
    end

end

        # REAL TIME TESTING:
        # require 'net/http'
        # cat_facts = CatFacts.new(Net::HTTP)
        # p cat_facts.provide
                # ActivitySuggester
                #   suggests an activity

                # CatFacts
                #   tells a fact about cat

                # TimeError
                #   returns the difference between the remote clock and local clock

                # Finished in 0.02416 seconds (files took 1.53 seconds to load)
                # 3 examples, 0 failures

                # ➜  ch4_unit_testing_API_requests git:(main) ✗ cd lib
                # ➜  lib git:(main) ✗ ruby cat_facts.rb              
                # "Cat fact: The most popular pedigreed cat is the Persian cat, followed by the Main Coon cat and the Siamese cat."
                # ➜  lib git:(main) ✗ ruby cat_facts.rb
                # "Cat fact: The oldest cat to give birth was Kitty who, at the age of 30, gave birth to two kittens. During her life, she gave birth to 218 kittens."
                # ➜  lib git:(main) ✗ ruby cat_facts.rb
                # "Cat fact: Every year, nearly four million cats are eaten in Asia."
                # ➜  lib git:(main) ✗ ruby cat_facts.rb
                # "Cat fact: The cat has 500 skeletal muscles (humans have 650)."

