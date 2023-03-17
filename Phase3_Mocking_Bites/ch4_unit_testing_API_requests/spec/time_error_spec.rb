require "time_error"
require 'net/http'

RSpec.describe TimeError do

    it "returns the difference between the remote clock and local clock" do
        fake_requester = double :requester 
        allow(fake_requester).to receive(:get).with(
            URI("https://worldtimeapi.org/api/ip")
        ).and_return('{"abbreviation":"GMT","client_ip":"212.228.211.14","datetime":"2023-03-17T09:18:41.057348+00:00","day_of_week":5,"day_of_year":76,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679044721,"utc_datetime":"2023-03-17T09:18:41.057348+00:00","utc_offset":"+00:00","week_number":11}')

        time = Time.new(2023, 3, 17, 9, 18, 41) 
            time_error = TimeError.new(fake_requester)
            expect(time_error.error(time)).to eq 0.057348 

    end

end


########## NOTES #############

# require "time_error"

# RSpec.describe TimeError do

#     it "returns the difference between the remote clock and local clock" do
#         fake_requester = double :requester # to remove Net::HTTP dependency from get_server_time method
#         allow(fake_requester).to receive(:get).with(
#             URI("https://worldtimeapi.org/api/ip")
#         ).and_return('{"abbreviation":"GMT","client_ip":"212.228.211.14","datetime":"2023-03-17T09:18:41.057348+00:00","day_of_week":5,"day_of_year":76,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679044721,"utc_datetime":"2023-03-17T09:18:41.057348+00:00","utc_offset":"+00:00","week_number":11}')

#             # ➜  ch4_unit_testing_API_requests git:(main) ✗ curl https://worldtimeapi.org/api/ip
#             # {"abbreviation":"GMT","client_ip":"212.228.211.14","datetime":"2023-03-17T09:18:41.057348+00:00","day_of_week":5,"day_of_year":76,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679044721,"utc_datetime":"2023-03-17T09:18:41.057348+00:00","utc_offset":"+00:00","week_number":11}%     

#         # time_error = TimeError.new(fake_requester) # for this to work we need initilizer
#         # expect(time_error.error(Time.now)).to eq 0 # passing Time.now here as argument
#         #     #### now after adding initilizer, requester and replacing the Net::HTTP with requester, and removing the require net/htttp line, 
#         #     #### we need to fix this Time.now as this results in new time every time we run as shown below:

#         time = Time.new(2023, 3, 17, 9, 18, 41) # obtained from above long line => "datetime":"2023-03-17T09:18:41.
#             time_error = TimeError.new(fake_requester) # for this to work we need initilizer
#             expect(time_error.error(time)).to eq 0.057348 # passing Time.now here as argument
#                 #### now after adding initilizer, requester and replacing the Net::HTTP with requester, and removing the require net/htttp line, 
#                 #### we need to fix this Time.now as this results in new time every time we run.
#                         ###         expected: 0
#                         ###         got: 0.057348
#                         ##### Now test passes
                
#     end


# end