require "greeter"

# RSpec.describe Greeter do

#     it "asks user their name and says hello" do
#         greeter = Greeter.new
#         greeter.greet
#     end

# end


# RSpec.describe Greeter do

#     it "greets the user" do
#       io = double :io, puts: nil, gets: "Shilpa"
#       greeter = Greeter.new(io)
#       greeter.greet
#     end
    
#   end

RSpec.describe Greeter do

  it "greets the user" do
    terminal_io = double :terminal_io # create a double for kernel as puts and gets run on it, then we isolated greeter from the kernel, via terminal_io
    expect(terminal_io).to receive(:puts).with("What is your name?").ordered # ordered is to set the order in which the code is run
    expect(terminal_io).to receive(:gets).and_return("Shilpa").ordered
    expect(terminal_io).to receive(:puts).with("Hello, Shilpa!").ordered

    greeter = Greeter.new(terminal_io)
    greeter.greet
  end

end
