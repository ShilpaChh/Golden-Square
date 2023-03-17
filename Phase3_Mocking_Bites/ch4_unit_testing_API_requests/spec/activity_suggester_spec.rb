require "activity_suggester"

RSpec.describe ActivitySuggester do

    it "suggests an activity" do
        fake_requester = double :requester
        
        expect(fake_requester).to receive(:get).with(
            URI("https://www.boredapi.com/api/activity")
        ).and_return('{"activity":"Go to a nail salon","type":"relaxation","participants":1,"price":0.4,"link":"","key":"7526324","accessibility":0.5} ')

        activity_suggester = ActivitySuggester.new(fake_requester)
        expect(activity_suggester.suggest).to eq "Why not: Go to a nail salon" 
                     

    end

end


######### NOTES ############
# require "activity_suggester"

# RSpec.describe ActivitySuggester do

#     # it "suggests an activity" do
#     #     activity_suggester = ActivitySuggester.new
#     #     expect(activity_suggester.suggest).to eq "???" # this gives different result each and every time

#     # end

#     # it "suggests an activity" do
#     #     fake_requester = double :requester
#     #     expect(fake_requester).to receive(:get).with(
#     #         "www.boredapi.com", "/api/activity"
#     #     ).and_return('{"activity":"Go to a nail salon","type":"relaxation","participants":1,"price":0.4,"link":"","key":"7526324","accessibility":0.5} ')
#     #             # ➜  ch4_unit_testing_API_requests git:(main) ✗ curl "https://www.boredapi.com/api/activity"
#     #             # {"activity":"Go to a nail salon","type":"relaxation","participants":1,"price":0.4,"link":"","key":"7526324","accessibility":0.5}%    
#     #             # copy the line in between the curly brackets in the and_return and then rspec and this would give us the constant string for us to test

#     #                     # expected: "???"
#     #                     # got: "Why not: Go to a nail salon"

#     #     activity_suggester = ActivitySuggester.new(fake_requester)
#     #     expect(activity_suggester.suggest).to eq "Why not: Go to a nail salon" 

#                 # now with this we get one fixed test result for every run.

#                 # it "suggests an activity" do
#                 #     fake_requester = double :requester
#                 #     expect(fake_requester).to receive(:get).with(
#                 #         "www.boredapi.com", "/api/activity"
#                 #     ).and_return('{"activity":"Go to a nail salon","type":"relaxation","participants":1,"price":0.4,"link":"","key":"7526324","accessibility":0.5} ')
#                 #             # ➜  ch4_unit_testing_API_requests git:(main) ✗ curl "https://www.boredapi.com/api/activity"
#                 #             # {"activity":"Go to a nail salon","type":"relaxation","participants":1,"price":0.4,"link":"","key":"7526324","accessibility":0.5}%    
#                 #             # copy the line in between the curly brackets in the and_return and then rspec and this would give us the constant string for us to test
            
#                 #                     # expected: "???"
#                 #                     # got: "Why not: Go to a nail salon"

#                                     it "suggests an activity" do
#                                         fake_requester = double :requester
#                                         expect(fake_requester).to receive(:get).with(
#                                             URI("https://www.boredapi.com/api/activity")
#                                         ).and_return('{"activity":"Go to a nail salon","type":"relaxation","participants":1,"price":0.4,"link":"","key":"7526324","accessibility":0.5} ')
                                    
            
#                     activity_suggester = ActivitySuggester.new(fake_requester)
#                     expect(activity_suggester.suggest).to eq "Why not: Go to a nail salon" 
                     

#     end

# end