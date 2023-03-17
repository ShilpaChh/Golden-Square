# Many applications request data from the internet. That data is regularly updated, which is great, but it makes it hard to test. 
# When Mocking is not just to make our tests more precise but it is s a necessity as with this below piece of Non-deterministic code 
# Non-deterministic code means that it doesn't always return the same result


require 'json'

class ActivitySuggester

  def initialize(requester)
    @requester = requester
  end

  def suggest
    response = make_request_to_api
    return "Why not: #{response["activity"]}"
  end

  private

  # This method calls an 'API' on the internet to get a random activity.
  # An API is a way of allowing programs to request data from other programs.
  def make_request_to_api

      text_response = @requester.get(URI("https://www.boredapi.com/api/activity"))   # and change our tests also with the new link   
      return JSON.parse(text_response)

  end

end



######### NOTES ############

# # require 'net/http'
# require 'json'

# class ActivitySuggester

#   def initialize(requester)
#     @requester = requester
#   end

#   def suggest
#     response = make_request_to_api
#     return "Why not: #{response["activity"]}"
#   end

#   private

#   # This method calls an 'API' on the internet to get a random activity.
#   # An API is a way of allowing programs to request data from other programs.
#   def make_request_to_api

#     # text_response = Net::HTTP.get("www.boredapi.com", "/api/activity") 
#     ## WE NEED TO CONTROL, Net::HTTP and so we have to initialize and remove require'net/http' and do unit tests
    
#     # text_response = @requester.get("www.boredapi.com", "/api/activity") 
#             #  "www.boredapi.com", "/api/activity" => for HTTP requests only
#             # for secured requests use as:
#             text_response = @requester.get(URI("https://www.boredapi.com/api/activity"))   # and change our tests also with the new link   
#                             #   with the changes it's green and the Usage 2 checks are also passing with new results everytime
#                             #               ➜  ch4_unit_testing_API_requests git:(main) ✗ rspec
#                             # "Why not: Think of a new business idea"
#                             # "Why not: Learn about a distributed version control system such as Git"

#                             # ActivitySuggester
#                             #   suggests an activity

#                             # Finished in 0.01607 seconds (files took 0.73419 seconds to load)
#                             # 1 example, 0 failures

#                             # ➜  ch4_unit_testing_API_requests git:(main) ✗ rspec
#                             # "Why not: Rearrange and organize your room"
#                             # "Why not: Go to a music festival with some friends"

#                             # ActivitySuggester
#                             #   suggests an activity

#                             # Finished in 0.01397 seconds (files took 0.67349 seconds to load)
#                             # 1 example, 0 failures

#     return JSON.parse(text_response)
#   end

# end


# Usage 2
# =====
# adding require line here (ideally this shd be a new file and then making some changes as below, we'd get new results everytime
# require 'net/http'
#  activity_suggester = ActivitySuggester.new(Net::HTTP)

# # # uncomment below lines and let's print them out:
# p activity_suggester.suggest # => "Why not: Learn how to use a french press"
# p activity_suggester.suggest # => "Why not: Hold a video game tournament with some friends"

          # activity_suggester.rb:38:in `<main>': uninitialized constant Net (NameError)
          # ➜  lib git:(main) ✗ ruby activity_suggester.rb
          # "Why not: Take your cat on a walk"
          # "Why not: Listen to a new podcast"
          # ➜  lib git:(main) ✗ ruby activity_suggester.rb
          # "Why not: Donate to your local food bank"
          # "Why not: Play a video game"
          # ➜  lib git:(main) ✗ ruby activity_suggester.rb
          # "Why not: Hold a yard sale"
          # "Why not: Memorize a favorite quote or poem"

# Usage 1
# =====
# activity_suggester = ActivitySuggester.new

# # uncomment below lines and let's print them out:
# p activity_suggester.suggest # => "Why not: Learn how to use a french press"
# p activity_suggester.suggest # => "Why not: Hold a video game tournament with some friends"

# OUTPUT is different each time:
        # ➜  ch4_unit_testing_API_requests git:(main) ✗ cd lib
        # ➜  lib git:(main) ✗ ls -ltr
        # total 8
        # -rw-r--r--  1 shilpachhabra  staff  1274 Mar 16 15:17 activity_suggestor.rb
        # ➜  lib git:(main) ✗ ruby activity_suggestor.rb 
            # Why not: Start a webinar on a topic of your choice
            # "Why not: Have a photo session with some friends"
            # ➜  lib git:(main) ✗ ruby activity_suggestor.rb
            # Why not: Find a DIY to do
            # "Why not: Visit your past teachers"
            # ➜  lib git:(main) ✗ ruby activity_suggestor.rb
            # Why not: Practice coding in your favorite lanaguage
            # "Why not: Play a video game"

# BUT we need tests to be Deterministic as we expect a particular value to be returned when a particulat input is passed.

# =======
# require 'net/http'
# require 'json'

# class ActivitySuggester
#   def suggest
#     response = make_request_to_api
#     return "Why not: #{response["activity"]}"
#   end

#   private

#   # This method calls an 'API' on the internet to get a random activity.
#   # An API is a way of allowing programs to request data from other programs.
#   def make_request_to_api
#     text_response = Net::HTTP.get("www.boredapi.com", "/api/activity")
#     return JSON.parse(text_response)
#   end
# end


# Usage
# =====
# activity_suggester = ActivitySuggester.new
# activity_suggester.suggest # => "Why not: Learn how to use a french press"
# activity_suggester.suggest # => "Why not: Hold a video game tournament with some friends"