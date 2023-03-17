require 'date'
require 'json'

class TimeError

    def initialize(requester)
        @requester = requester 
    end

    def error(current_time) 
        return get_server_time - current_time 
    end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip")) 
    json = JSON.parse(text_response) 
    return DateTime.parse(json["utc_datetime"]).to_time 
  end
end



# ###### NOTES ###########
# require 'date'
# require 'json'
# require 'net/http'

# class TimeError

#     def initialize(requester)
#         @requester = requester #and now we need to remove the Net::HTTP with the requester we passed
#     end

#   # Returns difference in seconds between server time
#   # and the time on this computer

# #   def error
# #     return get_server_time - Time.now
# #   end
#     def error(current_time) 
#             # SOLVED this example in two steps: 
#             # 1. injected current_time as an arg in error method. Instead of here we got our time from spec => ime = Time.new(2023, 3, 17, 9, 18, 41)
#             # 2. got rid of NET::HTTP from here that made a call to outside world. Instead we created a double for it in spec file, allowed it to received get from the URI
#             # and then we expected the result to equal to the time we got when we ran rspec for it => 0.057348 while we gave the fixed pieces of the datetime that was returned in the long string
#         return get_server_time - current_time # instead of Time.now, we'll have current_time as arg and to take away and also change in spec file and return a realistic response 

#     end

#   private

#   def get_server_time
#     text_response = @requester.get(URI("https://worldtimeapi.org/api/ip")) ## makes a URI server request to teel what time is it
#         ## now we don't need the require => require 'net/http'
#     json = JSON.parse(text_response) # parses the response
#     return DateTime.parse(json["utc_datetime"]).to_time # convert it to date and then compares with local time in error method
#   end
# end

#         # ###### TESTING IN REAL TIME ######
#         # require 'net/http'
#         # time_error = TimeError.new(Net::HTTP)
#         # p time_error.error(Time.now)
#             # so the code still works in real time and we get new time every hit.
#             # ➜  ch4_unit_testing_API_requests git:(main) ✗ cd lib
#             # ➜  lib git:(main) ✗ ruby time_error.rb
#             # 0.147149
#             # ➜  lib git:(main) ✗ ruby time_error.rb
#             # 0.140473
#             # ➜  lib git:(main) ✗ ruby time_error.rb
#             # 0.145576
#             # ➜  lib git:(main) ✗ ruby time_error.rb
#             # 0.130413
#             # ➜  lib git:(main) ✗ ruby time_error.rb
#             # 0.130022

# ###### TESTING IN REAL TIME ######
# # time_error = TimeError.new
# # p time_error.error

# # ➜  ch4_unit_testing_API_requests git:(main) ✗ cd lib
# # ➜  lib git:(main) ✗ ruby time_error.rb        
# # -0.359214
# # ➜  lib git:(main) ✗ ruby time_error.rb
# # -0.091653
# # ➜  lib git:(main) ✗ ruby time_error.rb
# # -0.971776